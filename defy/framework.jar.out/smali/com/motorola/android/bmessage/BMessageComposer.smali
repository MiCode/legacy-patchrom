.class public Lcom/motorola/android/bmessage/BMessageComposer;
.super Ljava/lang/Object;
.source "BMessageComposer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/android/bmessage/BMessageComposer$HandlerForOutputStream;,
        Lcom/motorola/android/bmessage/BMessageComposer$OneEntryHandler;
    }
.end annotation


# static fields
.field public static final FAILURE_REASON_FAILED_TO_GET_DATABASE_INFO:Ljava/lang/String; = "Failed to get database information"

.field public static final FAILURE_REASON_NOT_INITIALIZED:Ljava/lang/String; = "The BMessage composer object is not correctly initialized"

.field public static final FAILURE_REASON_NO_ENTRY:Ljava/lang/String; = "There\'s no exportable in the database"

.field private static final FIRST_INDEX:I = 0x0

.field private static final LOG_TAG:Ljava/lang/String; = "bmessage.BMessageComposer"

.field private static final MSG_FIRST_VALID_PATH_INDEX:I = 0x1

.field public static final NO_ERROR:Ljava/lang/String; = "No error"

.field private static final RECIPIENT_DELIMIT:Ljava/lang/String; = ","

.field private static final emailPath:[Ljava/lang/String;

.field private static final emailProjection:[Ljava/lang/String;

.field private static final mmsPath:[Ljava/lang/String;

.field private static final mmsProjection:[Ljava/lang/String;

.field private static final sALLTHREADSURI:Landroid/net/Uri;

.field private static final sCanonicalAddress:Landroid/net/Uri;

.field private static final sEmailBodyPartsUri:Landroid/net/Uri;

.field private static final sEmailDataRequestUri:Landroid/net/Uri;

.field private static final sEmailFolderUri:Landroid/net/Uri;

.field private static final sEmailProjection:[Ljava/lang/String;

.field private static final sMMSDataRequestUri:Landroid/net/Uri;

.field private static final sMMSProjection:[Ljava/lang/String;

.field private static final sSMSDataRequestUri:Landroid/net/Uri;

.field private static final sSMSProjection:[Ljava/lang/String;

.field private static final smsPath:[Ljava/lang/String;

.field private static final smsProjection:[Ljava/lang/String;


# instance fields
.field private mBegPos:I

.field private final mCareHandlerErrors:Z

.field private mCharSet:Ljava/lang/String;

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private mCursor:Landroid/database/Cursor;

.field private mEmailBodycontent:Ljava/lang/String;

.field private mEndPos:I

.field private mErrorReason:Ljava/lang/String;

.field private final mHandlerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/motorola/android/bmessage/BMessageComposer$OneEntryHandler;",
            ">;"
        }
    .end annotation
.end field

.field private mIdColumn:I

.field private mMsgFolder:Ljava/lang/String;

.field private mMsgSender:Ljava/lang/String;

.field private mMsgType:Ljava/lang/String;

.field private mSmsPdus:[[B

.field private mTerminateIsCalled:Z

.field private final mVCardType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    sget-object v0, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/motorola/android/bmessage/BMessageComposer;->sSMSDataRequestUri:Landroid/net/Uri;

    sget-object v0, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/motorola/android/bmessage/BMessageComposer;->sMMSDataRequestUri:Landroid/net/Uri;

    sget-object v0, Landroid/provider/Email$ContentUri;->MESSAGES:Landroid/net/Uri;

    sput-object v0, Lcom/motorola/android/bmessage/BMessageComposer;->sEmailDataRequestUri:Landroid/net/Uri;

    sget-object v0, Landroid/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "simple"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/motorola/android/bmessage/BMessageComposer;->sALLTHREADSURI:Landroid/net/Uri;

    const-string v0, "content://mms-sms/canonical-addresses"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/motorola/android/bmessage/BMessageComposer;->sCanonicalAddress:Landroid/net/Uri;

    sget-object v0, Landroid/provider/Email$ContentUri;->FOLDERS:Landroid/net/Uri;

    sput-object v0, Lcom/motorola/android/bmessage/BMessageComposer;->sEmailFolderUri:Landroid/net/Uri;

    sget-object v0, Landroid/provider/Email$ContentUri;->BODYPARTS:Landroid/net/Uri;

    sput-object v0, Lcom/motorola/android/bmessage/BMessageComposer;->sEmailBodyPartsUri:Landroid/net/Uri;

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    sput-object v0, Lcom/motorola/android/bmessage/BMessageComposer;->sSMSProjection:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    sput-object v0, Lcom/motorola/android/bmessage/BMessageComposer;->sMMSProjection:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    sput-object v0, Lcom/motorola/android/bmessage/BMessageComposer;->sEmailProjection:[Ljava/lang/String;

    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "thread_id"

    aput-object v1, v0, v3

    const-string v1, "read"

    aput-object v1, v0, v4

    const-string v1, "type"

    aput-object v1, v0, v5

    const-string v1, "body"

    aput-object v1, v0, v6

    sput-object v0, Lcom/motorola/android/bmessage/BMessageComposer;->smsProjection:[Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "thread_id"

    aput-object v1, v0, v3

    const-string v1, "date"

    aput-object v1, v0, v4

    const-string v1, "msg_box"

    aput-object v1, v0, v5

    const-string v1, "sub"

    aput-object v1, v0, v6

    const-string v1, "read"

    aput-object v1, v0, v7

    sput-object v0, Lcom/motorola/android/bmessage/BMessageComposer;->mmsProjection:[Ljava/lang/String;

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "subject"

    aput-object v1, v0, v3

    const-string v1, "_from"

    aput-object v1, v0, v4

    const-string v1, "_to"

    aput-object v1, v0, v5

    const-string v1, "cc"

    aput-object v1, v0, v6

    const-string v1, "bcc"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "date_sent"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "status"

    aput-object v2, v0, v1

    sput-object v0, Lcom/motorola/android/bmessage/BMessageComposer;->emailProjection:[Ljava/lang/String;

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Sms\\ALL"

    aput-object v1, v0, v3

    const-string v1, "Sms\\INBOX"

    aput-object v1, v0, v4

    const-string v1, "Sms\\SENT"

    aput-object v1, v0, v5

    const-string v1, "Sms\\DRAFTS"

    aput-object v1, v0, v6

    const-string v1, "Sms\\OUTBOX"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "Sms\\FAILED"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Sms\\QUEUED"

    aput-object v2, v0, v1

    sput-object v0, Lcom/motorola/android/bmessage/BMessageComposer;->smsPath:[Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Mms\\ALL"

    aput-object v1, v0, v3

    const-string v1, "Mms\\INBOX"

    aput-object v1, v0, v4

    const-string v1, "Mms\\SENT"

    aput-object v1, v0, v5

    const-string v1, "Mms\\DRAFTS"

    aput-object v1, v0, v6

    const-string v1, "Mms\\OUTBOX"

    aput-object v1, v0, v7

    sput-object v0, Lcom/motorola/android/bmessage/BMessageComposer;->mmsPath:[Ljava/lang/String;

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "telecom\\msg"

    aput-object v1, v0, v3

    const-string v1, "telecom\\msg"

    aput-object v1, v0, v4

    const-string v1, "telecom\\msg\\deleted"

    aput-object v1, v0, v5

    const-string v1, "telecom\\msg\\drafts"

    aput-object v1, v0, v6

    const-string v1, "telecom\\msg\\inbox"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "telecom\\msg\\outbox"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "telecom\\msg\\sent"

    aput-object v2, v0, v1

    sput-object v0, Lcom/motorola/android/bmessage/BMessageComposer;->emailPath:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const-string v0, "2.1"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/motorola/android/bmessage/BMessageComposer;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 2
    .parameter "context"
    .parameter "vcardType"
    .parameter "careHandlerErrors"

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mBegPos:I

    iput v1, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mEndPos:I

    const-string v0, "No error"

    iput-object v0, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mErrorReason:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mTerminateIsCalled:Z

    iput-object p1, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mVCardType:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mCareHandlerErrors:Z

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mContentResolver:Landroid/content/ContentResolver;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mHandlerList:Ljava/util/List;

    return-void
.end method

.method static synthetic access$002(Lcom/motorola/android/bmessage/BMessageComposer;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mErrorReason:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/motorola/android/bmessage/BMessageComposer;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mMsgType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/motorola/android/bmessage/BMessageComposer;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mCharSet:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/motorola/android/bmessage/BMessageComposer;)[[B
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mSmsPdus:[[B

    return-object v0
.end method

.method static synthetic access$400(Lcom/motorola/android/bmessage/BMessageComposer;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mBegPos:I

    return v0
.end method

.method static synthetic access$500(Lcom/motorola/android/bmessage/BMessageComposer;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mEndPos:I

    return v0
.end method

.method private appendBMessageLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "builder"
    .parameter "propertyName"
    .parameter "rawData"

    .prologue
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\r\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private appendBodyContent(Ljava/lang/StringBuilder;Ljava/util/Map;)V
    .locals 9
    .parameter "builder"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, contentValueMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "UTF-8"

    const-string v8, "END"

    const-string v7, "BEGIN"

    const-string v6, "\r\n"

    const-string v5, "MSG"

    iget-object v2, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mMsgType:Ljava/lang/String;

    const-string v3, "SMS_CDMA"

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mMsgType:Ljava/lang/String;

    const-string v3, "SMS_GSM"

    if-ne v2, v3, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mCharSet:Ljava/lang/String;

    const-string v3, "UTF-8"

    if-ne v2, v4, :cond_4

    const-string v2, "BEGIN"

    const-string v2, "MSG"

    invoke-direct {p0, p1, v7, v5}, Lcom/motorola/android/bmessage/BMessageComposer;->appendBMessageLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "body"

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\r\n"

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "END"

    const-string v2, "MSG"

    invoke-direct {p0, p1, v8, v5}, Lcom/motorola/android/bmessage/BMessageComposer;->appendBMessageLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mMsgType:Ljava/lang/String;

    const-string v3, "MMS"

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mMsgType:Ljava/lang/String;

    const-string v3, "EMAIL"

    if-ne v2, v3, :cond_3

    :cond_2
    iget-object v2, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mEmailBodycontent:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    return-void

    :cond_4
    iget-object v2, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mSmsPdus:[[B

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mSmsPdus:[[B

    array-length v2, v2

    if-nez v2, :cond_6

    :cond_5
    const-string v2, "BEGIN"

    const-string v2, "MSG"

    invoke-direct {p0, p1, v7, v5}, Lcom/motorola/android/bmessage/BMessageComposer;->appendBMessageLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "\r\n"

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "END"

    const-string v2, "MSG"

    invoke-direct {p0, p1, v8, v5}, Lcom/motorola/android/bmessage/BMessageComposer;->appendBMessageLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    iput v2, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mBegPos:I

    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v2, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mSmsPdus:[[B

    array-length v2, v2

    if-ge v1, v2, :cond_7

    iget-object v2, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mSmsPdus:[[B

    aget-object v2, v2, v1

    if-eqz v2, :cond_7

    const-string v2, "BEGIN"

    const-string v2, "MSG"

    invoke-direct {p0, p1, v7, v5}, Lcom/motorola/android/bmessage/BMessageComposer;->appendBMessageLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mSmsPdus:[[B

    aget-object v3, v3, v1

    const-string v4, "UTF-8"

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\r\n"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    const-string v2, "END"

    const-string v2, "MSG"

    invoke-direct {p0, p1, v8, v5}, Lcom/motorola/android/bmessage/BMessageComposer;->appendBMessageLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catch_0
    move-exception v2

    move-object v0, v2

    .local v0, e:Ljava/io/UnsupportedEncodingException;
    const-string v2, "bmessage.BMessageComposer"

    const-string v3, "byte[] to String: UTF-8 encoding is not supported"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    :cond_7
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    iput v2, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mEndPos:I

    iget v2, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mBegPos:I

    iget v3, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mEndPos:I

    if-ne v2, v3, :cond_1

    const-string v2, "BEGIN"

    const-string v2, "MSG"

    invoke-direct {p0, p1, v7, v5}, Lcom/motorola/android/bmessage/BMessageComposer;->appendBMessageLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "\r\n"

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "END"

    const-string v2, "MSG"

    invoke-direct {p0, p1, v8, v5}, Lcom/motorola/android/bmessage/BMessageComposer;->appendBMessageLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private appendContent(Ljava/lang/StringBuilder;Ljava/util/Map;)V
    .locals 11
    .parameter "builder"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, contentValueMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v10, "BEGIN:MSG\r\n"

    const-string v9, "BBODY"

    const-string v8, "UTF-8"

    const-string v7, "LENGTH"

    const-string v6, "\r\n"

    const-string v4, "BEGIN"

    const-string v5, "BBODY"

    invoke-direct {p0, p1, v4, v9}, Lcom/motorola/android/bmessage/BMessageComposer;->appendBMessageLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mMsgType:Ljava/lang/String;

    const-string v5, "SMS_CDMA"

    if-eq v4, v5, :cond_0

    iget-object v4, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mMsgType:Ljava/lang/String;

    const-string v5, "SMS_GSM"

    if-ne v4, v5, :cond_1

    :cond_0
    iget-object v4, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mCharSet:Ljava/lang/String;

    const-string v5, "UTF-8"

    if-ne v4, v8, :cond_4

    const-string v4, "CHARSET"

    const-string v5, "UTF-8"

    invoke-direct {p0, p1, v4, v8}, Lcom/motorola/android/bmessage/BMessageComposer;->appendBMessageLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BEGIN:MSG\r\n"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v4, "body"

    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\r\n"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "END"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "MSG"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\r\n"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, bodyContent:Ljava/lang/String;
    const-string v4, "LENGTH"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p1, v7, v4}, Lcom/motorola/android/bmessage/BMessageComposer;->appendBMessageLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .end local v0           #bodyContent:Ljava/lang/String;
    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mMsgType:Ljava/lang/String;

    const-string v5, "MMS"

    if-eq v4, v5, :cond_2

    iget-object v4, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mMsgType:Ljava/lang/String;

    const-string v5, "EMAIL"

    if-ne v4, v5, :cond_3

    :cond_2
    const-string v4, "CHARSET"

    const-string v5, "UTF-8"

    invoke-direct {p0, p1, v4, v8}, Lcom/motorola/android/bmessage/BMessageComposer;->appendBMessageLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/motorola/android/bmessage/BMessageComposer;->buildEmailBody(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mEmailBodycontent:Ljava/lang/String;

    const-string v4, "LENGTH"

    iget-object v4, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mEmailBodycontent:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p1, v7, v4}, Lcom/motorola/android/bmessage/BMessageComposer;->appendBMessageLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/motorola/android/bmessage/BMessageComposer;->appendBodyContent(Ljava/lang/StringBuilder;Ljava/util/Map;)V

    const-string v4, "END"

    const-string v5, "BBODY"

    invoke-direct {p0, p1, v4, v9}, Lcom/motorola/android/bmessage/BMessageComposer;->appendBMessageLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4
    const-string v4, "ENCODING"

    const-string v5, "C-8BIT"

    invoke-direct {p0, p1, v4, v5}, Lcom/motorola/android/bmessage/BMessageComposer;->appendBMessageLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/motorola/android/bmessage/BMessageComposer;->buildSmsPdus(Ljava/util/Map;)[[B

    move-result-object v4

    iput-object v4, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mSmsPdus:[[B

    const-string v4, "BEGIN:MSG\r\n"

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v4

    const-string v5, "END:MSG\r\n"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int v3, v4, v5

    .local v3, msgDataMinLen:I
    const/4 v1, 0x0

    .local v1, bodyLen:I
    iget-object v4, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mSmsPdus:[[B

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mSmsPdus:[[B

    array-length v4, v4

    if-lez v4, :cond_7

    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    iget-object v4, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mSmsPdus:[[B

    array-length v4, v4

    if-ge v2, v4, :cond_5

    iget-object v4, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mSmsPdus:[[B

    aget-object v4, v4, v2

    if-eqz v4, :cond_5

    add-int v4, v1, v3

    iget-object v5, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mSmsPdus:[[B

    aget-object v5, v5, v2

    array-length v5, v5

    add-int/2addr v4, v5

    const-string v5, "\r\n"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v5

    add-int v1, v4, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    if-nez v1, :cond_6

    const-string v4, "\r\n"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v4

    add-int v1, v3, v4

    .end local v2           #i:I
    :cond_6
    :goto_2
    const-string v4, "bmessage.BMessageComposer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "body length is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "LENGTH"

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p1, v7, v4}, Lcom/motorola/android/bmessage/BMessageComposer;->appendBMessageLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    const-string v4, "\r\n"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v4

    add-int v1, v3, v4

    goto :goto_2
.end method

.method private appendEnvelope(Ljava/lang/StringBuilder;Ljava/util/Map;)V
    .locals 3
    .parameter "builder"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, contentValueMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "BENV"

    const-string v0, "BEGIN"

    const-string v1, "BENV"

    invoke-direct {p0, p1, v0, v2}, Lcom/motorola/android/bmessage/BMessageComposer;->appendBMessageLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/motorola/android/bmessage/BMessageComposer;->appendRecipient(Ljava/lang/StringBuilder;Ljava/util/Map;)V

    invoke-direct {p0, p1, p2}, Lcom/motorola/android/bmessage/BMessageComposer;->appendContent(Ljava/lang/StringBuilder;Ljava/util/Map;)V

    const-string v0, "END"

    const-string v1, "BENV"

    invoke-direct {p0, p1, v0, v2}, Lcom/motorola/android/bmessage/BMessageComposer;->appendBMessageLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private appendOriginator(Ljava/lang/StringBuilder;Ljava/util/Map;)V
    .locals 20
    .parameter "builder"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, contentValuesMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v19, 0x0

    .local v19, threadsCursor:Landroid/database/Cursor;
    const/16 v17, 0x0

    .local v17, recpCursor:Landroid/database/Cursor;
    const/4 v5, 0x1

    move v0, v5

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    const/4 v6, 0x0

    const-string v5, "thread_id"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    aput-object v5, v18, v6

    .local v18, smsselectionArgs:[Ljava/lang/String;
    const/4 v5, 0x1

    new-array v15, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v5, "thread_id"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    aput-object v5, v15, v6

    .local v15, mmsselectionArgs:[Ljava/lang/String;
    const/4 v5, 0x2

    new-array v7, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v7, v5

    const/4 v5, 0x1

    const-string v6, "recipient_ids"

    aput-object v6, v7, v5

    .local v7, sTHREADSPROJECTION:[Ljava/lang/String;
    const/4 v14, 0x0

    .local v14, contactStr:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/bmessage/BMessageComposer;->mMsgType:Ljava/lang/String;

    move-object v5, v0

    const-string v6, "SMS_CDMA"

    if-eq v5, v6, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/bmessage/BMessageComposer;->mMsgType:Ljava/lang/String;

    move-object v5, v0

    const-string v6, "SMS_GSM"

    if-eq v5, v6, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/bmessage/BMessageComposer;->mMsgType:Ljava/lang/String;

    move-object v5, v0

    const-string v6, "MMS"

    if-ne v5, v6, :cond_a

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/bmessage/BMessageComposer;->mMsgFolder:Ljava/lang/String;

    move-object v5, v0

    const-string v6, "Sms\\INBOX"

    if-eq v5, v6, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/bmessage/BMessageComposer;->mMsgType:Ljava/lang/String;

    move-object v5, v0

    const-string v6, "Mms\\INBOX"

    if-ne v5, v6, :cond_d

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/bmessage/BMessageComposer;->mContext:Landroid/content/Context;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/motorola/android/bmessage/BMessageComposer;->sALLTHREADSURI:Landroid/net/Uri;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/bmessage/BMessageComposer;->mContext:Landroid/content/Context;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    sget-object v9, Lcom/motorola/android/bmessage/BMessageComposer;->sCanonicalAddress:Landroid/net/Uri;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    if-eqz v17, :cond_b

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_b

    if-eqz v19, :cond_b

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/bmessage/BMessageComposer;->mMsgType:Ljava/lang/String;

    move-object v5, v0

    const-string v6, "SMS_CDMA"

    if-eq v5, v6, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/bmessage/BMessageComposer;->mMsgType:Ljava/lang/String;

    move-object v5, v0

    const-string v6, "SMS_GSM"

    if-ne v5, v6, :cond_3

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/bmessage/BMessageComposer;->mContext:Landroid/content/Context;

    move-object v5, v0

    const/4 v6, 0x0

    aget-object v6, v18, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    int-to-long v6, v6

    move-object v0, v5

    move-wide v1, v6

    move-object/from16 v3, v19

    move-object/from16 v4, v17

    invoke-static {v0, v1, v2, v3, v4}, Landroid/provider/BTMapBrowseUtils;->getAddresses(Landroid/content/Context;JLandroid/database/Cursor;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v14

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/bmessage/BMessageComposer;->mMsgType:Ljava/lang/String;

    move-object v5, v0

    const-string v6, "MMS"

    if-ne v5, v6, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/bmessage/BMessageComposer;->mContext:Landroid/content/Context;

    move-object v5, v0

    const/4 v6, 0x0

    aget-object v6, v15, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    int-to-long v6, v6

    move-object v0, v5

    move-wide v1, v6

    move-object/from16 v3, v19

    move-object/from16 v4, v17

    invoke-static {v0, v1, v2, v3, v4}, Landroid/provider/BTMapBrowseUtils;->getAddresses(Landroid/content/Context;JLandroid/database/Cursor;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v14

    :cond_4
    if-eqz v14, :cond_5

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_8

    :cond_5
    const-string v5, ""

    const-string v6, ""

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v5

    move-object v3, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/motorola/android/bmessage/BMessageComposer;->appendVCardInfo(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v19, :cond_6

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    :cond_6
    if-eqz v17, :cond_7

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .end local p2           #contentValuesMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_7
    :goto_0
    return-void

    .restart local p2       #contentValuesMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_8
    const-string v5, ";"

    invoke-virtual {v14, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .local v16, numberList:[Ljava/lang/String;
    const/4 v5, 0x0

    aget-object v5, v16, v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/motorola/android/bmessage/BMessageComposer;->mMsgSender:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/bmessage/BMessageComposer;->mMsgSender:Ljava/lang/String;

    move-object v5, v0

    const-string v6, ""

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v5

    move-object v3, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/motorola/android/bmessage/BMessageComposer;->appendVCardInfo(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v19, :cond_9

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    :cond_9
    if-eqz v17, :cond_a

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .end local v16           #numberList:[Ljava/lang/String;
    :cond_a
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/bmessage/BMessageComposer;->mMsgType:Ljava/lang/String;

    move-object v5, v0

    const-string v6, "EMAIL"

    if-ne v5, v6, :cond_7

    const/4 v5, 0x0

    const-string v6, "_from"

    move-object/from16 v0, p2

    move-object v1, v6

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .end local p2           #contentValuesMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    check-cast p2, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v5

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/motorola/android/bmessage/BMessageComposer;->appendVCardInfo(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .restart local p2       #contentValuesMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_b
    const-string v5, ""

    const-string v6, ""

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v5

    move-object v3, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/motorola/android/bmessage/BMessageComposer;->appendVCardInfo(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v19, :cond_c

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    :cond_c
    if-eqz v17, :cond_a

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :cond_d
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/motorola/android/bmessage/BMessageComposer;->mMsgSender:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/bmessage/BMessageComposer;->mMsgSender:Ljava/lang/String;

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v5

    move-object v3, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/motorola/android/bmessage/BMessageComposer;->appendVCardInfo(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private appendProperty(Ljava/lang/StringBuilder;Ljava/util/Map;)V
    .locals 10
    .parameter "builder"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, contentValuesMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v9, 0x1

    const-string v4, "FOLDER"

    const-string v8, "1"

    const-string v7, "bmessage.BMessageComposer"

    const-string v6, "STATUS"

    const-string v4, "VERSION"

    const-string v5, "1.0"

    invoke-direct {p0, p1, v4, v5}, Lcom/motorola/android/bmessage/BMessageComposer;->appendBMessageLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mMsgType:Ljava/lang/String;

    const-string v5, "SMS_CDMA"

    if-eq v4, v5, :cond_0

    iget-object v4, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mMsgType:Ljava/lang/String;

    const-string v5, "SMS_GSM"

    if-ne v4, v5, :cond_5

    :cond_0
    const-string v4, "read"

    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "1"

    invoke-virtual {v4, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "STATUS"

    const-string v4, "READ"

    invoke-direct {p0, p1, v6, v4}, Lcom/motorola/android/bmessage/BMessageComposer;->appendBMessageLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    const-string v4, "TYPE"

    iget-object v5, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mMsgType:Ljava/lang/String;

    invoke-direct {p0, p1, v4, v5}, Lcom/motorola/android/bmessage/BMessageComposer;->appendBMessageLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v4, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mMsgType:Ljava/lang/String;

    const-string v5, "SMS_CDMA"

    if-eq v4, v5, :cond_2

    iget-object v4, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mMsgType:Ljava/lang/String;

    const-string v5, "SMS_GSM"

    if-ne v4, v5, :cond_a

    :cond_2
    const-string v4, "type"

    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .local v2, pathIndex:I
    sget-object v4, Lcom/motorola/android/bmessage/BMessageComposer;->smsPath:[Ljava/lang/String;

    array-length v3, v4

    .local v3, smsPathLength:I
    if-lt v2, v9, :cond_9

    if-ge v2, v3, :cond_9

    sget-object v4, Lcom/motorola/android/bmessage/BMessageComposer;->smsPath:[Ljava/lang/String;

    aget-object v4, v4, v2

    iput-object v4, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mMsgFolder:Ljava/lang/String;

    :goto_1
    const-string v4, "FOLDER"

    iget-object v5, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mMsgFolder:Ljava/lang/String;

    invoke-direct {p0, p1, v4, v5}, Lcom/motorola/android/bmessage/BMessageComposer;->appendBMessageLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2           #pathIndex:I
    .end local v3           #smsPathLength:I
    :cond_3
    :goto_2
    return-void

    :cond_4
    const-string v4, "STATUS"

    const-string v4, "UNREAD"

    invoke-direct {p0, p1, v6, v4}, Lcom/motorola/android/bmessage/BMessageComposer;->appendBMessageLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    iget-object v4, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mMsgType:Ljava/lang/String;

    const-string v5, "MMS"

    if-ne v4, v5, :cond_7

    const-string v4, "read"

    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "1"

    invoke-virtual {v4, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "STATUS"

    const-string v4, "READ"

    invoke-direct {p0, p1, v6, v4}, Lcom/motorola/android/bmessage/BMessageComposer;->appendBMessageLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    const-string v4, "STATUS"

    const-string v4, "UNREAD"

    invoke-direct {p0, p1, v6, v4}, Lcom/motorola/android/bmessage/BMessageComposer;->appendBMessageLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    iget-object v4, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mMsgType:Ljava/lang/String;

    const-string v5, "EMAIL"

    if-ne v4, v5, :cond_1

    const-string v4, "status"

    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_8

    const-string v4, "STATUS"

    const-string v4, "0"

    invoke-direct {p0, p1, v6, v4}, Lcom/motorola/android/bmessage/BMessageComposer;->appendBMessageLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    const-string v4, "STATUS"

    const-string v4, "1"

    invoke-direct {p0, p1, v6, v8}, Lcom/motorola/android/bmessage/BMessageComposer;->appendBMessageLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .restart local v2       #pathIndex:I
    .restart local v3       #smsPathLength:I
    :cond_9
    :try_start_1
    const-string v4, "bmessage.BMessageComposer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " Int pathIndex is outofBound at smsPath[pathIndex]: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ,Folder is default set to draft box."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mMsgFolder:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .end local v2           #pathIndex:I
    .end local v3           #smsPathLength:I
    :catch_0
    move-exception v4

    move-object v0, v4

    .local v0, e:Ljava/lang/Exception;
    const-string v4, "bmessage.BMessageComposer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception when get pathIndex: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "bmessage.BMessageComposer"

    const-string v4, "Folder path is default set to draft box."

    invoke-static {v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .end local v0           #e:Ljava/lang/Exception;
    :cond_a
    :try_start_2
    iget-object v4, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mMsgType:Ljava/lang/String;

    const-string v5, "MMS"

    if-ne v4, v5, :cond_c

    const-string v4, "msg_box"

    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .restart local v2       #pathIndex:I
    sget-object v4, Lcom/motorola/android/bmessage/BMessageComposer;->mmsPath:[Ljava/lang/String;

    array-length v1, v4

    .local v1, mmsPathLength:I
    if-lt v2, v9, :cond_b

    if-ge v2, v1, :cond_b

    sget-object v4, Lcom/motorola/android/bmessage/BMessageComposer;->mmsPath:[Ljava/lang/String;

    aget-object v4, v4, v2

    iput-object v4, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mMsgFolder:Ljava/lang/String;

    :goto_3
    const-string v4, "FOLDER"

    iget-object v5, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mMsgFolder:Ljava/lang/String;

    invoke-direct {p0, p1, v4, v5}, Lcom/motorola/android/bmessage/BMessageComposer;->appendBMessageLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_b
    const-string v4, "bmessage.BMessageComposer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " Int pathIndex is outofBound at smsPath[pathIndex]: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ,Folder is default set to draft box."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mMsgFolder:Ljava/lang/String;

    goto :goto_3

    .end local v1           #mmsPathLength:I
    .end local v2           #pathIndex:I
    :cond_c
    iget-object v4, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mMsgType:Ljava/lang/String;

    const-string v5, "EMAIL"

    if-ne v4, v5, :cond_3

    const-string v4, "FOLDER"

    iget-object v5, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mMsgFolder:Ljava/lang/String;

    invoke-direct {p0, p1, v4, v5}, Lcom/motorola/android/bmessage/BMessageComposer;->appendBMessageLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_2
.end method

.method private appendRecipient(Ljava/lang/StringBuilder;Ljava/util/Map;)V
    .locals 27
    .parameter "builder"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, contentValueMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v25, 0x0

    .local v25, threadsCursor:Landroid/database/Cursor;
    const/16 v23, 0x0

    .local v23, recpCursor:Landroid/database/Cursor;
    const/4 v4, 0x1

    move v0, v4

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v24, v0

    const/4 v5, 0x0

    const-string v4, "thread_id"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aput-object v4, v24, v5

    .local v24, smsselectionArgs:[Ljava/lang/String;
    const/4 v4, 0x1

    move v0, v4

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v21, v0

    const/4 v5, 0x0

    const-string v4, "thread_id"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aput-object v4, v21, v5

    .local v21, mmsselectionArgs:[Ljava/lang/String;
    const/4 v4, 0x2

    new-array v6, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v6, v4

    const/4 v4, 0x1

    const-string v5, "recipient_ids"

    aput-object v5, v6, v4

    .local v6, sTHREADSPROJECTION:[Ljava/lang/String;
    const/16 v16, 0x0

    .local v16, contactStr:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/bmessage/BMessageComposer;->mMsgType:Ljava/lang/String;

    move-object v4, v0

    const-string v5, "SMS_CDMA"

    if-eq v4, v5, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/bmessage/BMessageComposer;->mMsgType:Ljava/lang/String;

    move-object v4, v0

    const-string v5, "SMS_GSM"

    if-eq v4, v5, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/bmessage/BMessageComposer;->mMsgType:Ljava/lang/String;

    move-object v4, v0

    const-string v5, "MMS"

    if-ne v4, v5, :cond_2

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/bmessage/BMessageComposer;->mMsgFolder:Ljava/lang/String;

    move-object v4, v0

    const-string v5, "Sms\\INBOX"

    if-eq v4, v5, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/bmessage/BMessageComposer;->mMsgType:Ljava/lang/String;

    move-object v4, v0

    const-string v5, "Mms\\INBOX"

    if-ne v4, v5, :cond_3

    :cond_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v4

    move-object v3, v5

    invoke-direct {v0, v1, v2, v3}, Lcom/motorola/android/bmessage/BMessageComposer;->appendVCardInfo(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/bmessage/BMessageComposer;->mMsgType:Ljava/lang/String;

    move-object v4, v0

    const-string v5, "EMAIL"

    if-ne v4, v5, :cond_8

    const-string v4, "_to"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v26

    .local v26, toList:[Ljava/lang/String;
    move-object/from16 v13, v26

    .local v13, arr$:[Ljava/lang/String;
    move-object v0, v13

    array-length v0, v0

    move/from16 v20, v0

    .local v20, len$:I
    const/16 v19, 0x0

    .local v19, i$:I
    :goto_1
    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_10

    aget-object v18, v13, v19

    .local v18, emailAddress:Ljava/lang/String;
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v4

    move-object/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Lcom/motorola/android/bmessage/BMessageComposer;->appendVCardInfo(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v19, v19, 0x1

    goto :goto_1

    .end local v13           #arr$:[Ljava/lang/String;
    .end local v18           #emailAddress:Ljava/lang/String;
    .end local v19           #i$:I
    .end local v20           #len$:I
    .end local v26           #toList:[Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/bmessage/BMessageComposer;->mContext:Landroid/content/Context;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/motorola/android/bmessage/BMessageComposer;->sALLTHREADSURI:Landroid/net/Uri;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/bmessage/BMessageComposer;->mContext:Landroid/content/Context;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v8, Lcom/motorola/android/bmessage/BMessageComposer;->sCanonicalAddress:Landroid/net/Uri;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v23

    if-eqz v23, :cond_e

    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_e

    if-eqz v25, :cond_e

    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/bmessage/BMessageComposer;->mMsgType:Ljava/lang/String;

    move-object v4, v0

    const-string v5, "SMS_CDMA"

    if-eq v4, v5, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/bmessage/BMessageComposer;->mMsgType:Ljava/lang/String;

    move-object v4, v0

    const-string v5, "SMS_GSM"

    if-ne v4, v5, :cond_4

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/bmessage/BMessageComposer;->mMsgType:Ljava/lang/String;

    move-object v4, v0

    const-string v5, "MMS"

    if-ne v4, v5, :cond_5

    :cond_5
    if-eqz v16, :cond_6

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_9

    :cond_6
    const-string v4, ""

    const-string v5, ""

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v4

    move-object v3, v5

    invoke-direct {v0, v1, v2, v3}, Lcom/motorola/android/bmessage/BMessageComposer;->appendVCardInfo(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v25, :cond_7

    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->close()V

    :cond_7
    if-eqz v23, :cond_8

    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V

    .end local p2           #contentValueMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_8
    return-void

    .restart local p2       #contentValueMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_9
    const-string v4, ";"

    move-object/from16 v0, v16

    move-object v1, v4

    throw v0

    move-result-object v22

    .local v22, numberList:[Ljava/lang/String;
    const/16 v17, 0x0

    .local v17, count:I
    move-object/from16 v13, v22

    .restart local v13       #arr$:[Ljava/lang/String;
    move-object v0, v13

    array-length v0, v0

    move/from16 v20, v0

    .restart local v20       #len$:I
    const/16 v19, 0x0

    .restart local v19       #i$:I
    :goto_2
    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_b

    aget-object v15, v13, v19

    .local v15, contact:Ljava/lang/String;
    throw v15

    move-result v4

    if-eqz v4, :cond_a

    add-int/lit8 v17, v17, 0x1

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v15

    move-object v3, v4

    invoke-direct {v0, v1, v2, v3}, Lcom/motorola/android/bmessage/BMessageComposer;->appendVCardInfo(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    add-int/lit8 v19, v19, 0x1

    goto :goto_2

    .end local v15           #contact:Ljava/lang/String;
    :cond_b
    if-nez v17, :cond_c

    const-string v4, ""

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v4

    move-object v3, v5

    invoke-direct {v0, v1, v2, v3}, Lcom/motorola/android/bmessage/BMessageComposer;->appendVCardInfo(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    if-eqz v25, :cond_d

    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->close()V

    :cond_d
    if-eqz v23, :cond_2

    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .end local v13           #arr$:[Ljava/lang/String;
    .end local v17           #count:I
    .end local v19           #i$:I
    .end local v20           #len$:I
    .end local v22           #numberList:[Ljava/lang/String;
    :cond_e
    const-string v4, ""

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v4

    move-object v3, v5

    invoke-direct {v0, v1, v2, v3}, Lcom/motorola/android/bmessage/BMessageComposer;->appendVCardInfo(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v25, :cond_f

    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->close()V

    :cond_f
    if-eqz v23, :cond_2

    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .restart local v13       #arr$:[Ljava/lang/String;
    .restart local v19       #i$:I
    .restart local v20       #len$:I
    .restart local v26       #toList:[Ljava/lang/String;
    :cond_10
    const-string v4, "cc"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .end local p2           #contentValueMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    check-cast p2, Ljava/lang/String;

    const-string v4, ","

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .local v14, ccList:[Ljava/lang/String;
    move-object v13, v14

    move-object v0, v13

    array-length v0, v0

    move/from16 v20, v0

    const/16 v19, 0x0

    :goto_3
    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_8

    aget-object v18, v13, v19

    .restart local v18       #emailAddress:Ljava/lang/String;
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v4

    move-object/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Lcom/motorola/android/bmessage/BMessageComposer;->appendVCardInfo(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v19, v19, 0x1

    goto :goto_3
.end method

.method private appendVCardInfo(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "builder"
    .parameter "contactNum"
    .parameter "email"

    .prologue
    const-string v3, "VCARD"

    const-string v2, ""

    const-string v0, "BEGIN"

    const-string v1, "VCARD"

    invoke-direct {p0, p1, v0, v3}, Lcom/motorola/android/bmessage/BMessageComposer;->appendBMessageLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "VERSION"

    iget-object v1, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mVCardType:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lcom/motorola/android/bmessage/BMessageComposer;->appendBMessageLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "N"

    const-string v1, ""

    invoke-direct {p0, p1, v0, v2}, Lcom/motorola/android/bmessage/BMessageComposer;->appendBMessageLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mVCardType:Ljava/lang/String;

    const-string v1, "3.0"

    if-ne v0, v1, :cond_0

    const-string v0, "FN"

    const-string v1, ""

    invoke-direct {p0, p1, v0, v2}, Lcom/motorola/android/bmessage/BMessageComposer;->appendBMessageLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mMsgType:Ljava/lang/String;

    const-string v1, "SMS_CDMA"

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mMsgType:Ljava/lang/String;

    const-string v1, "SMS_GSM"

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mMsgType:Ljava/lang/String;

    const-string v1, "MMS"

    if-ne v0, v1, :cond_2

    :cond_1
    const-string v0, "TEL"

    invoke-direct {p0, p1, v0, p2}, Lcom/motorola/android/bmessage/BMessageComposer;->appendBMessageLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const-string v0, "END"

    const-string v1, "VCARD"

    invoke-direct {p0, p1, v0, v3}, Lcom/motorola/android/bmessage/BMessageComposer;->appendBMessageLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    const-string v0, "EMAIL"

    invoke-direct {p0, p1, v0, p3}, Lcom/motorola/android/bmessage/BMessageComposer;->appendBMessageLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private buildEmailBody(Ljava/util/Map;)Ljava/lang/String;
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p1, contentValueMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v9, "From"

    const-string v8, "Date"

    const-string v7, "\r\n"

    const-string v6, "MMS"

    const-string v5, "EMAIL"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .local v0, emailBodyBuilder:Ljava/lang/StringBuilder;
    const-string v1, "BEGIN"

    const-string v2, "MSG"

    invoke-direct {p0, v0, v1, v2}, Lcom/motorola/android/bmessage/BMessageComposer;->appendBMessageLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mMsgType:Ljava/lang/String;

    const-string v2, "MMS"

    if-ne v1, v6, :cond_5

    const-string v1, "Date"

    new-instance v2, Ljava/util/Date;

    const-string v1, "date"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2}, Ljava/util/Date;->toGMTString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v8, v1}, Lcom/motorola/android/bmessage/BMessageComposer;->appendBMessageLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mMsgType:Ljava/lang/String;

    const-string v2, "MMS"

    if-ne v1, v6, :cond_6

    const-string v2, "Subject"

    const-string v1, "sub"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v0, v2, v1}, Lcom/motorola/android/bmessage/BMessageComposer;->appendBMessageLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mMsgType:Ljava/lang/String;

    const-string v2, "EMAIL"

    if-ne v1, v5, :cond_7

    const-string v1, "From"

    const-string v1, "_from"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v0, v9, v1}, Lcom/motorola/android/bmessage/BMessageComposer;->appendBMessageLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_2
    iget-object v1, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mMsgType:Ljava/lang/String;

    const-string v2, "EMAIL"

    if-ne v1, v5, :cond_3

    const-string v2, "To"

    const-string v1, "_to"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v0, v2, v1}, Lcom/motorola/android/bmessage/BMessageComposer;->appendBMessageLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-object v1, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mMsgType:Ljava/lang/String;

    const-string v2, "EMAIL"

    if-ne v1, v5, :cond_4

    const-string v2, "Cc"

    const-string v1, "cc"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v0, v2, v1}, Lcom/motorola/android/bmessage/BMessageComposer;->appendBMessageLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const-string v1, "\r\n"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Body"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\r\n"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "END"

    const-string v2, "MSG"

    invoke-direct {p0, v0, v1, v2}, Lcom/motorola/android/bmessage/BMessageComposer;->appendBMessageLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_5
    iget-object v1, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mMsgType:Ljava/lang/String;

    const-string v2, "EMAIL"

    if-ne v1, v5, :cond_0

    const-string v1, "Date"

    new-instance v2, Ljava/util/Date;

    const-string v1, "date_sent"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2}, Ljava/util/Date;->toGMTString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v8, v1}, Lcom/motorola/android/bmessage/BMessageComposer;->appendBMessageLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    iget-object v1, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mMsgType:Ljava/lang/String;

    const-string v2, "EMAIL"

    if-ne v1, v5, :cond_1

    const-string v2, "Subject"

    const-string v1, "subject"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v0, v2, v1}, Lcom/motorola/android/bmessage/BMessageComposer;->appendBMessageLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_7
    iget-object v1, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mMsgType:Ljava/lang/String;

    const-string v2, "MMS"

    if-ne v1, v6, :cond_2

    const-string v1, "From"

    iget-object v1, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mMsgSender:Ljava/lang/String;

    invoke-direct {p0, v0, v9, v1}, Lcom/motorola/android/bmessage/BMessageComposer;->appendBMessageLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method private buildSmsPdus(Ljava/util/Map;)[[B
    .locals 11
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)[[B"
        }
    .end annotation

    .prologue
    .local p1, contentValueMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v6, 0x0

    const/4 v1, 0x0

    const-string v5, "date"

    const-string v4, "body"

    const-string v10, "bmessage.BMessageComposer"

    move-object v0, v6

    check-cast v0, [[B

    move-object v8, v0

    .local v8, pdus:[[B
    const-string v2, "bmessage.BMessageComposer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " sender: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mMsgSender:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "bmessage.BMessageComposer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " body: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v2, "body"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "bmessage.BMessageComposer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " date: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v2, "date"

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "bmessage.BMessageComposer"

    const-string v2, " callback number is null"

    invoke-static {v10, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "bmessage.BMessageComposer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " priority: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v2, "priority"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mMsgFolder:Ljava/lang/String;

    const-string v3, "Sms\\INBOX"

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mMsgType:Ljava/lang/String;

    const-string v3, "SMS_CDMA"

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mMsgSender:Ljava/lang/String;

    invoke-static {v2}, Lcom/motorola/android/bmessage/BMessageComposer;->cleanUpPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "body"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "date"

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    const-wide/16 v4, 0x0

    invoke-static {p0, v4, v5}, Ljava/lang/Long;->getLong(Ljava/lang/String;J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-string v7, "priority"

    invoke-interface {p1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static/range {v1 .. v7}, Lcom/motorola/android/bmessage/SmsUtils;->getTLDeliverPdu(ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;I)[[B

    move-result-object v8

    :cond_0
    :goto_0
    if-nez v8, :cond_4

    const-string v1, "bmessage.BMessageComposer"

    const-string v1, " SMS pdus is empty"

    invoke-static {v10, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-object v8

    .restart local p0
    :cond_1
    iget-object v2, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mMsgType:Ljava/lang/String;

    const-string v3, "SMS_GSM"

    if-ne v2, v3, :cond_0

    const/4 v9, 0x1

    iget-object v2, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mMsgSender:Ljava/lang/String;

    invoke-static {v2}, Lcom/motorola/android/bmessage/BMessageComposer;->cleanUpPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "body"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "date"

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    const-wide/16 v4, 0x0

    invoke-static {p0, v4, v5}, Ljava/lang/Long;->getLong(Ljava/lang/String;J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-string v7, "priority"

    invoke-interface {p1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    move v1, v9

    invoke-static/range {v1 .. v7}, Lcom/motorola/android/bmessage/SmsUtils;->getTLDeliverPdu(ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;I)[[B

    move-result-object v8

    goto :goto_0

    .restart local p0
    :cond_2
    iget-object v2, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mMsgType:Ljava/lang/String;

    const-string v3, "SMS_CDMA"

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mMsgSender:Ljava/lang/String;

    invoke-static {v2}, Lcom/motorola/android/bmessage/BMessageComposer;->cleanUpPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "body"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "date"

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    const-wide/16 v4, 0x0

    invoke-static {p0, v4, v5}, Ljava/lang/Long;->getLong(Ljava/lang/String;J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-string v7, "priority"

    invoke-interface {p1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static/range {v1 .. v7}, Lcom/motorola/android/bmessage/SmsUtils;->getTLSubmitPdu(ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;I)[[B

    move-result-object v8

    goto/16 :goto_0

    .restart local p0
    :cond_3
    iget-object v2, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mMsgType:Ljava/lang/String;

    const-string v3, "SMS_GSM"

    if-ne v2, v3, :cond_0

    const/4 v9, 0x1

    iget-object v2, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mMsgSender:Ljava/lang/String;

    invoke-static {v2}, Lcom/motorola/android/bmessage/BMessageComposer;->cleanUpPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "body"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "date"

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    const-wide/16 v4, 0x0

    invoke-static {p0, v4, v5}, Ljava/lang/Long;->getLong(Ljava/lang/String;J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-string v7, "priority"

    invoke-interface {p1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    move v1, v9

    invoke-static/range {v1 .. v7}, Lcom/motorola/android/bmessage/SmsUtils;->getTLSubmitPdu(ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;I)[[B

    move-result-object v8

    goto/16 :goto_0

    :cond_4
    const-string v1, "bmessage.BMessageComposer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " SMS pdu with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, v8

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " parts"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private static cleanUpPhoneNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "str"

    .prologue
    const-string v3, ""

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, ""

    move-object v0, v3

    :goto_0
    return-object v0

    :cond_1
    const-string v0, " "

    const-string v1, ""

    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "."

    const-string v2, ""

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "("

    const-string v2, ""

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ")"

    const-string v2, ""

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    const-string v2, ""

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private createOneEntryInternal(Ljava/lang/String;)Ljava/lang/String;
    .locals 52
    .parameter "msgId"

    .prologue
    new-instance v24, Ljava/util/HashMap;

    invoke-direct/range {v24 .. v24}, Ljava/util/HashMap;-><init>()V

    .local v24, contentValuesMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v48, "_id=?"

    .local v48, smsSelection:Ljava/lang/String;
    const-string v40, "_id=?"

    .local v40, mmsSelection:Ljava/lang/String;
    const-string v33, "_id=?"

    .local v33, emailSelection:Ljava/lang/String;
    const/4 v4, 0x2

    move v0, v4

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v30, v0

    const/4 v4, 0x0

    const-string v5, "message_id"

    aput-object v5, v30, v4

    const/4 v4, 0x1

    const-string v5, "sequence_id"

    aput-object v5, v30, v4

    .local v30, emailBodyPartsProjection:[Ljava/lang/String;
    const/4 v4, 0x1

    new-array v8, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v8, v4

    .local v8, selectionArgs:[Ljava/lang/String;
    const/16 v47, 0x0

    .local v47, persister:Lcom/google/android/mms/pdu/PduPersister;
    const/16 v41, 0x0

    .local v41, msgPdu:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    const/16 v18, 0x0

    .local v18, buffer:[B
    const/16 v28, 0x0

    .local v28, dataExists:Z
    const/16 v37, 0x0

    .local v37, iCursor:Landroid/database/Cursor;
    const-string v4, "bmessage.BMessageComposer"

    const-string v5, " ---- Enter createOneEntryInternal() ----"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/bmessage/BMessageComposer;->mMsgType:Ljava/lang/String;

    move-object v4, v0

    const-string v5, "SMS_CDMA"

    if-eq v4, v5, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/bmessage/BMessageComposer;->mMsgType:Ljava/lang/String;

    move-object v4, v0

    const-string v5, "SMS_GSM"

    if-ne v4, v5, :cond_2

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/bmessage/BMessageComposer;->mContentResolver:Landroid/content/ContentResolver;

    move-object v4, v0

    sget-object v5, Lcom/motorola/android/bmessage/BMessageComposer;->sSMSDataRequestUri:Landroid/net/Uri;

    sget-object v6, Lcom/motorola/android/bmessage/BMessageComposer;->smsProjection:[Ljava/lang/String;

    const-string v7, "_id=?"

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v37

    if-eqz v37, :cond_1

    invoke-interface/range {v37 .. v37}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_1

    invoke-interface/range {v37 .. v37}, Landroid/database/Cursor;->moveToFirst()Z

    const/16 v28, 0x1

    sget-object v16, Lcom/motorola/android/bmessage/BMessageComposer;->smsProjection:[Ljava/lang/String;

    .local v16, arr$:[Ljava/lang/String;
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v38, v0

    .local v38, len$:I
    const/16 v36, 0x0

    .local v36, i$:I
    :goto_0
    move/from16 v0, v36

    move/from16 v1, v38

    if-ge v0, v1, :cond_2

    aget-object v22, v16, v36

    .local v22, columnName:Ljava/lang/String;
    move-object/from16 v0, v37

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v37

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    move-object v2, v4

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v36, v36, 0x1

    goto :goto_0

    .end local v16           #arr$:[Ljava/lang/String;
    .end local v22           #columnName:Ljava/lang/String;
    .end local v36           #i$:I
    .end local v38           #len$:I
    :cond_1
    const-string v4, "bmessage.BMessageComposer"

    const-string v5, " The numbers of rows in the iCursor is invalid and no sms data could be stored!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/bmessage/BMessageComposer;->mMsgType:Ljava/lang/String;

    move-object v4, v0

    const-string v5, "MMS"

    if-ne v4, v5, :cond_5

    :try_start_0
    const-string v4, "bmessage.BMessageComposer"

    const-string v5, " Entry createOneEntryInternal() MMS offset."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/bmessage/BMessageComposer;->mContext:Landroid/content/Context;

    move-object v4, v0

    invoke-static {v4}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v46

    .local v46, pduPersister:Lcom/google/android/mms/pdu/PduPersister;
    sget-object v4, Lcom/motorola/android/bmessage/BMessageComposer;->sMMSDataRequestUri:Landroid/net/Uri;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    int-to-long v5, v5

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    move-object/from16 v0, v46

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v39

    check-cast v39, Lcom/google/android/mms/pdu/MultimediaMessagePdu;

    .local v39, mmsPdu:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    invoke-virtual/range {v39 .. v39}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v17

    .local v17, body:Lcom/google/android/mms/pdu/PduBody;
    invoke-virtual/range {v17 .. v17}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v43

    .local v43, numParts:I
    const/16 v49, 0x0

    .local v49, text:Ljava/lang/String;
    const/16 v35, 0x0

    .local v35, i:I
    :goto_1
    move/from16 v0, v35

    move/from16 v1, v43

    if-ge v0, v1, :cond_3

    move-object/from16 v0, v17

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v44

    .local v44, part:Lcom/google/android/mms/pdu/PduPart;
    new-instance v4, Ljava/lang/String;

    invoke-virtual/range {v44 .. v44}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    const-string v5, "text/plain"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual/range {v44 .. v44}, Lcom/google/android/mms/pdu/PduPart;->getData()[B

    move-result-object v20

    .local v20, bytes:[B
    invoke-virtual/range {v44 .. v44}, Lcom/google/android/mms/pdu/PduPart;->getCharset()I

    move-result v21

    .local v21, charset:I
    if-eqz v20, :cond_3

    new-instance v51, Lcom/google/android/mms/pdu/EncodedStringValue;

    move-object/from16 v0, v51

    move/from16 v1, v21

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(I[B)V

    .local v51, value:Lcom/google/android/mms/pdu/EncodedStringValue;
    invoke-virtual/range {v51 .. v51}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v49

    .end local v20           #bytes:[B
    .end local v21           #charset:I
    .end local v44           #part:Lcom/google/android/mms/pdu/PduPart;
    .end local v51           #value:Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_3
    const-string v4, "bmessage.BMessageComposer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " Get MMS body text"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "Body"

    move-object/from16 v0, v24

    move-object v1, v4

    move-object/from16 v2, v49

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "bmessage.BMessageComposer"

    const-string v5, " CreateOneEntryInternal() query other MMS data in database."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "bmessage.BMessageComposer"

    const-string v5, "Start to do mContentResolver.query(), input para is:"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "bmessage.BMessageComposer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " mmsProjection:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/motorola/android/bmessage/BMessageComposer;->mmsProjection:[Ljava/lang/String;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/motorola/android/bmessage/BMessageComposer;->mmsProjection:[Ljava/lang/String;

    const/4 v7, 0x1

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/motorola/android/bmessage/BMessageComposer;->mmsProjection:[Ljava/lang/String;

    const/4 v7, 0x2

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/motorola/android/bmessage/BMessageComposer;->mmsProjection:[Ljava/lang/String;

    const/4 v7, 0x3

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/motorola/android/bmessage/BMessageComposer;->mmsProjection:[Ljava/lang/String;

    const/4 v7, 0x4

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mmsSelection:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_id=?"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " selectionArgs:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v6, v8, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/bmessage/BMessageComposer;->mContentResolver:Landroid/content/ContentResolver;

    move-object v4, v0

    sget-object v5, Lcom/motorola/android/bmessage/BMessageComposer;->sMMSDataRequestUri:Landroid/net/Uri;

    sget-object v6, Lcom/motorola/android/bmessage/BMessageComposer;->mmsProjection:[Ljava/lang/String;

    const-string v7, "_id=?"

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v37

    if-eqz v37, :cond_5

    invoke-interface/range {v37 .. v37}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_5

    invoke-interface/range {v37 .. v37}, Landroid/database/Cursor;->moveToFirst()Z

    const/16 v28, 0x1

    sget-object v16, Lcom/motorola/android/bmessage/BMessageComposer;->mmsProjection:[Ljava/lang/String;

    .restart local v16       #arr$:[Ljava/lang/String;
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v38, v0

    .restart local v38       #len$:I
    const/16 v36, 0x0

    .restart local v36       #i$:I
    :goto_2
    move/from16 v0, v36

    move/from16 v1, v38

    if-ge v0, v1, :cond_5

    aget-object v22, v16, v36

    .restart local v22       #columnName:Ljava/lang/String;
    const-string v4, "bmessage.BMessageComposer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " MMS data, columnName: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " value : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v37

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v37

    move v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, v37

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v37

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    move-object v2, v4

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v36, v36, 0x1

    goto :goto_2

    .end local v16           #arr$:[Ljava/lang/String;
    .end local v22           #columnName:Ljava/lang/String;
    .end local v36           #i$:I
    .end local v38           #len$:I
    .restart local v44       #part:Lcom/google/android/mms/pdu/PduPart;
    :cond_4
    add-int/lit8 v35, v35, 0x1

    goto/16 :goto_1

    .end local v17           #body:Lcom/google/android/mms/pdu/PduBody;
    .end local v35           #i:I
    .end local v39           #mmsPdu:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    .end local v43           #numParts:I
    .end local v44           #part:Lcom/google/android/mms/pdu/PduPart;
    .end local v46           #pduPersister:Lcom/google/android/mms/pdu/PduPersister;
    .end local v49           #text:Ljava/lang/String;
    :catch_0
    move-exception v4

    move-object/from16 v29, v4

    .local v29, e:Lcom/google/android/mms/MmsException;
    const-string v4, "bmessage.BMessageComposer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown type of the message:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v29 .. v29}, Lcom/google/android/mms/MmsException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v29           #e:Lcom/google/android/mms/MmsException;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/bmessage/BMessageComposer;->mMsgType:Ljava/lang/String;

    move-object v4, v0

    const-string v5, "EMAIL"

    if-ne v4, v5, :cond_b

    sget-object v4, Landroid/provider/Email$ContentUri;->BODYPARTS:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v50

    .local v50, uriBuilder:Landroid/net/Uri$Builder;
    const-string v4, "message_id"

    move-object/from16 v0, v50

    move-object v1, v4

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual/range {v50 .. v50}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v31

    .local v31, emailBodyUri:Landroid/net/Uri;
    const-string v23, "content_type=?"

    .local v23, contentTypeSelection:Ljava/lang/String;
    const/4 v4, 0x1

    new-array v15, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "text/plain"

    aput-object v5, v15, v4

    .local v15, ContentTypeSelectionArgs:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/bmessage/BMessageComposer;->mContentResolver:Landroid/content/ContentResolver;

    move-object v4, v0

    sget-object v5, Lcom/motorola/android/bmessage/BMessageComposer;->sEmailDataRequestUri:Landroid/net/Uri;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v9, "preview"

    aput-object v9, v6, v7

    const-string v7, "_id=?"

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v37

    if-eqz v37, :cond_7

    invoke-interface/range {v37 .. v37}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_7

    invoke-interface/range {v37 .. v37}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v4, "Body"

    const-string v5, "preview"

    move-object/from16 v0, v37

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v37

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v24

    move-object v1, v4

    move-object v2, v5

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    const/16 v25, 0x0

    .local v25, currentFolder:Ljava/lang/String;
    const/16 v27, 0x0

    .local v27, currentNodeParentId:Ljava/lang/String;
    new-instance v32, Ljava/util/ArrayList;

    invoke-direct/range {v32 .. v32}, Ljava/util/ArrayList;-><init>()V

    .local v32, emailFolder:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v4, 0x3

    new-array v11, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "folder_type"

    aput-object v5, v11, v4

    const/4 v4, 0x1

    const-string v5, "parent_id"

    aput-object v5, v11, v4

    const/4 v4, 0x2

    const-string v5, "name"

    aput-object v5, v11, v4

    .local v11, emailPathProjection:[Ljava/lang/String;
    const-string v12, "_id=?"

    .local v12, emailPathSelection:Ljava/lang/String;
    const/16 v34, 0x0

    .local v34, getPath:Z
    invoke-interface/range {v37 .. v37}, Landroid/database/Cursor;->requery()Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/bmessage/BMessageComposer;->mContentResolver:Landroid/content/ContentResolver;

    move-object v4, v0

    sget-object v5, Lcom/motorola/android/bmessage/BMessageComposer;->sEmailDataRequestUri:Landroid/net/Uri;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v9, "parent_id"

    aput-object v9, v6, v7

    const-string v7, "_id=?"

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v37

    if-eqz v37, :cond_6

    invoke-interface/range {v37 .. v37}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_6

    invoke-interface/range {v37 .. v37}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v4, "parent_id"

    move-object/from16 v0, v37

    move-object v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v37

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v26

    .local v26, currentFolderIndex:I
    invoke-interface/range {v37 .. v37}, Landroid/database/Cursor;->requery()Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/bmessage/BMessageComposer;->mContentResolver:Landroid/content/ContentResolver;

    move-object v9, v0

    sget-object v10, Lcom/motorola/android/bmessage/BMessageComposer;->sEmailFolderUri:Landroid/net/Uri;

    const/4 v4, 0x1

    new-array v13, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/Integer;

    move-object v0, v5

    move/from16 v1, v26

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v5}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v13, v4

    const/4 v14, 0x0

    invoke-virtual/range {v9 .. v14}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v37

    if-eqz v37, :cond_6

    invoke-interface/range {v37 .. v37}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_6

    invoke-interface/range {v37 .. v37}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v4, "folder_type"

    move-object/from16 v0, v37

    move-object v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v37

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v26

    const/16 v34, 0x1

    packed-switch v26, :pswitch_data_0

    const/16 v34, 0x0

    .end local v26           #currentFolderIndex:I
    :cond_6
    :goto_4
    if-nez v34, :cond_9

    if-eqz v37, :cond_9

    invoke-interface/range {v37 .. v37}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_9

    :goto_5
    const-string v4, "folder_type"

    move-object/from16 v0, v37

    move-object v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v37

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_a

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    .local v45, pathBuilder:Ljava/lang/StringBuilder;
    const-string v4, "telecom\\msg"

    move-object/from16 v0, v45

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v32 .. v32}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v36

    .local v36, i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface/range {v36 .. v36}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface/range {v36 .. v36}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Ljava/lang/String;

    .local v42, nodeName:Ljava/lang/String;
    const/16 v4, 0x5c

    move-object/from16 v0, v45

    move v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-object/from16 v0, v45

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    .end local v11           #emailPathProjection:[Ljava/lang/String;
    .end local v12           #emailPathSelection:Ljava/lang/String;
    .end local v25           #currentFolder:Ljava/lang/String;
    .end local v27           #currentNodeParentId:Ljava/lang/String;
    .end local v32           #emailFolder:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v34           #getPath:Z
    .end local v36           #i$:Ljava/util/Iterator;
    .end local v42           #nodeName:Ljava/lang/String;
    .end local v45           #pathBuilder:Ljava/lang/StringBuilder;
    :cond_7
    const-string v4, "bmessage.BMessageComposer"

    const-string v5, "empty email body"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "Body"

    const-string v5, ""

    move-object/from16 v0, v24

    move-object v1, v4

    move-object v2, v5

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .restart local v11       #emailPathProjection:[Ljava/lang/String;
    .restart local v12       #emailPathSelection:Ljava/lang/String;
    .restart local v25       #currentFolder:Ljava/lang/String;
    .restart local v26       #currentFolderIndex:I
    .restart local v27       #currentNodeParentId:Ljava/lang/String;
    .restart local v32       #emailFolder:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v34       #getPath:Z
    :pswitch_0
    const-string v4, "telecom\\msg"

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/motorola/android/bmessage/BMessageComposer;->mMsgFolder:Ljava/lang/String;

    goto :goto_4

    :pswitch_1
    const-string v4, "telecom\\msg\\deleted"

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/motorola/android/bmessage/BMessageComposer;->mMsgFolder:Ljava/lang/String;

    goto :goto_4

    :pswitch_2
    const-string v4, "telecom\\msg\\drafts"

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/motorola/android/bmessage/BMessageComposer;->mMsgFolder:Ljava/lang/String;

    goto :goto_4

    :pswitch_3
    const-string v4, "telecom\\msg\\inbox"

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/motorola/android/bmessage/BMessageComposer;->mMsgFolder:Ljava/lang/String;

    goto/16 :goto_4

    :pswitch_4
    const-string v4, "telecom\\msg\\outbox"

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/motorola/android/bmessage/BMessageComposer;->mMsgFolder:Ljava/lang/String;

    goto/16 :goto_4

    :pswitch_5
    const-string v4, "telecom\\msg\\sent"

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/motorola/android/bmessage/BMessageComposer;->mMsgFolder:Ljava/lang/String;

    goto/16 :goto_4

    .end local v26           #currentFolderIndex:I
    .restart local v36       #i$:Ljava/util/Iterator;
    .restart local v45       #pathBuilder:Ljava/lang/StringBuilder;
    :cond_8
    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/motorola/android/bmessage/BMessageComposer;->mMsgFolder:Ljava/lang/String;

    const/16 v34, 0x1

    .end local v36           #i$:Ljava/util/Iterator;
    .end local v45           #pathBuilder:Ljava/lang/StringBuilder;
    :cond_9
    if-eqz v34, :cond_b

    invoke-interface/range {v37 .. v37}, Landroid/database/Cursor;->requery()Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/bmessage/BMessageComposer;->mContentResolver:Landroid/content/ContentResolver;

    move-object v4, v0

    sget-object v5, Lcom/motorola/android/bmessage/BMessageComposer;->sEmailDataRequestUri:Landroid/net/Uri;

    sget-object v6, Lcom/motorola/android/bmessage/BMessageComposer;->emailProjection:[Ljava/lang/String;

    const-string v7, "_id=?"

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v37

    if-eqz v37, :cond_b

    invoke-interface/range {v37 .. v37}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface/range {v37 .. v37}, Landroid/database/Cursor;->moveToFirst()Z

    const/16 v28, 0x1

    sget-object v16, Lcom/motorola/android/bmessage/BMessageComposer;->emailProjection:[Ljava/lang/String;

    .restart local v16       #arr$:[Ljava/lang/String;
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v38, v0

    .restart local v38       #len$:I
    const/16 v36, 0x0

    .local v36, i$:I
    :goto_7
    move/from16 v0, v36

    move/from16 v1, v38

    if-ge v0, v1, :cond_b

    aget-object v22, v16, v36

    .restart local v22       #columnName:Ljava/lang/String;
    move-object/from16 v0, v37

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v37

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    move-object v2, v4

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v36, v36, 0x1

    goto :goto_7

    .end local v16           #arr$:[Ljava/lang/String;
    .end local v22           #columnName:Ljava/lang/String;
    .end local v36           #i$:I
    .end local v38           #len$:I
    :cond_a
    const-string v4, "name"

    move-object/from16 v0, v37

    move-object v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v37

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v32

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "parent_id"

    move-object/from16 v0, v37

    move-object v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v37

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    invoke-interface/range {v37 .. v37}, Landroid/database/Cursor;->requery()Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/bmessage/BMessageComposer;->mContentResolver:Landroid/content/ContentResolver;

    move-object v9, v0

    sget-object v10, Lcom/motorola/android/bmessage/BMessageComposer;->sEmailFolderUri:Landroid/net/Uri;

    const/4 v4, 0x1

    new-array v13, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v27, v13, v4

    const/4 v14, 0x0

    invoke-virtual/range {v9 .. v14}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v37

    if-eqz v37, :cond_9

    invoke-interface/range {v37 .. v37}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface/range {v37 .. v37}, Landroid/database/Cursor;->moveToFirst()Z

    goto/16 :goto_5

    .end local v11           #emailPathProjection:[Ljava/lang/String;
    .end local v12           #emailPathSelection:Ljava/lang/String;
    .end local v15           #ContentTypeSelectionArgs:[Ljava/lang/String;
    .end local v23           #contentTypeSelection:Ljava/lang/String;
    .end local v25           #currentFolder:Ljava/lang/String;
    .end local v27           #currentNodeParentId:Ljava/lang/String;
    .end local v31           #emailBodyUri:Landroid/net/Uri;
    .end local v32           #emailFolder:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v34           #getPath:Z
    .end local v50           #uriBuilder:Landroid/net/Uri$Builder;
    :cond_b
    if-eqz v37, :cond_c

    invoke-interface/range {v37 .. v37}, Landroid/database/Cursor;->close()V

    :cond_c
    if-nez v28, :cond_d

    const/4 v4, 0x0

    :goto_8
    return-object v4

    :cond_d
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    .local v19, builder:Ljava/lang/StringBuilder;
    const-string v4, "bmessage.BMessageComposer"

    const-string v5, " [1]. Start to append \'BEGIN:BMSG\' to string builder."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "BEGIN"

    const-string v5, "BMSG"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object v2, v4

    move-object v3, v5

    invoke-direct {v0, v1, v2, v3}, Lcom/motorola/android/bmessage/BMessageComposer;->appendBMessageLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "bmessage.BMessageComposer"

    const-string v5, " ################ [1]. Builder String: ################ "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "bmessage.BMessageComposer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "={"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "}"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "bmessage.BMessageComposer"

    const-string v5, " [2]. Start to append \'property\' to string builder."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/motorola/android/bmessage/BMessageComposer;->appendProperty(Ljava/lang/StringBuilder;Ljava/util/Map;)V

    const-string v4, "bmessage.BMessageComposer"

    const-string v5, " ################ [2]. Builder String: ################ "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "bmessage.BMessageComposer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "={"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "}"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "bmessage.BMessageComposer"

    const-string v5, " [3]. Start to append \'originator\' to string builder."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/motorola/android/bmessage/BMessageComposer;->appendOriginator(Ljava/lang/StringBuilder;Ljava/util/Map;)V

    const-string v4, "bmessage.BMessageComposer"

    const-string v5, " ################ [3]. Builder String: ################ "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "bmessage.BMessageComposer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "={"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "}"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "bmessage.BMessageComposer"

    const-string v5, " [4]. Start to append \'envelope\' to string builder."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/motorola/android/bmessage/BMessageComposer;->appendEnvelope(Ljava/lang/StringBuilder;Ljava/util/Map;)V

    const-string v4, "END"

    const-string v5, "BMSG"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object v2, v4

    move-object v3, v5

    invoke-direct {v0, v1, v2, v3}, Lcom/motorola/android/bmessage/BMessageComposer;->appendBMessageLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "bmessage.BMessageComposer"

    const-string v5, " ################ [4]. Builder String: ################ "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "bmessage.BMessageComposer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "={"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "}"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "bmessage.BMessageComposer"

    const-string v5, " **** compose bmessage string finished and return by createOneEntryInternal(). ****"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_8

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public addHandler(Lcom/motorola/android/bmessage/BMessageComposer$OneEntryHandler;)V
    .locals 1
    .parameter "handler"

    .prologue
    iget-object v0, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mHandlerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public createOneEntry()Z
    .locals 12

    .prologue
    const/4 v9, 0x0

    const-string v11, "Start to call onEntryCreated() to write bmessage encoded string."

    const-string v10, "==== createOneEntry() exit and return fail. ==== "

    const-string v8, "bmessage.BMessageComposer"

    const-string v4, "bmessage.BMessageComposer"

    const-string v4, " ==== Enter createOneEntry() ===="

    invoke-static {v8, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mCursor:Landroid/database/Cursor;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    const-string v4, "The BMessage composer object is not correctly initialized"

    iput-object v4, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mErrorReason:Ljava/lang/String;

    const-string v4, "bmessage.BMessageComposer"

    const-string v4, "mCursor point to invalid entry."

    invoke-static {v8, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "bmessage.BMessageComposer"

    const-string v4, "==== createOneEntry() exit and return fail. ===="

    invoke-static {v8, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v9

    :goto_0
    return v4

    :cond_1
    const/4 v0, 0x0

    .local v0, bmessage:Ljava/lang/String;
    :try_start_0
    iget v4, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mIdColumn:I

    if-ltz v4, :cond_2

    const-string v4, "bmessage.BMessageComposer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " The SMS message \'_id\' string value is: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mCursor:Landroid/database/Cursor;

    iget v7, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mIdColumn:I

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "bmessage.BMessageComposer"

    const-string v5, " Start to call createOneEntryInternal() to get msg info and do encode."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mCursor:Landroid/database/Cursor;

    iget v5, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mIdColumn:I

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/motorola/android/bmessage/BMessageComposer;->createOneEntryInternal(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    iget-object v4, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    if-nez v0, :cond_3

    const-string v4, "bmessage.BMessageComposer"

    const-string v4, " bmessage encoded string returned from createOneEntryInternal() is null."

    invoke-static {v8, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "bmessage.BMessageComposer"

    const-string v4, "==== createOneEntry() exit and return fail. ==== "

    invoke-static {v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v9

    goto :goto_0

    :cond_2
    :try_start_1
    const-string v4, "bmessage.BMessageComposer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Incorrect mIDColumn: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mIdColumn:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "bmessage.BMessageComposer"

    const-string v5, "==== createOneEntry() exit and return fail. ==== "

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    iget-object v4, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move v4, v9

    goto :goto_0

    :catch_0
    move-exception v4

    move-object v1, v4

    .local v1, error:Ljava/lang/OutOfMemoryError;
    :try_start_2
    const-string v4, "bmessage.BMessageComposer"

    const-string v5, "OutOfMemoryError occured. Ignore the entry."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "bmessage.BMessageComposer"

    const-string v5, "==== createOneEntry() exit and return fail. ==== "

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v4, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move v4, v9

    goto/16 :goto_0

    .end local v1           #error:Ljava/lang/OutOfMemoryError;
    :catchall_0
    move-exception v4

    iget-object v5, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    throw v4

    :cond_3
    iget-boolean v4, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mCareHandlerErrors:Z

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mHandlerList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/android/bmessage/BMessageComposer$OneEntryHandler;

    .local v2, handler:Lcom/motorola/android/bmessage/BMessageComposer$OneEntryHandler;
    const-string v4, "bmessage.BMessageComposer"

    const-string v4, "Start to call onEntryCreated() to write bmessage encoded string."

    invoke-static {v8, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v2, v0}, Lcom/motorola/android/bmessage/BMessageComposer$OneEntryHandler;->onEntryCreated(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "bmessage.BMessageComposer"

    const-string v4, "onEntryCreated() return fail."

    invoke-static {v8, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "bmessage.BMessageComposer"

    const-string v4, "==== createOneEntry() exit and return fail. ==== "

    invoke-static {v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v9

    goto/16 :goto_0

    .end local v2           #handler:Lcom/motorola/android/bmessage/BMessageComposer$OneEntryHandler;
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_5
    iget-object v4, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mHandlerList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3       #i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/android/bmessage/BMessageComposer$OneEntryHandler;

    .restart local v2       #handler:Lcom/motorola/android/bmessage/BMessageComposer$OneEntryHandler;
    const-string v4, "bmessage.BMessageComposer"

    const-string v4, "Start to call onEntryCreated() to write bmessage encoded string."

    invoke-static {v8, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v2, v0}, Lcom/motorola/android/bmessage/BMessageComposer$OneEntryHandler;->onEntryCreated(Ljava/lang/String;)Z

    const-string v4, "bmessage.BMessageComposer"

    const-string v4, "onEntryCreated() return."

    invoke-static {v8, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v2           #handler:Lcom/motorola/android/bmessage/BMessageComposer$OneEntryHandler;
    :cond_6
    const-string v4, "bmessage.BMessageComposer"

    const-string v4, "==== createOneEntry() exit and return successful. ==== "

    invoke-static {v8, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    goto/16 :goto_0
.end method

.method protected finalize()V
    .locals 2

    .prologue
    const-string v1, "bmessage.BMessageComposer"

    const-string v0, "bmessage.BMessageComposer"

    const-string v0, " Enter finalize()."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mTerminateIsCalled:Z

    if-nez v0, :cond_0

    const-string v0, "bmessage.BMessageComposer"

    const-string v0, " Start run terminate()."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/motorola/android/bmessage/BMessageComposer;->terminate()V

    :cond_0
    const-string v0, "bmessage.BMessageComposer"

    const-string v0, " Exit finalize()."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public getErrorReason()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mErrorReason:Ljava/lang/String;

    return-object v0
.end method

.method public init(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "msgType"
    .parameter "charSet"

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, p1, p2}, Lcom/motorola/android/bmessage/BMessageComposer;->init(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public init(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "msgType"
    .parameter "charSet"

    .prologue
    iput-object p3, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mMsgType:Ljava/lang/String;

    if-nez p4, :cond_0

    const-string v0, "bmessage.BMessageComposer"

    const-string v1, " ==== Enter init(), null charset ===="

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const-string v0, "UTF-8"

    invoke-virtual {p4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "UTF-8"

    iput-object v0, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mCharSet:Ljava/lang/String;

    :goto_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mBegPos:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mEndPos:I

    const/4 v0, 0x0

    check-cast v0, [[B

    iput-object v0, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mSmsPdus:[[B

    const-string v0, "bmessage.BMessageComposer"

    const-string v1, " ==== Enter init(), input para is: ===="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_4

    const-string v0, "bmessage.BMessageComposer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "selection:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " selectionArgs[0]:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, p2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " msgType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " charSet:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    iget-boolean v0, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mCareHandlerErrors:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mHandlerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/motorola/android/bmessage/BMessageComposer$OneEntryHandler;

    .local v8, handler:Lcom/motorola/android/bmessage/BMessageComposer$OneEntryHandler;
    iget-object v0, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mContext:Landroid/content/Context;

    invoke-interface {v8, v0}, Lcom/motorola/android/bmessage/BMessageComposer$OneEntryHandler;->onInit(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mHandlerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/motorola/android/bmessage/BMessageComposer$OneEntryHandler;

    .local v7, finished:Lcom/motorola/android/bmessage/BMessageComposer$OneEntryHandler;
    invoke-interface {v7}, Lcom/motorola/android/bmessage/BMessageComposer$OneEntryHandler;->onTerminate()V

    goto :goto_3

    .end local v7           #finished:Lcom/motorola/android/bmessage/BMessageComposer$OneEntryHandler;
    .end local v8           #handler:Lcom/motorola/android/bmessage/BMessageComposer$OneEntryHandler;
    .end local v9           #i$:Ljava/util/Iterator;
    :cond_2
    const-string v0, "NATIVE"

    invoke-virtual {p4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "NATIVE"

    iput-object v0, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mCharSet:Ljava/lang/String;

    goto/16 :goto_1

    :cond_3
    const-string v0, "bmessage.BMessageComposer"

    const-string v1, " ==== Enter init() , non-support charset: charSet ===="

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_4
    const-string v0, "bmessage.BMessageComposer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "selection:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " selectionArgs:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " msgType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " charSet:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .restart local v8       #handler:Lcom/motorola/android/bmessage/BMessageComposer$OneEntryHandler;
    .restart local v9       #i$:Ljava/util/Iterator;
    :cond_5
    const/4 v0, 0x0

    goto/16 :goto_0

    .end local v8           #handler:Lcom/motorola/android/bmessage/BMessageComposer$OneEntryHandler;
    .end local v9           #i$:Ljava/util/Iterator;
    :cond_6
    iget-object v0, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mHandlerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .restart local v9       #i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/motorola/android/bmessage/BMessageComposer$OneEntryHandler;

    .restart local v8       #handler:Lcom/motorola/android/bmessage/BMessageComposer$OneEntryHandler;
    iget-object v0, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mContext:Landroid/content/Context;

    invoke-interface {v8, v0}, Lcom/motorola/android/bmessage/BMessageComposer$OneEntryHandler;->onInit(Landroid/content/Context;)Z

    goto :goto_4

    .end local v8           #handler:Lcom/motorola/android/bmessage/BMessageComposer$OneEntryHandler;
    :cond_7
    iget-object v0, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mMsgType:Ljava/lang/String;

    const-string v1, "SMS_CDMA"

    if-eq v0, v1, :cond_8

    iget-object v0, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mMsgType:Ljava/lang/String;

    const-string v1, "SMS_GSM"

    if-ne v0, v1, :cond_9

    :cond_8
    const-string v0, "bmessage.BMessageComposer"

    const-string v1, "Start to do mContentResolver.query(), input para is:"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_c

    const-string v0, "bmessage.BMessageComposer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Projection:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/motorola/android/bmessage/BMessageComposer;->sSMSProjection:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " selection:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " selectionArgs:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, p2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    iget-object v0, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/motorola/android/bmessage/BMessageComposer;->sSMSDataRequestUri:Landroid/net/Uri;

    sget-object v2, Lcom/motorola/android/bmessage/BMessageComposer;->sSMSProjection:[Ljava/lang/String;

    const/4 v5, 0x0

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mCursor:Landroid/database/Cursor;

    :cond_9
    iget-object v0, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mMsgType:Ljava/lang/String;

    const-string v1, "MMS"

    if-ne v0, v1, :cond_a

    const-string v0, "bmessage.BMessageComposer"

    const-string v1, "Start to do mContentResolver.query(), input para is:"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_d

    const-string v0, "bmessage.BMessageComposer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Projection:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/motorola/android/bmessage/BMessageComposer;->sMMSProjection:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " selection:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " selectionArgs:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, p2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6
    iget-object v0, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/motorola/android/bmessage/BMessageComposer;->sMMSDataRequestUri:Landroid/net/Uri;

    sget-object v2, Lcom/motorola/android/bmessage/BMessageComposer;->sMMSProjection:[Ljava/lang/String;

    const/4 v5, 0x0

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mCursor:Landroid/database/Cursor;

    :cond_a
    iget-object v0, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mMsgType:Ljava/lang/String;

    const-string v1, "EMAIL"

    if-ne v0, v1, :cond_b

    const-string v0, "bmessage.BMessageComposer"

    const-string v1, "Start to do mContentResolver.query(), input para is:"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_e

    const-string v0, "bmessage.BMessageComposer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Projection:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/motorola/android/bmessage/BMessageComposer;->sEmailProjection:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " selection:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " selectionArgs:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, p2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_7
    iget-object v0, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/motorola/android/bmessage/BMessageComposer;->sEmailDataRequestUri:Landroid/net/Uri;

    sget-object v2, Lcom/motorola/android/bmessage/BMessageComposer;->sEmailProjection:[Ljava/lang/String;

    const/4 v5, 0x0

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mCursor:Landroid/database/Cursor;

    :cond_b
    iget-object v0, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_f

    const-string v0, "bmessage.BMessageComposer"

    const-string v1, "Failed to query the requested Msg info."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "bmessage.BMessageComposer"

    const-string v1, "==== init() exit and return fail. ==== "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Failed to get database information"

    iput-object v0, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mErrorReason:Ljava/lang/String;

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_c
    const-string v0, "bmessage.BMessageComposer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Projection:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/motorola/android/bmessage/BMessageComposer;->sSMSProjection:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " selection:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " selectionArgs:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :cond_d
    const-string v0, "bmessage.BMessageComposer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Projection:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/motorola/android/bmessage/BMessageComposer;->sMMSProjection:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " selection:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " selectionArgs:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :cond_e
    const-string v0, "bmessage.BMessageComposer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Projection:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/motorola/android/bmessage/BMessageComposer;->sEmailProjection:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " selection:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " selectionArgs:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    :cond_f
    const-string v0, "bmessage.BMessageComposer"

    const-string v1, "mContentResolver.query() returned successfully, and mCursor has the entry queried."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "bmessage.BMessageComposer"

    const-string v1, "Start to move mCursor to the first row entry."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/motorola/android/bmessage/BMessageComposer;->getCount()I

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_11

    :cond_10
    const-string v0, "bmessage.BMessageComposer"

    const-string v1, "Failed to move mCursor to the first Entry position."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "bmessage.BMessageComposer"

    const-string v1, "mCursor is set to null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mCursor:Landroid/database/Cursor;

    const-string v0, "There\'s no exportable in the database"

    iput-object v0, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mErrorReason:Ljava/lang/String;

    :goto_8
    const-string v0, "bmessage.BMessageComposer"

    const-string v1, "==== init() exit and return fail. ==== "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    move-object v6, v0

    .local v6, e:Landroid/database/sqlite/SQLiteException;
    :try_start_1
    const-string v0, "bmessage.BMessageComposer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SQLiteException on Cursor#close(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v0, "bmessage.BMessageComposer"

    const-string v1, "mCursor is set to null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mCursor:Landroid/database/Cursor;

    const-string v0, "There\'s no exportable in the database"

    iput-object v0, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mErrorReason:Ljava/lang/String;

    goto :goto_8

    .end local v6           #e:Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v0

    const-string v1, "bmessage.BMessageComposer"

    const-string v2, "mCursor is set to null."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mCursor:Landroid/database/Cursor;

    const-string v1, "There\'s no exportable in the database"

    iput-object v1, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mErrorReason:Ljava/lang/String;

    throw v0

    :cond_11
    const-string v0, "bmessage.BMessageComposer"

    const-string v1, "mCursor moved to the first entry successfully."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mCursor:Landroid/database/Cursor;

    const-string v1, "_id"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mIdColumn:I

    const-string v0, "bmessage.BMessageComposer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The Msg message \'_id\' column index is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mIdColumn:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "bmessage.BMessageComposer"

    const-string v1, "==== init() exit and return successfully. ==== "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public isAfterLast()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    goto :goto_0
.end method

.method public terminate()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x0

    const-string v6, "bmessage.BMessageComposer"

    const-string v4, "bmessage.BMessageComposer"

    const-string v4, " Enter terminate()."

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mHandlerList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/android/bmessage/BMessageComposer$OneEntryHandler;

    .local v1, handler:Lcom/motorola/android/bmessage/BMessageComposer$OneEntryHandler;
    const-string v4, "bmessage.BMessageComposer"

    const-string v4, " Start run handler.onTerminate() ."

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v1}, Lcom/motorola/android/bmessage/BMessageComposer$OneEntryHandler;->onTerminate()V

    goto :goto_0

    .end local v1           #handler:Lcom/motorola/android/bmessage/BMessageComposer$OneEntryHandler;
    :cond_0
    iget-object v4, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mCursor:Landroid/database/Cursor;

    if-eqz v4, :cond_1

    :try_start_0
    const-string v4, "bmessage.BMessageComposer"

    const-string v5, " mCursor.close() ."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iput-object v3, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mCursor:Landroid/database/Cursor;

    :cond_1
    iput v7, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mBegPos:I

    iput v7, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mEndPos:I

    check-cast v3, [[B

    iput-object v3, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mSmsPdus:[[B

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mTerminateIsCalled:Z

    const-string v3, "bmessage.BMessageComposer"

    const-string v3, " Exit terminate()."

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception v4

    move-object v0, v4

    .local v0, e:Landroid/database/sqlite/SQLiteException;
    const-string v4, "bmessage.BMessageComposer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SQLiteException on Cursor#close(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
