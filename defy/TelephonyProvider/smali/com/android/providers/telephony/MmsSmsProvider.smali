.class public Lcom/android/providers/telephony/MmsSmsProvider;
.super Landroid/content/ContentProvider;
.source "MmsSmsProvider.java"


# static fields
.field private static final CANONICAL_ADDRESSES_COLUMNS_1:[Ljava/lang/String;

.field private static final CANONICAL_ADDRESSES_COLUMNS_2:[Ljava/lang/String;

.field private static final EMPTY_STRING_ARRAY:[Ljava/lang/String;

.field private static final ID_PROJECTION:[Ljava/lang/String;

.field private static final MMS_COLUMNS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final MMS_ONLY_COLUMNS:[Ljava/lang/String;

.field private static final MMS_SMS_COLUMNS:[Ljava/lang/String;

.field private static final SMS_COLUMNS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final SMS_ONLY_COLUMNS:[Ljava/lang/String;

.field private static final THREADS_COLUMNS:[Ljava/lang/String;

.field private static final UNION_COLUMNS:[Ljava/lang/String;

.field private static final URI_MATCHER:Landroid/content/UriMatcher;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

.field private mUseStrictPhoneNumberComparation:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v3, "mms-sms"

    .line 77
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    .line 128
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "count(*)"

    aput-object v1, v0, v5

    const-string v1, "date"

    aput-object v1, v0, v6

    const-string v1, "read"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "thread_id"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "locked"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->MMS_SMS_COLUMNS:[Ljava/lang/String;

    .line 133
    const/16 v0, 0x17

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "ct_cls"

    aput-object v1, v0, v4

    const-string v1, "ct_l"

    aput-object v1, v0, v5

    const-string v1, "ct_t"

    aput-object v1, v0, v6

    const-string v1, "d_rpt"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "exp"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "m_cls"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "m_id"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "m_size"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "m_type"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "msg_box"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "pri"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "read_status"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "resp_st"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "resp_txt"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "retr_st"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "retr_txt_cs"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "rpt_a"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "rr"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "st"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "sub"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "sub_cs"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "tr_id"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "v"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->MMS_ONLY_COLUMNS:[Ljava/lang/String;

    .line 144
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "address"

    aput-object v1, v0, v4

    const-string v1, "body"

    aput-object v1, v0, v5

    const-string v1, "person"

    aput-object v1, v0, v6

    const-string v1, "reply_path_present"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "service_center"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "status"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "subject"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "type"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "error_code"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->SMS_ONLY_COLUMNS:[Ljava/lang/String;

    .line 152
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "date"

    aput-object v1, v0, v5

    const-string v1, "recipient_ids"

    aput-object v1, v0, v6

    const-string v1, "message_count"

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->THREADS_COLUMNS:[Ljava/lang/String;

    .line 159
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "address"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->CANONICAL_ADDRESSES_COLUMNS_1:[Ljava/lang/String;

    .line 162
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "address"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->CANONICAL_ADDRESSES_COLUMNS_2:[Ljava/lang/String;

    .line 168
    sget-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->MMS_SMS_COLUMNS:[Ljava/lang/String;

    array-length v0, v0

    sget-object v1, Lcom/android/providers/telephony/MmsSmsProvider;->MMS_ONLY_COLUMNS:[Ljava/lang/String;

    array-length v1, v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/android/providers/telephony/MmsSmsProvider;->SMS_ONLY_COLUMNS:[Ljava/lang/String;

    array-length v1, v1

    add-int/2addr v0, v1

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->UNION_COLUMNS:[Ljava/lang/String;

    .line 174
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->MMS_COLUMNS:Ljava/util/Set;

    .line 177
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->SMS_COLUMNS:Ljava/util/Set;

    .line 182
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->ID_PROJECTION:[Ljava/lang/String;

    .line 184
    new-array v0, v4, [Ljava/lang/String;

    sput-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 198
    sget-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms"

    const-string v1, "conversations"

    invoke-virtual {v0, v3, v1, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 199
    sget-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms"

    const-string v1, "complete-conversations"

    const/4 v2, 0x7

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 202
    sget-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms"

    const-string v1, "conversations/#"

    invoke-virtual {v0, v3, v1, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 204
    sget-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms"

    const-string v1, "conversations/#/group"

    const/16 v2, 0x69

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 207
    sget-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms"

    const-string v1, "conversations/#/recipients"

    invoke-virtual {v0, v3, v1, v6}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 211
    sget-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms"

    const-string v1, "conversations/#/subject"

    const/16 v2, 0x9

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 216
    sget-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms"

    const-string v1, "conversations/obsolete"

    const/16 v2, 0xb

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 218
    sget-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms"

    const-string v1, "messages/byphone/*"

    invoke-virtual {v0, v3, v1, v7}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 225
    sget-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms"

    const-string v1, "threadID"

    const/4 v2, 0x4

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 228
    sget-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms"

    const-string v1, "canonical-address/#"

    const/4 v2, 0x5

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 231
    sget-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms"

    const-string v1, "count-threads-messages"

    const/16 v2, 0x68

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 234
    sget-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms"

    const-string v1, "threads/#"

    const/16 v2, 0x65

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 237
    sget-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms"

    const-string v1, "sum-unread"

    const/16 v2, 0x67

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 240
    sget-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms"

    const-string v1, "addresses"

    const/16 v2, 0x66

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 243
    sget-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms"

    const-string v1, "canonical-addresses"

    const/16 v2, 0xd

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 245
    sget-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms"

    const-string v1, "search"

    const/16 v2, 0xe

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 246
    sget-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms"

    const-string v1, "searchSuggest"

    const/16 v2, 0xf

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 257
    sget-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms"

    const-string v1, "pending"

    const/4 v2, 0x6

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 260
    sget-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms"

    const-string v1, "undelivered"

    const/16 v2, 0x8

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 264
    sget-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms"

    const-string v1, "notifications"

    const/16 v2, 0xa

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 266
    sget-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms"

    const-string v1, "draft"

    const/16 v2, 0xc

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 268
    sget-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms"

    const-string v1, "locked"

    const/16 v2, 0x10

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 270
    sget-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms"

    const-string v1, "locked/#"

    const/16 v2, 0x11

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 272
    sget-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms"

    const-string v1, "locked/all"

    const/16 v2, 0x12

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 274
    sget-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms"

    const-string v1, "message/preview"

    const/16 v2, 0x64

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 276
    sget-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms"

    const-string v1, "recent-recipients"

    const/16 v2, 0x6a

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 278
    invoke-static {}, Lcom/android/providers/telephony/MmsSmsProvider;->initializeColumnSets()V

    .line 279
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private static buildConversationQuery([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 19
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"
    .parameter "groupBy"

    .prologue
    .line 1180
    invoke-static/range {p0 .. p0}, Lcom/android/providers/telephony/MmsSmsProvider;->createMmsProjection([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1182
    .local v5, mmsProjection:[Ljava/lang/String;
    new-instance v4, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v4}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 1183
    .local v4, mmsQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    new-instance v15, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v15}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 1185
    .local v15, smsQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    .line 1186
    const/4 v6, 0x1

    invoke-virtual {v15, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    .line 1187
    invoke-static {}, Lcom/android/providers/telephony/MmsSmsProvider;->joinPduAndPendingMsgTables()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1188
    const-string v6, "sms"

    invoke-virtual {v15, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1190
    invoke-static/range {p0 .. p0}, Lcom/android/providers/telephony/MmsSmsProvider;->handleNullMessageProjection([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .line 1191
    .local v18, smsColumns:[Ljava/lang/String;
    invoke-static {v5}, Lcom/android/providers/telephony/MmsSmsProvider;->handleNullMessageProjection([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 1192
    .local p0, mmsColumns:[Ljava/lang/String;
    const/16 v5, 0x3e8

    move-object/from16 v0, p0

    move v1, v5

    invoke-static {v0, v1}, Lcom/android/providers/telephony/MmsSmsProvider;->makeProjectionWithNormalizedDate([Ljava/lang/String;I)[Ljava/lang/String;

    .end local v5           #mmsProjection:[Ljava/lang/String;
    move-result-object v6

    .line 1193
    .local v6, innerMmsProjection:[Ljava/lang/String;
    const/16 p0, 0x1

    invoke-static/range {v18 .. v19}, Lcom/android/providers/telephony/MmsSmsProvider;->makeProjectionWithNormalizedDate([Ljava/lang/String;I)[Ljava/lang/String;

    .end local p0           #mmsColumns:[Ljava/lang/String;
    move-result-object p0

    .line 1195
    .local p0, innerSmsProjection:[Ljava/lang/String;
    new-instance v7, Ljava/util/HashSet;

    sget-object v5, Lcom/android/providers/telephony/MmsSmsProvider;->MMS_COLUMNS:Ljava/util/Set;

    invoke-direct {v7, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1196
    .local v7, columnsPresentInTable:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const-string v5, "pdu._id"

    invoke-interface {v7, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1197
    const-string v5, "err_type"

    invoke-interface {v7, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1199
    const-string v5, "msg_box != 3"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/android/providers/telephony/MmsSmsProvider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1201
    .local v10, mmsSelection:Ljava/lang/String;
    const-string v5, "transport_type"

    const/4 v8, 0x0

    const-string v9, "mms"

    const-string v11, "(msg_box != 3 AND (m_type = 128 OR m_type = 132 OR m_type = 130))"

    invoke-static {v10, v11}, Lcom/android/providers/telephony/MmsSmsProvider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .end local v10           #mmsSelection:Ljava/lang/String;
    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v11, p2

    invoke-virtual/range {v4 .. v13}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionSubQuery(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Set;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1206
    .local v4, mmsSubQuery:Ljava/lang/String;
    const-string v9, "transport_type"

    sget-object v11, Lcom/android/providers/telephony/MmsSmsProvider;->SMS_COLUMNS:Ljava/util/Set;

    const/4 v12, 0x0

    const-string v13, "sms"

    const-string v5, "(type != 3)"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/android/providers/telephony/MmsSmsProvider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v8, v15

    move-object/from16 v10, p0

    move-object/from16 v15, p2

    invoke-virtual/range {v8 .. v17}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionSubQuery(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Set;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .end local v15           #smsQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    move-result-object p0

    .line 1210
    .local p0, smsSubQuery:Ljava/lang/String;
    new-instance p1, Landroid/database/sqlite/SQLiteQueryBuilder;

    .end local p1
    invoke-direct/range {p1 .. p1}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 1212
    .local p1, unionQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    const/16 p2, 0x1

    invoke-virtual/range {p1 .. p2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    .line 1214
    .end local p2
    const/16 p2, 0x2

    move/from16 v0, p2

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 p2, v0

    const/4 v5, 0x0

    aput-object p0, p2, v5

    const/16 p0, 0x1

    aput-object v4, p2, p0

    .end local p0           #smsSubQuery:Ljava/lang/String;
    invoke-static/range {p3 .. p3}, Lcom/android/providers/telephony/MmsSmsProvider;->handleNullSortOrder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v4, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p0

    move-object v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionQuery([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .end local v4           #mmsSubQuery:Ljava/lang/String;
    move-result-object p0

    .line 1218
    .local p0, unionQuery:Ljava/lang/String;
    new-instance v8, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v8}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 1220
    .local v8, outerQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    new-instance p1, Ljava/lang/StringBuilder;

    .end local p1           #unionQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    invoke-direct/range {p1 .. p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "("

    invoke-virtual/range {p1 .. p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .end local p0           #unionQuery:Ljava/lang/String;
    const-string p1, ")"

    invoke-virtual/range {p0 .. p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    move-object v0, v8

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1222
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    move-object/from16 v9, v18

    move-object/from16 v12, p4

    move-object/from16 v14, p3

    invoke-virtual/range {v8 .. v15}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQuery([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "selection1"
    .parameter "selection2"

    .prologue
    .line 734
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 739
    :goto_0
    return-object v0

    .line 736
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p0

    .line 737
    goto :goto_0

    .line 739
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static createMmsProjection([Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .parameter "old"

    .prologue
    .line 1093
    array-length v2, p0

    new-array v1, v2, [Ljava/lang/String;

    .line 1094
    .local v1, newProjection:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 1095
    aget-object v2, p0, v0

    const-string v3, "_id"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1096
    const-string v2, "pdu._id"

    aput-object v2, v1, v0

    .line 1094
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1098
    :cond_0
    aget-object v2, p0, v0

    aput-object v2, v1, v0

    goto :goto_1

    .line 1101
    :cond_1
    return-object v1
.end method

.method private deleteConversation(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 5
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 1313
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    .line 1315
    .local v2, threadId:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/providers/telephony/MmsSmsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1316
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "thread_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, v3}, Lcom/android/providers/telephony/MmsSmsProvider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1317
    .local v1, finalSelection:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/providers/telephony/MmsSmsProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0, v1, p3, p1}, Lcom/android/providers/telephony/MmsProvider;->deleteMessages(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Landroid/net/Uri;)I

    move-result v3

    const-string v4, "sms"

    invoke-virtual {v0, v4, v1, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    return v3
.end method

.method private getAddressIds(Ljava/util/List;)Ljava/util/Set;
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 611
    .local p1, addresses:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/HashSet;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/HashSet;-><init>(I)V

    .line 613
    .local v4, result:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 614
    .local v0, address:Ljava/lang/String;
    const-string v5, "insert-address-token"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 615
    invoke-direct {p0, v0}, Lcom/android/providers/telephony/MmsSmsProvider;->getSingleAddressId(Ljava/lang/String;)J

    move-result-wide v2

    .line 616
    .local v2, id:J
    const-wide/16 v5, -0x1

    cmp-long v5, v2, v5

    if-eqz v5, :cond_1

    .line 617
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 619
    :cond_1
    const-string v5, "MmsSmsProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getAddressIds: address ID not found for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 623
    .end local v0           #address:Ljava/lang/String;
    .end local v2           #id:J
    :cond_2
    return-object v4
.end method

.method private getCompleteConversations([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 3
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 952
    const/4 v1, 0x0

    invoke-static {p1, p2, p3, p4, v1}, Lcom/android/providers/telephony/MmsSmsProvider;->buildConversationQuery([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 955
    .local v0, unionQuery:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/providers/telephony/MmsSmsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    sget-object v2, Lcom/android/providers/telephony/MmsSmsProvider;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1
.end method

.method private getConversationById(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .parameter "threadIdString"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    const/4 v6, 0x0

    .line 1069
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1075
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1076
    .local v9, extraSelection:Ljava/lang/String;
    invoke-static {p3, v9}, Lcom/android/providers/telephony/MmsSmsProvider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1077
    .local v3, finalSelection:Ljava/lang/String;
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 1078
    .local v0, queryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    invoke-static {p2}, Lcom/android/providers/telephony/MmsSmsProvider;->handleNullThreadsProjection([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1080
    .local v2, columns:[Ljava/lang/String;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    .line 1081
    const-string v1, "threads"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1082
    iget-object v1, p0, Lcom/android/providers/telephony/MmsSmsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    move-object v4, p4

    move-object v5, p5

    move-object v7, v6

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .end local v0           #queryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    .end local v2           #columns:[Ljava/lang/String;
    .end local v3           #finalSelection:Ljava/lang/String;
    .end local v9           #extraSelection:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 1070
    :catch_0
    move-exception v8

    .line 1071
    .local v8, exception:Ljava/lang/NumberFormatException;
    const-string v1, "MmsSmsProvider"

    const-string v4, "Thread ID must be a Long."

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v6

    .line 1072
    goto :goto_0
.end method

.method private getConversationMessages(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 5
    .parameter "threadIdString"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"
    .parameter "groupBy"

    .prologue
    .line 984
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 990
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "thread_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p3, v3}, Lcom/android/providers/telephony/MmsSmsProvider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 992
    .local v1, finalSelection:Ljava/lang/String;
    invoke-static {p2, v1, p4, p5, p6}, Lcom/android/providers/telephony/MmsSmsProvider;->buildConversationQuery([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 995
    .local v2, unionQuery:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/providers/telephony/MmsSmsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    sget-object v4, Lcom/android/providers/telephony/MmsSmsProvider;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    invoke-virtual {v3, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .end local v1           #finalSelection:Ljava/lang/String;
    .end local v2           #unionQuery:Ljava/lang/String;
    :goto_0
    return-object v3

    .line 985
    :catch_0
    move-exception v0

    .line 986
    .local v0, exception:Ljava/lang/NumberFormatException;
    const-string v3, "MmsSmsProvider"

    const-string v4, "Thread ID must be a Long."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 987
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private getConversations([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 25
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 857
    new-instance v4, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v4}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 858
    .local v4, mmsQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    new-instance v21, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct/range {v21 .. v21}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 860
    .local v21, smsQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v5, "pdu"

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 861
    const-string v5, "sms"

    move-object/from16 v0, v21

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 863
    invoke-static/range {p1 .. p1}, Lcom/android/providers/telephony/MmsSmsProvider;->handleNullMessageProjection([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    .line 864
    .local v17, columns:[Ljava/lang/String;
    sget-object v5, Lcom/android/providers/telephony/MmsSmsProvider;->UNION_COLUMNS:[Ljava/lang/String;

    const/16 v6, 0x3e8

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v6

    invoke-direct {v0, v1, v2}, Lcom/android/providers/telephony/MmsSmsProvider;->makeProjectionWithDateAndThreadId([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v6

    .line 866
    .local v6, innerMmsProjection:[Ljava/lang/String;
    sget-object v5, Lcom/android/providers/telephony/MmsSmsProvider;->UNION_COLUMNS:[Ljava/lang/String;

    const/4 v7, 0x1

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v7

    invoke-direct {v0, v1, v2}, Lcom/android/providers/telephony/MmsSmsProvider;->makeProjectionWithDateAndThreadId([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v18

    .line 868
    .local v18, innerSmsProjection:[Ljava/lang/String;
    const-string v5, "transport_type"

    sget-object v7, Lcom/android/providers/telephony/MmsSmsProvider;->MMS_COLUMNS:Ljava/util/Set;

    const/4 v8, 0x1

    const-string v9, "mms"

    const-string v10, "(msg_box != 3 AND (m_type = 128 OR m_type = 132 OR m_type = 130))"

    move-object/from16 v0, p2

    move-object v1, v10

    invoke-static {v0, v1}, Lcom/android/providers/telephony/MmsSmsProvider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v12, "thread_id"

    const-string v13, "date = MAX(date)"

    move-object/from16 v11, p3

    invoke-virtual/range {v4 .. v13}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionSubQuery(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Set;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 873
    .local v19, mmsSubQuery:Ljava/lang/String;
    const-string v8, "transport_type"

    sget-object v10, Lcom/android/providers/telephony/MmsSmsProvider;->SMS_COLUMNS:Ljava/util/Set;

    const/4 v11, 0x1

    const-string v12, "sms"

    const-string v5, "(type != 3)"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/android/providers/telephony/MmsSmsProvider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v15, "thread_id"

    const-string v16, "date = MAX(date)"

    move-object/from16 v7, v21

    move-object/from16 v9, v18

    move-object/from16 v14, p3

    invoke-virtual/range {v7 .. v16}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionSubQuery(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Set;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 878
    .local v22, smsSubQuery:Ljava/lang/String;
    new-instance v24, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct/range {v24 .. v24}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 880
    .local v24, unionQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    const/4 v5, 0x1

    move-object/from16 v0, v24

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    .line 882
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v19, v5, v6

    .end local v6           #innerMmsProjection:[Ljava/lang/String;
    const/4 v6, 0x1

    aput-object v22, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v24

    move-object v1, v5

    move-object v2, v6

    move-object v3, v7

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionQuery([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 885
    .local v23, unionQuery:Ljava/lang/String;
    new-instance v7, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v7}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 887
    .local v7, outerQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 889
    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v11, "tid"

    const-string v12, "normalized_date = MAX(normalized_date)"

    const/4 v14, 0x0

    move-object/from16 v8, v17

    move-object/from16 v13, p4

    invoke-virtual/range {v7 .. v14}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQuery([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 893
    .local v20, outerQuery:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/telephony/MmsSmsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    sget-object v6, Lcom/android/providers/telephony/MmsSmsProvider;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    move-object v0, v5

    move-object/from16 v1, v20

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    return-object v5
.end method

.method private getDraftThread([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 23
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 797
    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v7, "_id"

    aput-object v7, v6, v5

    const/4 v5, 0x1

    const-string v7, "thread_id"

    aput-object v7, v6, v5

    .line 798
    .local v6, innerProjection:[Ljava/lang/String;
    new-instance v4, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v4}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 799
    .local v4, mmsQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    new-instance v19, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct/range {v19 .. v19}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 801
    .local v19, smsQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v5, "pdu"

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 802
    const-string v5, "sms"

    move-object/from16 v0, v19

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 804
    const-string v5, "transport_type"

    sget-object v7, Lcom/android/providers/telephony/MmsSmsProvider;->MMS_COLUMNS:Ljava/util/Set;

    const/4 v8, 0x1

    const-string v9, "mms"

    const-string v10, "msg_box=3"

    move-object/from16 v0, p2

    move-object v1, v10

    invoke-static {v0, v1}, Lcom/android/providers/telephony/MmsSmsProvider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v11, p3

    invoke-virtual/range {v4 .. v13}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionSubQuery(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Set;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 809
    .local v17, mmsSubQuery:Ljava/lang/String;
    const-string v8, "transport_type"

    sget-object v10, Lcom/android/providers/telephony/MmsSmsProvider;->SMS_COLUMNS:Ljava/util/Set;

    const/4 v11, 0x1

    const-string v12, "sms"

    const-string v5, "type=3"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/android/providers/telephony/MmsSmsProvider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v7, v19

    move-object v9, v6

    move-object/from16 v14, p3

    invoke-virtual/range {v7 .. v16}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionSubQuery(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Set;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 814
    .local v20, smsSubQuery:Ljava/lang/String;
    new-instance v22, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct/range {v22 .. v22}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 816
    .local v22, unionQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    const/4 v5, 0x1

    move-object/from16 v0, v22

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    .line 818
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v17, v5, v6

    .end local v6           #innerProjection:[Ljava/lang/String;
    const/4 v6, 0x1

    aput-object v20, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v22

    move-object v1, v5

    move-object v2, v6

    move-object v3, v7

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionQuery([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 821
    .local v21, unionQuery:Ljava/lang/String;
    new-instance v7, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v7}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 823
    .local v7, outerQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 825
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    move-object/from16 v8, p1

    move-object/from16 v13, p4

    invoke-virtual/range {v7 .. v14}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQuery([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 828
    .local v18, outerQuery:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/telephony/MmsSmsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    sget-object v6, Lcom/android/providers/telephony/MmsSmsProvider;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    move-object v0, v5

    move-object/from16 v1, v18

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    return-object v5
.end method

.method private getFirstLockedMessage([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 23
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 910
    new-instance v4, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v4}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 911
    .local v4, mmsQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    new-instance v19, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct/range {v19 .. v19}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 913
    .local v19, smsQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v5, "pdu"

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 914
    const-string v5, "sms"

    move-object/from16 v0, v19

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 916
    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v7, "_id"

    aput-object v7, v6, v5

    .line 918
    .local v6, idColumn:[Ljava/lang/String;
    const-string v5, "transport_type"

    const/4 v7, 0x0

    const/4 v8, 0x1

    const-string v9, "mms"

    const-string v12, "_id"

    const-string v13, "locked=1"

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    invoke-virtual/range {v4 .. v13}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionSubQuery(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Set;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 924
    .local v18, mmsSubQuery:Ljava/lang/String;
    const-string v8, "transport_type"

    const/4 v10, 0x0

    const/4 v11, 0x1

    const-string v12, "sms"

    const-string v15, "_id"

    const-string v16, "locked=1"

    move-object/from16 v7, v19

    move-object v9, v6

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    invoke-virtual/range {v7 .. v16}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionSubQuery(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Set;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 930
    .local v20, smsSubQuery:Ljava/lang/String;
    new-instance v22, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct/range {v22 .. v22}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 932
    .local v22, unionQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    const/4 v5, 0x1

    move-object/from16 v0, v22

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    .line 934
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v18, v5, v6

    .end local v6           #idColumn:[Ljava/lang/String;
    const/4 v6, 0x1

    aput-object v20, v5, v6

    const/4 v6, 0x0

    const-string v7, "1"

    move-object/from16 v0, v22

    move-object v1, v5

    move-object v2, v6

    move-object v3, v7

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionQuery([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 937
    .local v21, unionQuery:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/telephony/MmsSmsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    sget-object v6, Lcom/android/providers/telephony/MmsSmsProvider;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    move-object v0, v5

    move-object/from16 v1, v21

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 943
    .local v17, cursor:Landroid/database/Cursor;
    return-object v17
.end method

.method private getMessagesByPhoneNumber(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 27
    .parameter "phoneNumber"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 1019
    invoke-static/range {p1 .. p1}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 1020
    .local v21, escapedPhoneNumber:Ljava/lang/String;
    const-string v5, "pdu._id = matching_addresses.address_id"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/android/providers/telephony/MmsSmsProvider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1024
    .local v10, finalMmsSelection:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "(address="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " OR PHONE_NUMBERS_EQUAL(address, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/providers/telephony/MmsSmsProvider;->mUseStrictPhoneNumberComparation:Z

    move v6, v0

    if-eqz v6, :cond_0

    const-string v6, ", 1))"

    :goto_0
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/android/providers/telephony/MmsSmsProvider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 1030
    .local v17, finalSmsSelection:Ljava/lang/String;
    new-instance v4, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v4}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 1031
    .local v4, mmsQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    new-instance v23, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct/range {v23 .. v23}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 1033
    .local v23, smsQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    .line 1034
    const/4 v5, 0x1

    move-object/from16 v0, v23

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    .line 1035
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "pdu, (SELECT _id AS address_id FROM addr WHERE (address="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " OR PHONE_NUMBERS_EQUAL(addr.address, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/providers/telephony/MmsSmsProvider;->mUseStrictPhoneNumberComparation:Z

    move v6, v0

    if-eqz v6, :cond_1

    const-string v6, ", 1))) "

    :goto_1
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "AS matching_addresses"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1043
    const-string v5, "sms"

    move-object/from16 v0, v23

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1045
    invoke-static/range {p2 .. p2}, Lcom/android/providers/telephony/MmsSmsProvider;->handleNullMessageProjection([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 1046
    .local v6, columns:[Ljava/lang/String;
    const-string v5, "transport_type"

    sget-object v7, Lcom/android/providers/telephony/MmsSmsProvider;->MMS_COLUMNS:Ljava/util/Set;

    const/4 v8, 0x0

    const-string v9, "mms"

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v11, p4

    invoke-virtual/range {v4 .. v13}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionSubQuery(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Set;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 1049
    .local v22, mmsSubQuery:Ljava/lang/String;
    const-string v12, "transport_type"

    sget-object v14, Lcom/android/providers/telephony/MmsSmsProvider;->SMS_COLUMNS:Ljava/util/Set;

    const/4 v15, 0x0

    const-string v16, "sms"

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v11, v23

    move-object v13, v6

    move-object/from16 v18, p4

    invoke-virtual/range {v11 .. v20}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionSubQuery(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Set;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 1052
    .local v24, smsSubQuery:Ljava/lang/String;
    new-instance v26, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct/range {v26 .. v26}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 1054
    .local v26, unionQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    const/4 v5, 0x1

    move-object/from16 v0, v26

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    .line 1056
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v22, v5, v6

    .end local v6           #columns:[Ljava/lang/String;
    const/4 v6, 0x1

    aput-object v24, v5, v6

    const/4 v6, 0x0

    move-object/from16 v0, v26

    move-object v1, v5

    move-object/from16 v2, p5

    move-object v3, v6

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionQuery([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 1059
    .local v25, unionQuery:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/telephony/MmsSmsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    sget-object v6, Lcom/android/providers/telephony/MmsSmsProvider;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    move-object v0, v5

    move-object/from16 v1, v25

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    return-object v5

    .line 1024
    .end local v4           #mmsQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    .end local v17           #finalSmsSelection:Ljava/lang/String;
    .end local v22           #mmsSubQuery:Ljava/lang/String;
    .end local v23           #smsQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    .end local v24           #smsSubQuery:Ljava/lang/String;
    .end local v25           #unionQuery:Ljava/lang/String;
    .end local v26           #unionQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    :cond_0
    const-string v6, ", 0))"

    goto/16 :goto_0

    .line 1035
    .restart local v4       #mmsQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    .restart local v17       #finalSmsSelection:Ljava/lang/String;
    .restart local v23       #smsQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    :cond_1
    const-string v6, ", 0))) "

    goto :goto_1
.end method

.method private getSimpleConversations([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    const/4 v5, 0x0

    .line 775
    iget-object v0, p0, Lcom/android/providers/telephony/MmsSmsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "threads"

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, v5

    move-object v7, p4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private getSingleAddressId(Ljava/lang/String;)J
    .locals 18
    .parameter "address"

    .prologue
    .line 553
    invoke-static/range {p1 .. p1}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v11

    .line 554
    .local v11, isEmail:Z
    invoke-static/range {p1 .. p1}, Landroid/provider/Telephony$Mms;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v12

    .line 559
    .local v12, isPhoneNumber:Z
    if-eqz v11, :cond_1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    move-object v13, v2

    .line 561
    .local v13, refinedAddress:Ljava/lang/String;
    :goto_0
    const-string v4, "address=?"

    .line 563
    .local v4, selection:Ljava/lang/String;
    const-wide/16 v14, -0x1

    .line 565
    .local v14, retVal:J
    if-nez v12, :cond_2

    .line 566
    const/4 v2, 0x1

    new-array v5, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v13, v5, v2

    .line 573
    .local v5, selectionArgs:[Ljava/lang/String;
    :goto_1
    const/4 v10, 0x0

    .line 576
    .local v10, cursor:Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/telephony/MmsSmsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    move-object v2, v0

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 577
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "canonical_addresses"

    sget-object v3, Lcom/android/providers/telephony/MmsSmsProvider;->ID_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 581
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_4

    .line 582
    new-instance v9, Landroid/content/ContentValues;

    const/4 v2, 0x1

    invoke-direct {v9, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 583
    .local v9, contentValues:Landroid/content/ContentValues;
    const-string v2, "address"

    invoke-virtual {v9, v2, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/telephony/MmsSmsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    move-object v2, v0

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 586
    const-string v2, "canonical_addresses"

    const-string v3, "address"

    invoke-virtual {v1, v2, v3, v9}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v14

    .line 589
    const-string v2, "MmsSmsProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSingleAddressId: insert new canonical_address for xxxxxx, _id="

    .end local v4           #selection:Ljava/lang/String;
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 599
    if-eqz v10, :cond_0

    .line 600
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_0
    move-wide/from16 v16, v14

    .line 604
    .end local v9           #contentValues:Landroid/content/ContentValues;
    .end local v14           #retVal:J
    .local v16, retVal:J
    :goto_2
    return-wide v16

    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v5           #selectionArgs:[Ljava/lang/String;
    .end local v10           #cursor:Landroid/database/Cursor;
    .end local v13           #refinedAddress:Ljava/lang/String;
    .end local v16           #retVal:J
    :cond_1
    move-object/from16 v13, p1

    .line 559
    goto :goto_0

    .line 568
    .restart local v4       #selection:Ljava/lang/String;
    .restart local v13       #refinedAddress:Ljava/lang/String;
    .restart local v14       #retVal:J
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " OR "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "PHONE_NUMBERS_EQUAL(address, ?, %d)"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    .end local v4           #selection:Ljava/lang/String;
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/providers/telephony/MmsSmsProvider;->mUseStrictPhoneNumberComparation:Z

    move v6, v0

    if-eqz v6, :cond_3

    const/4 v6, 0x1

    :goto_3
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 570
    .restart local v4       #selection:Ljava/lang/String;
    const/4 v2, 0x2

    new-array v5, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v13, v5, v2

    const/4 v2, 0x1

    aput-object v13, v5, v2

    .restart local v5       #selectionArgs:[Ljava/lang/String;
    goto/16 :goto_1

    .line 568
    .end local v4           #selection:Ljava/lang/String;
    .end local v5           #selectionArgs:[Ljava/lang/String;
    :cond_3
    const/4 v6, 0x0

    goto :goto_3

    .line 595
    .restart local v1       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v4       #selection:Ljava/lang/String;
    .restart local v5       #selectionArgs:[Ljava/lang/String;
    .restart local v10       #cursor:Landroid/database/Cursor;
    :cond_4
    :try_start_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 596
    const-string v2, "_id"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v14

    .line 599
    :cond_5
    if-eqz v10, :cond_6

    .line 600
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_6
    move-wide/from16 v16, v14

    .line 604
    .end local v14           #retVal:J
    .restart local v16       #retVal:J
    goto :goto_2

    .line 599
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v4           #selection:Ljava/lang/String;
    .end local v16           #retVal:J
    .restart local v14       #retVal:J
    :catchall_0
    move-exception v2

    if-eqz v10, :cond_7

    .line 600
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v2
.end method

.method private getSortedSet(Ljava/util/Set;)[J
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)[J"
        }
    .end annotation

    .prologue
    .line 630
    .local p1, numbers:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v5

    .line 631
    .local v5, size:I
    new-array v4, v5, [J

    .line 632
    .local v4, result:[J
    const/4 v0, 0x0

    .line 634
    .local v0, i:I
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 635
    .local v3, number:Ljava/lang/Long;
    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .local v1, i:I
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    aput-wide v6, v4, v0

    move v0, v1

    .end local v1           #i:I
    .restart local v0       #i:I
    goto :goto_0

    .line 638
    .end local v3           #number:Ljava/lang/Long;
    :cond_0
    const/4 v6, 0x1

    if-le v5, v6, :cond_1

    .line 639
    invoke-static {v4}, Ljava/util/Arrays;->sort([J)V

    .line 642
    :cond_1
    return-object v4
.end method

.method private getSpaceSeparatedNumbers([J)Ljava/lang/String;
    .locals 5
    .parameter "numbers"

    .prologue
    .line 650
    array-length v2, p1

    .line 651
    .local v2, size:I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 653
    .local v0, buffer:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 654
    if-eqz v1, :cond_0

    .line 655
    const/16 v3, 0x20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 657
    :cond_0
    aget-wide v3, p1, v1

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 653
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 659
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private declared-synchronized getThreadId(Ljava/util/List;)Landroid/database/Cursor;
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/database/Cursor;"
        }
    .end annotation

    .prologue
    .local p1, recipients:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v9, 0x1

    const-string v7, "SELECT _id FROM threads WHERE recipient_ids=?"

    const-string v7, "MmsSmsProvider"

    .line 694
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsProvider;->getAddressIds(Ljava/util/List;)Ljava/util/Set;

    move-result-object v1

    .line 695
    .local v1, addressIds:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    const-string v5, ""

    .line 698
    .local v5, recipientIds:Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v7

    if-ne v7, v9, :cond_0

    .line 699
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 700
    .local v0, addressId:Ljava/lang/Long;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 703
    .end local v0           #addressId:Ljava/lang/Long;
    .end local v4           #i$:Ljava/util/Iterator;
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/providers/telephony/MmsSmsProvider;->getSortedSet(Ljava/util/Set;)[J

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/providers/telephony/MmsSmsProvider;->getSpaceSeparatedNumbers([J)Ljava/lang/String;

    move-result-object v5

    .line 706
    :cond_1
    const-string v7, "MmsSmsProvider"

    const/4 v8, 0x2

    invoke-static {v7, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 707
    const-string v7, "MmsSmsProvider"

    const-string v8, "getThreadId: recipientIds (selectionArgs) =xxxxxxx"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    :cond_2
    const/4 v7, 0x1

    new-array v6, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v5, v6, v7

    .line 712
    .local v6, selectionArgs:[Ljava/lang/String;
    iget-object v7, p0, Lcom/android/providers/telephony/MmsSmsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 713
    .local v3, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v7, "SELECT _id FROM threads WHERE recipient_ids=?"

    invoke-virtual {v3, v7, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 715
    .local v2, cursor:Landroid/database/Cursor;
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-nez v7, :cond_3

    .line 716
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 718
    const-string v7, "MmsSmsProvider"

    const-string v8, "getThreadId: create new thread_id for recipients xxxxxxxx"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    invoke-direct {p0, v5, v7}, Lcom/android/providers/telephony/MmsSmsProvider;->insertThread(Ljava/lang/String;I)V

    .line 722
    iget-object v7, p0, Lcom/android/providers/telephony/MmsSmsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 723
    const-string v7, "SELECT _id FROM threads WHERE recipient_ids=?"

    invoke-virtual {v3, v7, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 726
    :cond_3
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-le v7, v9, :cond_4

    .line 727
    const-string v7, "MmsSmsProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getThreadId: why is cursorCount="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 730
    :cond_4
    monitor-exit p0

    return-object v2

    .line 694
    .end local v1           #addressIds:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    .end local v2           #cursor:Landroid/database/Cursor;
    .end local v3           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v5           #recipientIds:Ljava/lang/String;
    .end local v6           #selectionArgs:[Ljava/lang/String;
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7
.end method

.method private getUndeliveredMessages([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 36
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 1107
    invoke-static/range {p1 .. p1}, Lcom/android/providers/telephony/MmsSmsProvider;->createMmsProjection([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v28

    .line 1109
    .local v28, mmsProjection:[Ljava/lang/String;
    new-instance v4, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v4}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 1110
    .local v4, mmsQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    new-instance v32, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct/range {v32 .. v32}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 1112
    .local v32, smsQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    invoke-static {}, Lcom/android/providers/telephony/MmsSmsProvider;->joinPduAndPendingMsgTables()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1113
    const-string v5, "sms"

    move-object/from16 v0, v32

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1115
    const-string v5, "msg_box = 4"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/android/providers/telephony/MmsSmsProvider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1117
    .local v10, finalMmsSelection:Ljava/lang/String;
    const-string v5, "(type = 4 OR type = 5 OR type = 6)"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/android/providers/telephony/MmsSmsProvider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 1122
    .local v17, finalSmsSelection:Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/android/providers/telephony/MmsSmsProvider;->handleNullMessageProjection([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v31

    .line 1123
    .local v31, smsColumns:[Ljava/lang/String;
    invoke-static/range {v28 .. v28}, Lcom/android/providers/telephony/MmsSmsProvider;->handleNullMessageProjection([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v27

    .line 1124
    .local v27, mmsColumns:[Ljava/lang/String;
    const/16 v5, 0x3e8

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/providers/telephony/MmsSmsProvider;->makeProjectionWithDateAndThreadId([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v6

    .line 1126
    .local v6, innerMmsProjection:[Ljava/lang/String;
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/providers/telephony/MmsSmsProvider;->makeProjectionWithDateAndThreadId([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v26

    .line 1129
    .local v26, innerSmsProjection:[Ljava/lang/String;
    new-instance v7, Ljava/util/HashSet;

    sget-object v5, Lcom/android/providers/telephony/MmsSmsProvider;->MMS_COLUMNS:Ljava/util/Set;

    invoke-direct {v7, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1130
    .local v7, columnsPresentInTable:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const-string v5, "pdu._id"

    invoke-interface {v7, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1131
    const-string v5, "err_type"

    invoke-interface {v7, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1132
    const-string v5, "transport_type"

    const/4 v8, 0x1

    const-string v9, "mms"

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v11, p3

    invoke-virtual/range {v4 .. v13}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionSubQuery(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Set;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 1136
    .local v29, mmsSubQuery:Ljava/lang/String;
    const-string v12, "transport_type"

    sget-object v14, Lcom/android/providers/telephony/MmsSmsProvider;->SMS_COLUMNS:Ljava/util/Set;

    const/4 v15, 0x1

    const-string v16, "sms"

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v11, v32

    move-object/from16 v13, v26

    move-object/from16 v18, p3

    invoke-virtual/range {v11 .. v20}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionSubQuery(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Set;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 1140
    .local v33, smsSubQuery:Ljava/lang/String;
    new-instance v35, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct/range {v35 .. v35}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 1142
    .local v35, unionQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    const/4 v5, 0x1

    move-object/from16 v0, v35

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    .line 1144
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v33, v5, v6

    .end local v6           #innerMmsProjection:[Ljava/lang/String;
    const/4 v6, 0x1

    aput-object v29, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v35

    move-object v1, v5

    move-object v2, v6

    move-object v3, v7

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionQuery([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .end local v7           #columnsPresentInTable:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    move-result-object v34

    .line 1147
    .local v34, unionQuery:Ljava/lang/String;
    new-instance v18, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct/range {v18 .. v18}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 1149
    .local v18, outerQueryBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v18

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1151
    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v25, 0x0

    move-object/from16 v19, v31

    move-object/from16 v24, p4

    invoke-virtual/range {v18 .. v25}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQuery([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 1154
    .local v30, outerQuery:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/telephony/MmsSmsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    sget-object v6, Lcom/android/providers/telephony/MmsSmsProvider;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    move-object v0, v5

    move-object/from16 v1, v30

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    return-object v5
.end method

.method private static handleNullMessageProjection([Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .parameter "projection"

    .prologue
    .line 750
    if-nez p0, :cond_0

    sget-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->UNION_COLUMNS:[Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    move-object v0, p0

    goto :goto_0
.end method

.method private static handleNullSortOrder(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "sortOrder"

    .prologue
    .line 767
    if-nez p0, :cond_0

    const-string v0, "normalized_date ASC"

    :goto_0
    return-object v0

    :cond_0
    move-object v0, p0

    goto :goto_0
.end method

.method private static handleNullThreadsProjection([Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .parameter "projection"

    .prologue
    .line 759
    if-nez p0, :cond_0

    sget-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->THREADS_COLUMNS:[Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    move-object v0, p0

    goto :goto_0
.end method

.method private static initializeColumnSets()V
    .locals 10

    .prologue
    .line 1411
    sget-object v8, Lcom/android/providers/telephony/MmsSmsProvider;->MMS_SMS_COLUMNS:[Ljava/lang/String;

    array-length v1, v8

    .line 1412
    .local v1, commonColumnCount:I
    sget-object v8, Lcom/android/providers/telephony/MmsSmsProvider;->MMS_ONLY_COLUMNS:[Ljava/lang/String;

    array-length v5, v8

    .line 1413
    .local v5, mmsOnlyColumnCount:I
    sget-object v8, Lcom/android/providers/telephony/MmsSmsProvider;->SMS_ONLY_COLUMNS:[Ljava/lang/String;

    array-length v6, v8

    .line 1414
    .local v6, smsOnlyColumnCount:I
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 1416
    .local v7, unionColumns:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 1417
    sget-object v8, Lcom/android/providers/telephony/MmsSmsProvider;->MMS_COLUMNS:Ljava/util/Set;

    sget-object v9, Lcom/android/providers/telephony/MmsSmsProvider;->MMS_SMS_COLUMNS:[Ljava/lang/String;

    aget-object v9, v9, v2

    invoke-interface {v8, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1418
    sget-object v8, Lcom/android/providers/telephony/MmsSmsProvider;->SMS_COLUMNS:Ljava/util/Set;

    sget-object v9, Lcom/android/providers/telephony/MmsSmsProvider;->MMS_SMS_COLUMNS:[Ljava/lang/String;

    aget-object v9, v9, v2

    invoke-interface {v8, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1419
    sget-object v8, Lcom/android/providers/telephony/MmsSmsProvider;->MMS_SMS_COLUMNS:[Ljava/lang/String;

    aget-object v8, v8, v2

    invoke-interface {v7, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1416
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1421
    :cond_0
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v5, :cond_1

    .line 1422
    sget-object v8, Lcom/android/providers/telephony/MmsSmsProvider;->MMS_COLUMNS:Ljava/util/Set;

    sget-object v9, Lcom/android/providers/telephony/MmsSmsProvider;->MMS_ONLY_COLUMNS:[Ljava/lang/String;

    aget-object v9, v9, v2

    invoke-interface {v8, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1423
    sget-object v8, Lcom/android/providers/telephony/MmsSmsProvider;->MMS_ONLY_COLUMNS:[Ljava/lang/String;

    aget-object v8, v8, v2

    invoke-interface {v7, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1421
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1425
    :cond_1
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v6, :cond_2

    .line 1426
    sget-object v8, Lcom/android/providers/telephony/MmsSmsProvider;->SMS_COLUMNS:Ljava/util/Set;

    sget-object v9, Lcom/android/providers/telephony/MmsSmsProvider;->SMS_ONLY_COLUMNS:[Ljava/lang/String;

    aget-object v9, v9, v2

    invoke-interface {v8, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1427
    sget-object v8, Lcom/android/providers/telephony/MmsSmsProvider;->SMS_ONLY_COLUMNS:[Ljava/lang/String;

    aget-object v8, v8, v2

    invoke-interface {v7, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1425
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1430
    :cond_2
    const/4 v2, 0x0

    .line 1431
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1432
    .local v0, columnName:Ljava/lang/String;
    sget-object v8, Lcom/android/providers/telephony/MmsSmsProvider;->UNION_COLUMNS:[Ljava/lang/String;

    add-int/lit8 v3, v2, 0x1

    .end local v2           #i:I
    .local v3, i:I
    aput-object v0, v8, v2

    move v2, v3

    .end local v3           #i:I
    .restart local v2       #i:I
    goto :goto_3

    .line 1434
    .end local v0           #columnName:Ljava/lang/String;
    :cond_3
    return-void
.end method

.method private insertThread(Ljava/lang/String;I)V
    .locals 10
    .parameter "recipientIds"
    .parameter "numberOfRecipients"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 666
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 668
    .local v4, values:Landroid/content/ContentValues;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 669
    .local v0, date:J
    const-string v5, "date"

    const-wide/16 v6, 0x3e8

    rem-long v6, v0, v6

    sub-long v6, v0, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 670
    const-string v5, "recipient_ids"

    invoke-virtual {v4, v5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 672
    if-le p2, v8, :cond_0

    .line 673
    const-string v5, "type"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 675
    :cond_0
    const-string v5, "message_count"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 677
    iget-object v5, p0, Lcom/android/providers/telephony/MmsSmsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    const-string v6, "threads"

    invoke-virtual {v5, v6, v9, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 678
    .local v2, threadId:J
    const-string v5, "MmsSmsProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "insertThread: created new thread_id "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " for recipientIds "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "xxxxxxx"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    invoke-virtual {p0}, Lcom/android/providers/telephony/MmsSmsProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6, v9}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 682
    return-void
.end method

.method private static joinPduAndPendingMsgTables()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1088
    const-string v0, "pdu LEFT JOIN pending_msgs ON pdu._id = pending_msgs.msg_id"

    return-object v0
.end method

.method private makeProjectionWithDateAndThreadId([Ljava/lang/String;I)[Ljava/lang/String;
    .locals 6
    .parameter "projection"
    .parameter "dateMultiple"

    .prologue
    .line 966
    array-length v1, p1

    .line 967
    .local v1, projectionSize:I
    add-int/lit8 v3, v1, 0x2

    new-array v2, v3, [Ljava/lang/String;

    .line 969
    .local v2, result:[Ljava/lang/String;
    const/4 v3, 0x0

    const-string v4, "thread_id AS tid"

    aput-object v4, v2, v3

    .line 970
    const/4 v3, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "date * "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AS normalized_date"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 971
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 972
    add-int/lit8 v3, v0, 0x2

    aget-object v4, p1, v0

    aput-object v4, v2, v3

    .line 971
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 974
    :cond_0
    return-object v2
.end method

.method private static makeProjectionWithNormalizedDate([Ljava/lang/String;I)[Ljava/lang/String;
    .locals 7
    .parameter "projection"
    .parameter "dateMultiple"

    .prologue
    .line 1163
    array-length v2, p0

    .line 1164
    .local v2, projectionSize:I
    new-instance v3, Ljava/util/ArrayList;

    add-int/lit8 v5, v2, 0x1

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 1166
    .local v3, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "date * "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " AS normalized_date"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1167
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 1168
    aget-object v1, p0, v0

    .line 1169
    .local v1, p:Ljava/lang/String;
    const-string v5, "count(*)"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1170
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1167
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1173
    .end local v1           #p:Ljava/lang/String;
    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v4, v5, [Ljava/lang/String;

    .line 1174
    .local v4, strs:[Ljava/lang/String;
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1175
    return-object v4
.end method

.method private updateConversation(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 5
    .parameter "threadIdString"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 1393
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1399
    iget-object v3, p0, Lcom/android/providers/telephony/MmsSmsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1400
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "thread_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p3, v3}, Lcom/android/providers/telephony/MmsSmsProvider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1401
    .local v2, finalSelection:Ljava/lang/String;
    const-string v3, "pdu"

    invoke-virtual {v0, v3, p2, v2, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    const-string v4, "sms"

    invoke-virtual {v0, v4, p2, v2, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v2           #finalSelection:Ljava/lang/String;
    :goto_0
    return v3

    .line 1394
    :catch_0
    move-exception v1

    .line 1395
    .local v1, exception:Ljava/lang/NumberFormatException;
    const-string v3, "MmsSmsProvider"

    const-string v4, "Thread ID must be a Long."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1396
    const/4 v3, 0x0

    goto :goto_0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 22
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 1234
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/telephony/MmsSmsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    .line 1235
    .local v5, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/telephony/MmsSmsProvider;->getContext()Landroid/content/Context;

    move-result-object v14

    .line 1236
    .local v14, context:Landroid/content/Context;
    const/4 v13, 0x0

    .line 1238
    .local v13, affectedRows:I
    sget-object v6, Lcom/android/providers/telephony/MmsSmsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    move-object v0, v6

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    .line 1300
    new-instance v6, Ljava/lang/UnsupportedOperationException;

    const-string v7, "MmsSmsProvider does not support deletes, inserts, or updates for this URI."

    invoke-direct {v6, v7}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1242
    :sswitch_0
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v18

    .line 1247
    .local v18, threadId:J
    invoke-direct/range {p0 .. p3}, Lcom/android/providers/telephony/MmsSmsProvider;->deleteConversation(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v13

    .line 1248
    const-string v6, "MmsSmsProvider"

    const-string v7, "Removed thread %d"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1249
    move-object v0, v14

    move-object v1, v5

    move-wide/from16 v2, v18

    invoke-static {v0, v1, v2, v3}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->updateThread(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 1303
    .end local v18           #threadId:J
    :cond_0
    :goto_0
    if-lez v13, :cond_1

    .line 1304
    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const/4 v7, 0x0

    move-object v0, v6

    move-object/from16 v1, p1

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1306
    :cond_1
    return v13

    .line 1243
    :catch_0
    move-exception v6

    move-object/from16 v16, v6

    .line 1244
    .local v16, e:Ljava/lang/NumberFormatException;
    const-string v6, "MmsSmsProvider"

    const-string v7, "Thread ID must be a long."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1252
    .end local v16           #e:Ljava/lang/NumberFormatException;
    :sswitch_1
    new-instance v20, Ljava/util/HashSet;

    invoke-direct/range {v20 .. v20}, Ljava/util/HashSet;-><init>()V

    .line 1253
    .local v20, threadIds:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    const-string v6, "pdu"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "thread_id"

    aput-object v9, v7, v8

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 1255
    .local v15, cursor:Landroid/database/Cursor;
    if-eqz v15, :cond_3

    .line 1257
    :goto_1
    :try_start_1
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1258
    const/4 v6, 0x0

    invoke-interface {v15, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v20

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1261
    :catchall_0
    move-exception v6

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    throw v6

    :cond_2
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 1265
    :cond_3
    const-string v6, "sms"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "thread_id"

    aput-object v9, v7, v8

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 1268
    if-eqz v15, :cond_5

    .line 1270
    :goto_2
    :try_start_2
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1271
    const/4 v6, 0x0

    invoke-interface {v15, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v20

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    .line 1274
    :catchall_1
    move-exception v6

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    throw v6

    :cond_4
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 1278
    :cond_5
    move-object v0, v14

    move-object v1, v5

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p1

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/providers/telephony/MmsProvider;->deleteMessages(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Landroid/net/Uri;)I

    move-result v6

    const-string v7, "sms"

    move-object v0, v5

    move-object v1, v7

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    add-int v13, v6, v7

    .line 1282
    if-eqz v13, :cond_0

    .line 1283
    invoke-virtual/range {v20 .. v20}, Ljava/util/HashSet;->size()I

    move-result v6

    const/16 v7, 0x14

    if-ge v6, v7, :cond_6

    .line 1284
    const-string v6, "MmsSmsProvider"

    const-string v7, "Removed threads %s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v20, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1289
    :goto_3
    invoke-virtual/range {v20 .. v20}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Integer;

    .line 1290
    .local v21, tid:Ljava/lang/Integer;
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v6

    int-to-long v6, v6

    invoke-static {v14, v5, v6, v7}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->updateThread(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;J)V

    goto :goto_4

    .line 1286
    .end local v17           #i$:Ljava/util/Iterator;
    .end local v21           #tid:Ljava/lang/Integer;
    :cond_6
    const-string v6, "MmsSmsProvider"

    const-string v7, "Removed %d threads"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1292
    .restart local v17       #i$:Ljava/util/Iterator;
    :cond_7
    invoke-static {v14, v5}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->deleteObsoleteThreads(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)I

    goto/16 :goto_0

    .line 1297
    .end local v15           #cursor:Landroid/database/Cursor;
    .end local v17           #i$:Ljava/util/Iterator;
    .end local v20           #threadIds:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    :sswitch_2
    invoke-static {v14, v5}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->deleteObsoleteThreads(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)I

    move-result v13

    .line 1298
    goto/16 :goto_0

    .line 1238
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_0
        0xb -> :sswitch_2
    .end sparse-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .parameter "uri"

    .prologue
    .line 1228
    const-string v0, "vnd.android-dir/mms-sms"

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 2
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 1324
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "MmsSmsProvider does not support deletes, inserts, or updates for this URI."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreate()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 287
    invoke-virtual {p0}, Lcom/android/providers/telephony/MmsSmsProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/android/providers/telephony/MmsSmsDatabaseHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/telephony/MmsSmsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 288
    invoke-virtual {p0}, Lcom/android/providers/telephony/MmsSmsProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/telephony/MmsSmsProvider;->mContext:Landroid/content/Context;

    .line 289
    iput-boolean v1, p0, Lcom/android/providers/telephony/MmsSmsProvider;->mUseStrictPhoneNumberComparation:Z

    .line 290
    return v1
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 36
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 297
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/telephony/MmsSmsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    .line 298
    .local v5, db:Landroid/database/sqlite/SQLiteDatabase;
    const/16 v17, 0x0

    .line 299
    .local v17, cursor:Landroid/database/Cursor;
    sget-object v6, Lcom/android/providers/telephony/MmsSmsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    move-object v0, v6

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v35

    .line 301
    .local v35, uriMatch:I
    sparse-switch v35, :sswitch_data_0

    .line 542
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unrecognized URI:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 303
    :sswitch_0
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/providers/telephony/MmsSmsProvider;->getCompleteConversations([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 545
    .end local v5           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local p2
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/telephony/MmsSmsProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    move-object/from16 v0, v17

    move-object v1, v6

    move-object/from16 v2, p1

    invoke-interface {v0, v1, v2}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    move-object/from16 v6, v17

    .line 546
    :goto_1
    return-object v6

    .line 307
    .restart local v5       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local p2
    :sswitch_1
    const-string v6, "simple"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 308
    .local v29, simple:Ljava/lang/String;
    if-eqz v29, :cond_1

    const-string v6, "true"

    move-object/from16 v0, v29

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 309
    const-string v6, "thread_type"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    .line 310
    .local v34, threadType:Ljava/lang/String;
    invoke-static/range {v34 .. v34}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 311
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "type="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p3

    move-object v1, v6

    invoke-static {v0, v1}, Lcom/android/providers/telephony/MmsSmsProvider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 314
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/providers/telephony/MmsSmsProvider;->getSimpleConversations([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 316
    goto :goto_0

    .line 317
    .end local v34           #threadType:Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/providers/telephony/MmsSmsProvider;->getConversations([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 320
    goto :goto_0

    .line 322
    .end local v29           #simple:Ljava/lang/String;
    :sswitch_2
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const/4 v11, 0x0

    move-object/from16 v5, p0

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    invoke-direct/range {v5 .. v11}, Lcom/android/providers/telephony/MmsSmsProvider;->getConversationMessages(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .end local v5           #db:Landroid/database/sqlite/SQLiteDatabase;
    move-result-object v17

    .line 325
    goto/16 :goto_0

    .line 328
    .restart local v5       #db:Landroid/database/sqlite/SQLiteDatabase;
    :sswitch_3
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v11, "normalized_date"

    move-object/from16 v5, p0

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    invoke-direct/range {v5 .. v11}, Lcom/android/providers/telephony/MmsSmsProvider;->getConversationMessages(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .end local v5           #db:Landroid/database/sqlite/SQLiteDatabase;
    move-result-object v17

    .line 331
    goto/16 :goto_0

    .line 333
    .restart local v5       #db:Landroid/database/sqlite/SQLiteDatabase;
    :sswitch_4
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object/from16 v5, p0

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    invoke-direct/range {v5 .. v10}, Lcom/android/providers/telephony/MmsSmsProvider;->getConversationById(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .end local v5           #db:Landroid/database/sqlite/SQLiteDatabase;
    move-result-object v17

    .line 336
    goto/16 :goto_0

    .line 338
    .restart local v5       #db:Landroid/database/sqlite/SQLiteDatabase;
    :sswitch_5
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object/from16 v5, p0

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    invoke-direct/range {v5 .. v10}, Lcom/android/providers/telephony/MmsSmsProvider;->getConversationById(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .end local v5           #db:Landroid/database/sqlite/SQLiteDatabase;
    move-result-object v17

    .line 341
    goto/16 :goto_0

    .line 343
    .restart local v5       #db:Landroid/database/sqlite/SQLiteDatabase;
    :sswitch_6
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x2

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object/from16 v5, p0

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    invoke-direct/range {v5 .. v10}, Lcom/android/providers/telephony/MmsSmsProvider;->getMessagesByPhoneNumber(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .end local v5           #db:Landroid/database/sqlite/SQLiteDatabase;
    move-result-object v17

    .line 346
    goto/16 :goto_0

    .line 348
    .restart local v5       #db:Landroid/database/sqlite/SQLiteDatabase;
    :sswitch_7
    const-string v6, "recipient"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v27

    .line 350
    .local v27, recipients:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/providers/telephony/MmsSmsProvider;->getThreadId(Ljava/util/List;)Landroid/database/Cursor;

    move-result-object v17

    .line 351
    goto/16 :goto_0

    .line 353
    .end local v27           #recipients:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_8
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v7

    const/4 v8, 0x1

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    .end local p2
    check-cast p2, Ljava/lang/String;

    move-object v0, v6

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 354
    .local v20, extraSelection:Ljava/lang/String;
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    move-object/from16 v8, v20

    .line 356
    .local v8, finalSelection:Ljava/lang/String;
    :goto_2
    const-string v6, "canonical_addresses"

    sget-object v7, Lcom/android/providers/telephony/MmsSmsProvider;->CANONICAL_ADDRESSES_COLUMNS_1:[Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v9, p4

    move-object/from16 v12, p5

    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 362
    goto/16 :goto_0

    .line 354
    .end local v8           #finalSelection:Ljava/lang/String;
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v6

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " AND "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v8, v6

    goto :goto_2

    .line 365
    .end local v20           #extraSelection:Ljava/lang/String;
    .restart local p2
    :sswitch_9
    const-string v10, "canonical_addresses"

    sget-object v11, Lcom/android/providers/telephony/MmsSmsProvider;->CANONICAL_ADDRESSES_COLUMNS_2:[Ljava/lang/String;

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v9, v5

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    move-object/from16 v16, p5

    invoke-virtual/range {v9 .. v16}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 371
    goto/16 :goto_0

    .line 374
    :sswitch_a
    if-nez p5, :cond_3

    if-eqz p2, :cond_4

    .line 375
    :cond_3
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "do not specify sortOrder, selection, selectionArgs, or projectionwith this query"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 380
    :cond_4
    const-string v6, "pattern"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 382
    .local v28, searchString:Ljava/lang/String;
    invoke-static/range {v28 .. v28}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 383
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 386
    :cond_5
    const-string v30, "sms._id as _id, thread_id, sms.thread_id AS suggest_intent_data_id, sms._id AS suggest_intent_extra_data, sms.address AS suggest_text_1, sms.body AS suggest_text_2, date AS normalized_date"

    .line 393
    .local v30, smsProjection:Ljava/lang/String;
    const-string v21, "pdu._id as _id, thread_id, pdu.thread_id AS suggest_intent_data_id, pdu._id AS suggest_intent_extra_data, addr.address AS suggest_text_1, part.text AS suggest_text_2, date * 1000 AS normalized_date"

    .line 400
    .local v21, mmsProjection:Ljava/lang/String;
    const-string v6, "SELECT %s FROM sms WHERE (sms.body LIKE ?)"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v30, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v31

    .line 404
    .local v31, smsQuery:Ljava/lang/String;
    const-string v6, "SELECT %s FROM pdu, part, addr WHERE ((part.mid = pdu._id) AND (addr.msg_id=pdu._id) AND (addr.type=%d) AND (part.ct=\'text/plain\') AND (part.text LIKE ?))"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v21, v7, v8

    const/4 v8, 0x1

    const/16 v9, 0x97

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    .line 414
    .local v22, mmsQuery:Ljava/lang/String;
    const-string v6, "%s UNION %s GROUP BY %s ORDER BY %s"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v31, v7, v8

    const/4 v8, 0x1

    aput-object v22, v7, v8

    const/4 v8, 0x2

    const-string v9, "thread_id"

    aput-object v9, v7, v8

    const/4 v8, 0x3

    const-string v9, "thread_id ASC, normalized_date DESC"

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    .line 422
    .local v26, rawQuery:Ljava/lang/String;
    :try_start_0
    const-string v6, "%%%s%%"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v28, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    .line 423
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v28, v6, v7

    const/4 v7, 0x1

    aput-object v28, v6, v7

    move-object v0, v5

    move-object/from16 v1, v26

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v17

    goto/16 :goto_0

    .line 426
    :catch_0
    move-exception v6

    move-object/from16 v19, v6

    .line 427
    .local v19, ex:Ljava/lang/Exception;
    const-string v6, "MmsSmsProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "got exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 432
    .end local v19           #ex:Ljava/lang/Exception;
    .end local v21           #mmsProjection:Ljava/lang/String;
    .end local v22           #mmsQuery:Ljava/lang/String;
    .end local v26           #rawQuery:Ljava/lang/String;
    .end local v28           #searchString:Ljava/lang/String;
    .end local v30           #smsProjection:Ljava/lang/String;
    .end local v31           #smsQuery:Ljava/lang/String;
    :sswitch_b
    const-string v6, "protocol"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 433
    .local v25, protoName:Ljava/lang/String;
    const-string v6, "message"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 434
    .local v23, msgId:Ljava/lang/String;
    invoke-static/range {v25 .. v25}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/4 v6, -0x1

    move/from16 v24, v6

    .line 437
    .local v24, proto:I
    :goto_3
    const/4 v6, -0x1

    move/from16 v0, v24

    move v1, v6

    if-eq v0, v1, :cond_9

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "proto_type="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v20, v6

    .line 439
    .restart local v20       #extraSelection:Ljava/lang/String;
    :goto_4
    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 440
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v6

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " AND msg_id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 443
    :cond_6
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_a

    move-object/from16 v8, v20

    .line 445
    .restart local v8       #finalSelection:Ljava/lang/String;
    :goto_5
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_b

    const-string v6, "due_time"

    move-object v12, v6

    .line 447
    .local v12, finalOrder:Ljava/lang/String;
    :goto_6
    const-string v6, "pending_msgs"

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v9, p4

    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 449
    goto/16 :goto_0

    .line 434
    .end local v8           #finalSelection:Ljava/lang/String;
    .end local v12           #finalOrder:Ljava/lang/String;
    .end local v20           #extraSelection:Ljava/lang/String;
    .end local v24           #proto:I
    :cond_7
    const-string v6, "sms"

    move-object/from16 v0, v25

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    const/4 v6, 0x0

    move/from16 v24, v6

    goto :goto_3

    :cond_8
    const/4 v6, 0x1

    move/from16 v24, v6

    goto :goto_3

    .line 437
    .restart local v24       #proto:I
    :cond_9
    const-string v6, " 0=0 "

    move-object/from16 v20, v6

    goto :goto_4

    .line 443
    .restart local v20       #extraSelection:Ljava/lang/String;
    :cond_a
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") AND "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v8, v6

    goto :goto_5

    .restart local v8       #finalSelection:Ljava/lang/String;
    :cond_b
    move-object/from16 v12, p5

    .line 445
    goto :goto_6

    .line 452
    .end local v8           #finalSelection:Ljava/lang/String;
    .end local v20           #extraSelection:Ljava/lang/String;
    .end local v23           #msgId:Ljava/lang/String;
    .end local v24           #proto:I
    .end local v25           #protoName:Ljava/lang/String;
    :sswitch_c
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/providers/telephony/MmsSmsProvider;->getUndeliveredMessages([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 454
    goto/16 :goto_0

    .line 457
    :sswitch_d
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/providers/telephony/MmsSmsProvider;->getDraftThread([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 458
    goto/16 :goto_0

    .line 463
    :sswitch_e
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v32

    .line 468
    .local v32, threadId:J
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "thread_id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object v2, v6

    move-object v3, v7

    move-object/from16 v4, p5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/providers/telephony/MmsSmsProvider;->getFirstLockedMessage([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 470
    goto/16 :goto_0

    .line 464
    .end local v32           #threadId:J
    :catch_1
    move-exception v6

    move-object/from16 v18, v6

    .line 465
    .local v18, e:Ljava/lang/NumberFormatException;
    const-string v6, "MmsSmsProvider"

    const-string v7, "Thread ID must be a long."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 473
    .end local v18           #e:Ljava/lang/NumberFormatException;
    :sswitch_f
    const-string v6, "SELECT SUM(unread_count) FROM threads where read = 0"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 476
    goto/16 :goto_0

    .line 479
    :sswitch_10
    const-string v6, "SELECT COUNT(*), SUM(message_count) FROM threads"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 482
    goto/16 :goto_0

    .line 485
    :sswitch_11
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/providers/telephony/MmsSmsProvider;->getFirstLockedMessage([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 487
    goto/16 :goto_0

    .line 490
    :sswitch_12
    const-string v30, "sms._id as _id,address,date,type,body,error_code,thread_id"

    .line 491
    .restart local v30       #smsProjection:Ljava/lang/String;
    const-string v21, "pdu._id as _id,address,date * 1000,m_type,sub,sub_cs,thread_id"

    .line 494
    .restart local v21       #mmsProjection:Ljava/lang/String;
    const-string v6, "SELECT %s FROM sms WHERE type=%d AND seen=0"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v30, v7, v8

    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v31

    .line 500
    .restart local v31       #smsQuery:Ljava/lang/String;
    const-string v6, "SELECT %s FROM pdu,addr WHERE (seen=0) AND (addr.msg_id=pdu._id) AND (addr.type=%d) AND (pdu.msg_box=%d)"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v21, v7, v8

    const/4 v8, 0x1

    const/16 v9, 0x89

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    .line 511
    .restart local v22       #mmsQuery:Ljava/lang/String;
    const-string v6, "%s UNION %s ORDER BY %s"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v31, v7, v8

    const/4 v8, 0x1

    aput-object v22, v7, v8

    const/4 v8, 0x2

    const-string v9, "date DESC"

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    .line 517
    .restart local v26       #rawQuery:Ljava/lang/String;
    :try_start_2
    move-object v0, v5

    move-object/from16 v1, v26

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v17

    goto/16 :goto_0

    .line 518
    :catch_2
    move-exception v19

    .line 519
    .restart local v19       #ex:Ljava/lang/Exception;
    const-string v6, "MmsSmsProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "got exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 524
    .end local v19           #ex:Ljava/lang/Exception;
    .end local v21           #mmsProjection:Ljava/lang/String;
    .end local v22           #mmsQuery:Ljava/lang/String;
    .end local v26           #rawQuery:Ljava/lang/String;
    .end local v30           #smsProjection:Ljava/lang/String;
    .end local v31           #smsQuery:Ljava/lang/String;
    :sswitch_13
    const-string v6, "locked = 1"

    move-object/from16 v0, p3

    move-object v1, v6

    invoke-static {v0, v1}, Lcom/android/providers/telephony/MmsSmsProvider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 525
    .restart local v8       #finalSelection:Ljava/lang/String;
    const-string v6, "normalized_date DESC"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object v2, v8

    move-object/from16 v3, p4

    move-object v4, v6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/providers/telephony/MmsSmsProvider;->getCompleteConversations([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 527
    goto/16 :goto_0

    .line 530
    .end local v8           #finalSelection:Ljava/lang/String;
    :sswitch_14
    const-string v26, "SELECT address,date FROM threads JOIN canonical_addresses ON recipient_ids = canonical_addresses._id ORDER BY date DESC LIMIT 50"

    .line 535
    .restart local v26       #rawQuery:Ljava/lang/String;
    const/4 v6, 0x0

    :try_start_3
    move-object v0, v5

    move-object/from16 v1, v26

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v17

    goto/16 :goto_0

    .line 536
    :catch_3
    move-exception v19

    .line 537
    .restart local v19       #ex:Ljava/lang/Exception;
    const-string v6, "MmsSmsProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "got exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 301
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_2
        0x2 -> :sswitch_4
        0x3 -> :sswitch_6
        0x4 -> :sswitch_7
        0x5 -> :sswitch_8
        0x6 -> :sswitch_b
        0x7 -> :sswitch_0
        0x8 -> :sswitch_c
        0x9 -> :sswitch_5
        0xc -> :sswitch_d
        0xd -> :sswitch_9
        0xe -> :sswitch_a
        0xf -> :sswitch_a
        0x10 -> :sswitch_11
        0x11 -> :sswitch_e
        0x12 -> :sswitch_13
        0x64 -> :sswitch_12
        0x67 -> :sswitch_f
        0x68 -> :sswitch_10
        0x69 -> :sswitch_3
        0x6a -> :sswitch_14
    .end sparse-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    const-string v3, "_id="

    const-string v7, "MmsSmsProvider"

    .line 1331
    const-string v0, "read"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 1332
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v4, :cond_0

    .line 1333
    const-string v1, "seen"

    invoke-virtual {p2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1336
    :cond_0
    iget-object v0, p0, Lcom/android/providers/telephony/MmsSmsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 1338
    sget-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 1378
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "MmsSmsProvider does not support deletes, inserts, or updates for this URI."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1340
    :sswitch_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1341
    invoke-direct {p0, v0, p2, p3, p4}, Lcom/android/providers/telephony/MmsSmsProvider;->updateConversation(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 1382
    :goto_0
    if-lez v0, :cond_1

    .line 1383
    invoke-virtual {p0}, Lcom/android/providers/telephony/MmsSmsProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p1, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1386
    :cond_1
    return v0

    .line 1346
    :sswitch_1
    const-string v0, "pending_msgs"

    invoke-virtual {v1, v0, p2, p3, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 1350
    :sswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1351
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1354
    :goto_1
    const-string v2, "canonical_addresses"

    invoke-virtual {v1, v2, p2, v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 1351
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " AND "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1358
    :sswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1359
    const-string v2, "threads"

    invoke-virtual {v1, v2, p2, v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 1363
    :sswitch_4
    const-string v0, "simple"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1364
    if-eqz v0, :cond_3

    const-string v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1365
    const-string v0, "threads"

    invoke-virtual {v1, v0, p2, p3, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 1366
    const-string v1, "MmsSmsProvider"

    const-string v1, "update %d conversations uri=%s, selection=%s, values=%s"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    aput-object p1, v2, v4

    const/4 v3, 0x2

    aput-object p3, v2, v3

    const/4 v3, 0x3

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1369
    :cond_3
    const-string v0, "MmsSmsProvider"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unsupported uri"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v6

    .line 1371
    goto/16 :goto_0

    :sswitch_5
    move v0, v6

    .line 1375
    goto/16 :goto_0

    .line 1338
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_4
        0x1 -> :sswitch_0
        0x5 -> :sswitch_2
        0x6 -> :sswitch_1
        0x65 -> :sswitch_3
        0x66 -> :sswitch_5
    .end sparse-switch
.end method
