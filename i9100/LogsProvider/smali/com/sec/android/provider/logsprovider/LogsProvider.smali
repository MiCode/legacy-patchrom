.class public Lcom/sec/android/provider/logsprovider/LogsProvider;
.super Landroid/content/ContentProvider;
.source "LogsProvider.java"

# interfaces
.implements Landroid/accounts/OnAccountsUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/provider/logsprovider/LogsProvider$DatabaseHelper;
    }
.end annotation


# static fields
.field private static final SNS_GET_MSG_RECEIVERS:Landroid/net/Uri;

.field private static final SNS_GET_THREADMSG_RECEIVERS:Landroid/net/Uri;

.field private static final TAG:Ljava/lang/String;

.field private static final sDurationProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sIdSearchProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sLogsProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sSevenAccountType:[Ljava/lang/String;

.field private static final sSnsAccountType:[Ljava/lang/String;

.field private static final sURIMatcher:Landroid/content/UriMatcher;


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mDb:Landroid/database/sqlite/SQLiteDatabase;

.field private mDbHelper:Lcom/sec/android/provider/logsprovider/LogsProvider$DatabaseHelper;

.field private mLogInserter:Landroid/database/DatabaseUtils$InsertHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const-string v7, "account_name"

    const-string v6, "account_id"

    const-string v5, "duration"

    const-string v4, "_id"

    const-string v3, "logs"

    .line 46
    const-class v0, Lcom/sec/android/provider/logsprovider/LogsProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    .line 199
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sURIMatcher:Landroid/content/UriMatcher;

    .line 201
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "logs"

    const-string v1, "historys"

    const/4 v2, 0x1

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 202
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "logs"

    const-string v1, "historys/#"

    const/4 v2, 0x2

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 204
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "logs"

    const-string v1, "call"

    const/16 v2, 0x14

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 205
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "logs"

    const-string v1, "allcalls"

    const/16 v2, 0x16

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 206
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "logs"

    const-string v1, "call/#"

    const/4 v2, 0x4

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 207
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "logs"

    const-string v1, "call/frequent"

    const/16 v2, 0xf

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 208
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "logs"

    const-string v1, "call/del"

    const/16 v2, 0x1a

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 209
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "logs"

    const-string v1, "call/search_log"

    const/16 v2, 0x1f

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 211
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "logs"

    const/16 v2, 0x9

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 212
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "logs"

    const/4 v2, 0x7

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 213
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "logs"

    const-string v1, "email"

    const/16 v2, 0xb

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 214
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "logs"

    const-string v1, "email_seven"

    const/16 v2, 0x13

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 215
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "logs"

    const-string v1, "video_call"

    const/16 v2, 0xd

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 216
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "logs"

    const-string v1, "voip"

    const/16 v2, 0xe

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 218
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "logs"

    const-string v1, "sns"

    const/16 v2, 0x15

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 219
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "logs"

    const-string v1, "im"

    const/16 v2, 0x17

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 220
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "logs"

    const-string v1, "sns_msg_receiver_map"

    const/16 v2, 0x20

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 222
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "logs"

    const-string v1, "search_log"

    const/16 v2, 0x21

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 223
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "logs"

    const-string v1, "msg/receiver/#/*"

    const/16 v2, 0x19

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 224
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "logs"

    const-string v1, "duration"

    const/16 v1, 0x22

    invoke-virtual {v0, v3, v5, v1}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 225
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "logs"

    const-string v1, "addcall"

    const/16 v2, 0x23

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 232
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sLogsProjectionMap:Ljava/util/HashMap;

    .line 233
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sLogsProjectionMap:Ljava/util/HashMap;

    const-string v1, "_id"

    const-string v1, "_id"

    invoke-virtual {v0, v4, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sLogsProjectionMap:Ljava/util/HashMap;

    const-string v1, "number"

    const-string v2, "number"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sLogsProjectionMap:Ljava/util/HashMap;

    const-string v1, "address"

    const-string v2, "address"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sLogsProjectionMap:Ljava/util/HashMap;

    const-string v1, "date"

    const-string v2, "date"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sLogsProjectionMap:Ljava/util/HashMap;

    const-string v1, "duration"

    const-string v1, "duration"

    invoke-virtual {v0, v5, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sLogsProjectionMap:Ljava/util/HashMap;

    const-string v1, "type"

    const-string v2, "type"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sLogsProjectionMap:Ljava/util/HashMap;

    const-string v1, "new"

    const-string v2, "new"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sLogsProjectionMap:Ljava/util/HashMap;

    const-string v1, "name"

    const-string v2, "name"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sLogsProjectionMap:Ljava/util/HashMap;

    const-string v1, "name_reversed"

    const-string v2, "name_reversed"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sLogsProjectionMap:Ljava/util/HashMap;

    const-string v1, "numbertype"

    const-string v2, "numbertype"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sLogsProjectionMap:Ljava/util/HashMap;

    const-string v1, "numberlabel"

    const-string v2, "numberlabel"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sLogsProjectionMap:Ljava/util/HashMap;

    const-string v1, "logtype"

    const-string v2, "logtype"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sLogsProjectionMap:Ljava/util/HashMap;

    const-string v1, "frequent"

    const-string v2, "frequent"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sLogsProjectionMap:Ljava/util/HashMap;

    const-string v1, "contactid"

    const-string v2, "contactid"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sLogsProjectionMap:Ljava/util/HashMap;

    const-string v1, "raw_contact_id"

    const-string v2, "raw_contact_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sLogsProjectionMap:Ljava/util/HashMap;

    const-string v1, "m_subject"

    const-string v2, "m_subject"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sLogsProjectionMap:Ljava/util/HashMap;

    const-string v1, "m_content"

    const-string v2, "m_content"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sLogsProjectionMap:Ljava/util/HashMap;

    const-string v1, "sns_tid"

    const-string v2, "sns_tid"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sLogsProjectionMap:Ljava/util/HashMap;

    const-string v1, "sp_type"

    const-string v2, "sp_type"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sLogsProjectionMap:Ljava/util/HashMap;

    const-string v1, "sns_pkey"

    const-string v2, "sns_pkey"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sLogsProjectionMap:Ljava/util/HashMap;

    const-string v1, "account_name"

    const-string v1, "account_name"

    invoke-virtual {v0, v7, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sLogsProjectionMap:Ljava/util/HashMap;

    const-string v1, "account_id"

    const-string v1, "account_id"

    invoke-virtual {v0, v6, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sLogsProjectionMap:Ljava/util/HashMap;

    const-string v1, "sns_receiver_count"

    const-string v2, "sns_receiver_count"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sLogsProjectionMap:Ljava/util/HashMap;

    const-string v1, "cnap_name"

    const-string v2, "cnap_name"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sLogsProjectionMap:Ljava/util/HashMap;

    const-string v1, "cdnip_number"

    const-string v2, "cdnip_number"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sLogsProjectionMap:Ljava/util/HashMap;

    const-string v1, "service_type"

    const-string v2, "service_type"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sLogsProjectionMap:Ljava/util/HashMap;

    const-string v1, "cityid"

    const-string v2, "cityid"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sIdSearchProjectionMap:Ljava/util/HashMap;

    .line 268
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sIdSearchProjectionMap:Ljava/util/HashMap;

    const-string v1, "_id"

    const-string v1, "logs._id AS _id"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sIdSearchProjectionMap:Ljava/util/HashMap;

    const-string v1, "number"

    const-string v2, "number"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sIdSearchProjectionMap:Ljava/util/HashMap;

    const-string v1, "address"

    const-string v2, "address"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sIdSearchProjectionMap:Ljava/util/HashMap;

    const-string v1, "date"

    const-string v2, "date"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sIdSearchProjectionMap:Ljava/util/HashMap;

    const-string v1, "duration"

    const-string v1, "duration"

    invoke-virtual {v0, v5, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sIdSearchProjectionMap:Ljava/util/HashMap;

    const-string v1, "type"

    const-string v2, "type"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sIdSearchProjectionMap:Ljava/util/HashMap;

    const-string v1, "new"

    const-string v2, "new"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sIdSearchProjectionMap:Ljava/util/HashMap;

    const-string v1, "name"

    const-string v2, "name"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sIdSearchProjectionMap:Ljava/util/HashMap;

    const-string v1, "name_reversed"

    const-string v2, "name_reversed"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sIdSearchProjectionMap:Ljava/util/HashMap;

    const-string v1, "numbertype"

    const-string v2, "numbertype"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sIdSearchProjectionMap:Ljava/util/HashMap;

    const-string v1, "numberlabel"

    const-string v2, "numberlabel"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sIdSearchProjectionMap:Ljava/util/HashMap;

    const-string v1, "logtype"

    const-string v2, "logtype"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sIdSearchProjectionMap:Ljava/util/HashMap;

    const-string v1, "frequent"

    const-string v2, "frequent"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sIdSearchProjectionMap:Ljava/util/HashMap;

    const-string v1, "contactid"

    const-string v2, "contactid"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sIdSearchProjectionMap:Ljava/util/HashMap;

    const-string v1, "raw_contact_id"

    const-string v2, "raw_contact_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sIdSearchProjectionMap:Ljava/util/HashMap;

    const-string v1, "m_subject"

    const-string v2, "m_subject"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sIdSearchProjectionMap:Ljava/util/HashMap;

    const-string v1, "m_content"

    const-string v2, "m_content"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sIdSearchProjectionMap:Ljava/util/HashMap;

    const-string v1, "sns_tid"

    const-string v2, "sns_tid"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sIdSearchProjectionMap:Ljava/util/HashMap;

    const-string v1, "sp_type"

    const-string v2, "sp_type"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sIdSearchProjectionMap:Ljava/util/HashMap;

    const-string v1, "receiver_id"

    const-string v2, "receiver_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sIdSearchProjectionMap:Ljava/util/HashMap;

    const-string v1, "receiver_name"

    const-string v2, "receiver_name"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sIdSearchProjectionMap:Ljava/util/HashMap;

    const-string v1, "account_name"

    const-string v1, "account_name"

    invoke-virtual {v0, v7, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sIdSearchProjectionMap:Ljava/util/HashMap;

    const-string v1, "account_id"

    const-string v1, "account_id"

    invoke-virtual {v0, v6, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sDurationProjectionMap:Ljava/util/HashMap;

    .line 298
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sDurationProjectionMap:Ljava/util/HashMap;

    const-string v1, "_id"

    const-string v1, "_id"

    invoke-virtual {v0, v4, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sDurationProjectionMap:Ljava/util/HashMap;

    const-string v1, "last_voice"

    const-string v2, "last_voice"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sDurationProjectionMap:Ljava/util/HashMap;

    const-string v1, "last_video"

    const-string v2, "last_video"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sDurationProjectionMap:Ljava/util/HashMap;

    const-string v1, "last_voip"

    const-string v2, "last_voip"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sDurationProjectionMap:Ljava/util/HashMap;

    const-string v1, "dial_voice"

    const-string v2, "dial_voice"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sDurationProjectionMap:Ljava/util/HashMap;

    const-string v1, "dial_video"

    const-string v2, "dial_video"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sDurationProjectionMap:Ljava/util/HashMap;

    const-string v1, "dial_voip"

    const-string v2, "dial_voip"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sDurationProjectionMap:Ljava/util/HashMap;

    const-string v1, "rece_voice"

    const-string v2, "rece_voice"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sDurationProjectionMap:Ljava/util/HashMap;

    const-string v1, "rece_video"

    const-string v2, "rece_video"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sDurationProjectionMap:Ljava/util/HashMap;

    const-string v1, "rece_voip"

    const-string v2, "rece_voip"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sDurationProjectionMap:Ljava/util/HashMap;

    const-string v1, "all_voice"

    const-string v2, "all_voice"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sDurationProjectionMap:Ljava/util/HashMap;

    const-string v1, "all_video"

    const-string v2, "all_video"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sDurationProjectionMap:Ljava/util/HashMap;

    const-string v1, "all_voip"

    const-string v2, "all_voip"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sDurationProjectionMap:Ljava/util/HashMap;

    const-string v1, "reset_date"

    const-string v2, "reset_date"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.sec.android.app.snsaccountfacebook.account_type"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.sec.android.app.snsaccountmyspace.account_type"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.sec.android.app.snsaccounttwitter.account_type"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.sec.android.app.snsaccountkaixin.account_type"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "com.sec.android.app.snsaccountrenren.account_type"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "com.sec.android.app.snsaccountqzone.account_type"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sSnsAccountType:[Ljava/lang/String;

    .line 350
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.seven.Z7.msn"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.seven.Z7.yahoo"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.seven.Z7"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sSevenAccountType:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 57
    return-void
.end method

.method public static concatenateWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "a"
    .parameter "b"

    .prologue
    .line 1329
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 1336
    :goto_0
    return-object v0

    .line 1332
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p0

    .line 1333
    goto :goto_0

    .line 1336
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") AND ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static updateLogInfoWithIM(Landroid/content/ContentResolver;Landroid/content/ContentValues;Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 9
    .parameter "cr"
    .parameter "value"
    .parameter "address"

    .prologue
    .line 1549
    const-string v0, "content://com.android.contacts/data/email_im/lookup/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "contact_id"

    aput-object v3, v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1552
    .local v8, imCursor:Landroid/database/Cursor;
    if-eqz v8, :cond_13

    .line 1553
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_f

    .line 1554
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1555
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 1556
    .local v6, id:J
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1558
    .local v1, uri:Landroid/net/Uri;
    sget-object v2, Lcom/sec/android/provider/logsprovider/LogsColumn$Logs;->CONTACT_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1559
    .local v0, c2:Landroid/database/Cursor;
    if-eqz v0, :cond_a

    .line 1560
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .end local v1           #uri:Landroid/net/Uri;
    if-lez v1, :cond_3

    .line 1561
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1562
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1563
    .local v1, name:Ljava/lang/String;
    const/4 v2, 0x2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1564
    .local v2, nameReversed:Ljava/lang/String;
    const-string v3, "name"

    invoke-virtual {p1, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1565
    const-string v1, "name_reversed"

    .end local v1           #name:Ljava/lang/String;
    invoke-virtual {p1, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1566
    const-string v1, "contactid"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .end local v2           #nameReversed:Ljava/lang/String;
    invoke-virtual {p1, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1567
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "raw_contact_id"

    aput-object v2, v4, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "data1=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .end local p2
    const-string v1, "\'"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .end local v6           #id:J
    move-result-object p0

    .line 1572
    .local p0, rawCursor:Landroid/database/Cursor;
    if-eqz p0, :cond_1

    .line 1573
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result p2

    if-lez p2, :cond_0

    .line 1574
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1575
    const-string p2, "raw_contact_id"

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1577
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 1579
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1580
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1650
    .end local v0           #c2:Landroid/database/Cursor;
    .end local p0           #rawCursor:Landroid/database/Cursor;
    :cond_2
    :goto_0
    return-object p1

    .line 1583
    .restart local v0       #c2:Landroid/database/Cursor;
    .restart local v6       #id:J
    .local p0, cr:Landroid/content/ContentResolver;
    .restart local p2
    :cond_3
    const-string p0, "contactid"

    .end local p0           #cr:Landroid/content/ContentResolver;
    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .end local p2
    move-result-object p2

    invoke-virtual {p1, p0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1584
    const-string p0, "name"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 1585
    const-string p0, "name"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1587
    :cond_4
    const-string p0, "numberlabel"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 1588
    const-string p0, "numberlabel"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1590
    :cond_5
    const-string p0, "numbertype"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_6

    .line 1591
    const-string p0, "numbertype"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1593
    :cond_6
    const-string p0, "name_reversed"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_7

    .line 1594
    const-string p0, "name_reversed"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1596
    :cond_7
    const-string p0, "raw_contact_id"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_8

    .line 1597
    const-string p0, "raw_contact_id"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1600
    :cond_8
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1634
    .end local v0           #c2:Landroid/database/Cursor;
    .end local v6           #id:J
    :cond_9
    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1602
    .restart local v0       #c2:Landroid/database/Cursor;
    .local v1, uri:Landroid/net/Uri;
    .restart local v6       #id:J
    .restart local p0       #cr:Landroid/content/ContentResolver;
    .restart local p2
    :cond_a
    const-string p0, "contactid"

    .end local p0           #cr:Landroid/content/ContentResolver;
    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .end local p2
    move-result-object p2

    invoke-virtual {p1, p0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1603
    const-string p0, "name"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_b

    .line 1604
    const-string p0, "name"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1606
    :cond_b
    const-string p0, "numberlabel"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_c

    .line 1607
    const-string p0, "numberlabel"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1609
    :cond_c
    const-string p0, "numbertype"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_d

    .line 1610
    const-string p0, "numbertype"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1612
    :cond_d
    const-string p0, "name_reversed"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_e

    .line 1613
    const-string p0, "name_reversed"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1615
    :cond_e
    const-string p0, "raw_contact_id"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_9

    .line 1616
    const-string p0, "raw_contact_id"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    goto :goto_1

    .line 1620
    .end local v0           #c2:Landroid/database/Cursor;
    .end local v1           #uri:Landroid/net/Uri;
    .end local v6           #id:J
    .restart local p0       #cr:Landroid/content/ContentResolver;
    .restart local p2
    :cond_f
    const-string p0, "contactid"

    .end local p0           #cr:Landroid/content/ContentResolver;
    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .end local p2
    move-result-object p2

    invoke-virtual {p1, p0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1621
    const-string p0, "name"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_10

    .line 1622
    const-string p0, "name"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1624
    :cond_10
    const-string p0, "numberlabel"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_11

    .line 1625
    const-string p0, "numberlabel"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1627
    :cond_11
    const-string p0, "numbertype"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_12

    .line 1628
    const-string p0, "numbertype"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1630
    :cond_12
    const-string p0, "name_reversed"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_9

    .line 1631
    const-string p0, "name_reversed"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1637
    .restart local p0       #cr:Landroid/content/ContentResolver;
    .restart local p2
    :cond_13
    const-string p0, "contactid"

    .end local p0           #cr:Landroid/content/ContentResolver;
    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .end local p2
    move-result-object p2

    invoke-virtual {p1, p0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1638
    const-string p0, "name"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_14

    .line 1639
    const-string p0, "name"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1641
    :cond_14
    const-string p0, "numberlabel"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_15

    .line 1642
    const-string p0, "numberlabel"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1644
    :cond_15
    const-string p0, "numbertype"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_16

    .line 1645
    const-string p0, "numbertype"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1647
    :cond_16
    const-string p0, "name_reversed"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 1648
    const-string p0, "name_reversed"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static updateLogInfoWithNumber(Landroid/content/ContentResolver;Landroid/content/ContentValues;Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 7
    .parameter "cr"
    .parameter "value"
    .parameter "number"

    .prologue
    .line 1340
    sget-object v0, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/sec/android/provider/logsprovider/LogsColumn$Logs;->PHONES_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1342
    .local v6, phonesCursor:Landroid/database/Cursor;
    if-eqz v6, :cond_8

    .line 1343
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_3

    .line 1344
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1345
    const-string v0, "contactid"

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1346
    const-string v0, "name"

    const/4 v1, 0x1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1347
    const-string v0, "name_reversed"

    const/4 v1, 0x5

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1348
    const-string v0, "numberlabel"

    const/4 v1, 0x3

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1349
    const-string v0, "numbertype"

    const/4 v1, 0x2

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1351
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "raw_contact_id"

    aput-object v3, v2, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "data1=\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .end local p2
    const-string v0, "\'"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 1356
    .local p0, rawCursor:Landroid/database/Cursor;
    if-eqz p0, :cond_1

    .line 1357
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result p2

    if-lez p2, :cond_0

    .line 1358
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1359
    const-string p2, "raw_contact_id"

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1361
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 1381
    .end local p0           #rawCursor:Landroid/database/Cursor;
    :cond_1
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1400
    :cond_2
    :goto_1
    return-object p1

    .line 1364
    .local p0, cr:Landroid/content/ContentResolver;
    .restart local p2
    :cond_3
    const-string p0, "contactid"

    .end local p0           #cr:Landroid/content/ContentResolver;
    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .end local p2
    move-result-object p2

    invoke-virtual {p1, p0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1365
    const-string p0, "name"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 1366
    const-string p0, "name"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1368
    :cond_4
    const-string p0, "numberlabel"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 1369
    const-string p0, "numberlabel"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1371
    :cond_5
    const-string p0, "numbertype"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_6

    .line 1372
    const-string p0, "numbertype"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1374
    :cond_6
    const-string p0, "name_reversed"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_7

    .line 1375
    const-string p0, "name_reversed"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1377
    :cond_7
    const-string p0, "raw_contact_id"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 1378
    const-string p0, "raw_contact_id"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    goto :goto_0

    .line 1384
    .restart local p0       #cr:Landroid/content/ContentResolver;
    .restart local p2
    :cond_8
    const-string p0, "contactid"

    .end local p0           #cr:Landroid/content/ContentResolver;
    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .end local p2
    move-result-object p2

    invoke-virtual {p1, p0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1385
    const-string p0, "name"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_9

    .line 1386
    const-string p0, "name"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1388
    :cond_9
    const-string p0, "numberlabel"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_a

    .line 1389
    const-string p0, "numberlabel"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1391
    :cond_a
    const-string p0, "numbertype"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_b

    .line 1392
    const-string p0, "numbertype"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1394
    :cond_b
    const-string p0, "name_reversed"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_c

    .line 1395
    const-string p0, "name_reversed"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1397
    :cond_c
    const-string p0, "raw_contact_id"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 1398
    const-string p0, "raw_contact_id"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public static updateLogInfoWithNumberAndEmail(Landroid/content/ContentResolver;Landroid/content/ContentValues;Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 9
    .parameter "cr"
    .parameter "value"
    .parameter "number"

    .prologue
    .line 1404
    sget-object v0, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/sec/android/provider/logsprovider/LogsColumn$Logs;->PHONES_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1406
    .local v6, phonesCursor:Landroid/database/Cursor;
    if-eqz v6, :cond_4

    .line 1407
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_3

    .line 1408
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1409
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 1410
    .local v0, id:J
    const/4 v2, 0x1

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1411
    .local v3, name:Ljava/lang/String;
    const/4 v2, 0x2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 1412
    .local v5, numberType:I
    const/4 v2, 0x3

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1413
    .local v2, label:Ljava/lang/String;
    const/4 v4, 0x5

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1415
    .local v4, nameReversed:Ljava/lang/String;
    const-string v7, "contactid"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .end local v0           #id:J
    invoke-virtual {p1, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1416
    const-string v0, "name"

    invoke-virtual {p1, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1417
    const-string v0, "name_reversed"

    invoke-virtual {p1, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1418
    const-string v0, "numberlabel"

    invoke-virtual {p1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1419
    const-string v0, "numbertype"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1420
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    .end local v2           #label:Ljava/lang/String;
    const/4 v0, 0x0

    const-string v3, "raw_contact_id"

    .end local v3           #name:Ljava/lang/String;
    aput-object v3, v2, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "data1=\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .end local p2
    const-string v0, "\'"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .end local v4           #nameReversed:Ljava/lang/String;
    .end local v5           #numberType:I
    move-result-object p0

    .line 1425
    .local p0, rawCursor:Landroid/database/Cursor;
    if-eqz p0, :cond_1

    .line 1426
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result p2

    if-lez p2, :cond_0

    .line 1427
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1428
    const-string p2, "raw_contact_id"

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1430
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 1432
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1545
    .end local v6           #phonesCursor:Landroid/database/Cursor;
    .end local p0           #rawCursor:Landroid/database/Cursor;
    :cond_2
    :goto_0
    return-object p1

    .line 1435
    .restart local v6       #phonesCursor:Landroid/database/Cursor;
    .local p0, cr:Landroid/content/ContentResolver;
    .restart local p2
    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1438
    :cond_4
    sget-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    invoke-static {p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/sec/android/provider/logsprovider/LogsColumn$Logs;->EMAIL_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1440
    .local v8, emailCursor:Landroid/database/Cursor;
    if-eqz v8, :cond_18

    .line 1441
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_13

    .line 1442
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1443
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 1444
    .local v6, id:J
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1445
    .local v0, lookupkey:Ljava/lang/String;
    invoke-static {v6, v7, v0}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1446
    .local v1, uri:Landroid/net/Uri;
    sget-object v2, Lcom/sec/android/provider/logsprovider/LogsColumn$Logs;->CONTACT_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .end local v0           #lookupkey:Ljava/lang/String;
    move-result-object v0

    .line 1447
    .local v0, c2:Landroid/database/Cursor;
    if-eqz v0, :cond_e

    .line 1448
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .end local v1           #uri:Landroid/net/Uri;
    if-lez v1, :cond_7

    .line 1449
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1450
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1451
    .local v1, name:Ljava/lang/String;
    const/4 v2, 0x2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1452
    .local v2, nameReversed:Ljava/lang/String;
    const-string v3, "name"

    invoke-virtual {p1, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1453
    const-string v1, "name_reversed"

    .end local v1           #name:Ljava/lang/String;
    invoke-virtual {p1, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1454
    const-string v1, "contactid"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .end local v2           #nameReversed:Ljava/lang/String;
    invoke-virtual {p1, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1456
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "raw_contact_id"

    aput-object v2, v4, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "data1=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .end local p2
    const-string v1, "\'"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .end local v6           #id:J
    move-result-object p0

    .line 1461
    .local p0, rawCursor:Landroid/database/Cursor;
    if-eqz p0, :cond_6

    .line 1462
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result p2

    if-lez p2, :cond_5

    .line 1463
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1464
    const-string p2, "raw_contact_id"

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1466
    :cond_5
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 1468
    :cond_6
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1469
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 1472
    .restart local v6       #id:J
    .local p0, cr:Landroid/content/ContentResolver;
    .restart local p2
    :cond_7
    const-string p0, "contactid"

    .end local p0           #cr:Landroid/content/ContentResolver;
    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .end local p2
    move-result-object p2

    invoke-virtual {p1, p0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1473
    const-string p0, "name"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_8

    .line 1474
    const-string p0, "name"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1476
    :cond_8
    const-string p0, "numberlabel"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_9

    .line 1477
    const-string p0, "numberlabel"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1479
    :cond_9
    const-string p0, "numbertype"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_a

    .line 1480
    const-string p0, "numbertype"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1482
    :cond_a
    const-string p0, "name_reversed"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_b

    .line 1483
    const-string p0, "name_reversed"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1485
    :cond_b
    const-string p0, "raw_contact_id"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_c

    .line 1486
    const-string p0, "raw_contact_id"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1489
    :cond_c
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1526
    .end local v0           #c2:Landroid/database/Cursor;
    .end local v6           #id:J
    :cond_d
    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 1491
    .restart local v0       #c2:Landroid/database/Cursor;
    .local v1, uri:Landroid/net/Uri;
    .restart local v6       #id:J
    .restart local p0       #cr:Landroid/content/ContentResolver;
    .restart local p2
    :cond_e
    const-string p0, "contactid"

    .end local p0           #cr:Landroid/content/ContentResolver;
    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .end local p2
    move-result-object p2

    invoke-virtual {p1, p0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1492
    const-string p0, "name"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_f

    .line 1493
    const-string p0, "name"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1495
    :cond_f
    const-string p0, "numberlabel"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_10

    .line 1496
    const-string p0, "numberlabel"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1498
    :cond_10
    const-string p0, "numbertype"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_11

    .line 1499
    const-string p0, "numbertype"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1501
    :cond_11
    const-string p0, "name_reversed"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_12

    .line 1502
    const-string p0, "name_reversed"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1504
    :cond_12
    const-string p0, "raw_contact_id"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_d

    .line 1505
    const-string p0, "raw_contact_id"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    goto :goto_1

    .line 1509
    .end local v0           #c2:Landroid/database/Cursor;
    .end local v1           #uri:Landroid/net/Uri;
    .local v6, phonesCursor:Landroid/database/Cursor;
    .restart local p0       #cr:Landroid/content/ContentResolver;
    .restart local p2
    :cond_13
    const-string p0, "contactid"

    .end local p0           #cr:Landroid/content/ContentResolver;
    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .end local p2
    move-result-object p2

    invoke-virtual {p1, p0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1510
    const-string p0, "name"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_14

    .line 1511
    const-string p0, "name"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1513
    :cond_14
    const-string p0, "numberlabel"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_15

    .line 1514
    const-string p0, "numberlabel"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1516
    :cond_15
    const-string p0, "numbertype"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_16

    .line 1517
    const-string p0, "numbertype"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1519
    :cond_16
    const-string p0, "name_reversed"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_17

    .line 1520
    const-string p0, "name_reversed"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1522
    :cond_17
    const-string p0, "raw_contact_id"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_d

    .line 1523
    const-string p0, "raw_contact_id"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1529
    .restart local p0       #cr:Landroid/content/ContentResolver;
    .restart local p2
    :cond_18
    const-string p0, "contactid"

    .end local p0           #cr:Landroid/content/ContentResolver;
    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .end local p2
    move-result-object p2

    invoke-virtual {p1, p0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1530
    const-string p0, "name"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_19

    .line 1531
    const-string p0, "name"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1533
    :cond_19
    const-string p0, "numberlabel"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1a

    .line 1534
    const-string p0, "numberlabel"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1536
    :cond_1a
    const-string p0, "numbertype"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1b

    .line 1537
    const-string p0, "numbertype"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1539
    :cond_1b
    const-string p0, "name_reversed"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1c

    .line 1540
    const-string p0, "name_reversed"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1542
    :cond_1c
    const-string p0, "raw_contact_id"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 1543
    const-string p0, "raw_contact_id"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 11
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 986
    iget-object v7, p0, Lcom/sec/android/provider/logsprovider/LogsProvider;->mDbHelper:Lcom/sec/android/provider/logsprovider/LogsProvider$DatabaseHelper;

    invoke-virtual {v7}, Lcom/sec/android/provider/logsprovider/LogsProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 987
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    sget-object v7, Lcom/sec/android/provider/logsprovider/LogsProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v7, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    .line 989
    .local v3, matchedUriId:I
    const/4 v4, 0x0

    .line 990
    .local v4, nValue_length:I
    array-length v4, p2

    .line 991
    sparse-switch v3, :sswitch_data_0

    .line 1093
    const/4 v7, -0x1

    :goto_0
    return v7

    .line 993
    :sswitch_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 995
    const-wide/16 v5, 0x0

    .line 996
    .local v5, rowId:J
    :try_start_0
    array-length v7, p2

    const/16 v8, 0x1f4

    if-le v7, v8, :cond_0

    .line 997
    const/16 v4, 0x1f4

    .line 998
    :cond_0
    const/4 v1, 0x0

    .local v1, index:I
    :goto_1
    if-ge v1, v4, :cond_d

    .line 999
    aget-object v7, p2, v1

    const-string v8, "logtype"

    invoke-virtual {v7, v8}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1000
    .local v2, logType:I
    aget-object v7, p2, v1

    const-string v8, "logtype"

    invoke-virtual {v7, v8}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 1001
    sget-object v7, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v8, "pleses insert \'logtype\'"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1002
    const/4 v7, -0x1

    .line 1059
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    .line 1004
    :cond_1
    const/16 v7, 0x64

    if-eq v2, v7, :cond_2

    const/16 v7, 0x190

    if-eq v2, v7, :cond_2

    const/16 v7, 0x258

    if-eq v2, v7, :cond_2

    const/16 v7, 0xc8

    if-eq v2, v7, :cond_2

    const/16 v7, 0x12c

    if-eq v2, v7, :cond_2

    const/16 v7, 0x2bc

    if-eq v2, v7, :cond_2

    const/16 v7, 0x1f4

    if-eq v2, v7, :cond_2

    const/16 v7, 0x320

    if-eq v2, v7, :cond_2

    .line 1012
    :try_start_1
    sget-object v7, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v8, "wrong \'logtype\'"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1013
    const/4 v7, -0x1

    .line 1059
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    .line 1016
    :cond_2
    const/16 v7, 0x64

    if-eq v2, v7, :cond_3

    const/16 v7, 0x1f4

    if-eq v2, v7, :cond_3

    const/16 v7, 0x320

    if-ne v2, v7, :cond_6

    .line 1019
    :cond_3
    :try_start_2
    aget-object v7, p2, v1

    const-string v8, "duration"

    invoke-virtual {v7, v8}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 1020
    sget-object v7, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v8, "pleses insert \'duration\'"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1021
    const/4 v7, -0x1

    .line 1059
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    .line 1023
    :cond_4
    :try_start_3
    aget-object v7, p2, v1

    const-string v8, "new"

    invoke-virtual {v7, v8}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 1024
    aget-object v7, p2, v1

    const-string v8, "new"

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1026
    :cond_5
    aget-object v7, p2, v1

    const-string v8, "frequent"

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1027
    iget-object v7, p0, Lcom/sec/android/provider/logsprovider/LogsProvider;->mContentResolver:Landroid/content/ContentResolver;

    aget-object v8, p2, v1

    aget-object v9, p2, v1

    const-string v10, "number"

    invoke-virtual {v9, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcom/sec/android/provider/logsprovider/LogsProvider;->updateLogInfoWithNumber(Landroid/content/ContentResolver;Landroid/content/ContentValues;Ljava/lang/String;)Landroid/content/ContentValues;

    .line 1055
    :goto_2
    const-string v7, "logs"

    const/4 v8, 0x0

    aget-object v9, p2, v1

    invoke-virtual {v0, v7, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v5

    .line 998
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 1028
    :cond_6
    const/16 v7, 0x190

    if-eq v2, v7, :cond_7

    const/16 v7, 0xc8

    if-eq v2, v7, :cond_7

    const/16 v7, 0x12c

    if-eq v2, v7, :cond_7

    const/16 v7, 0x258

    if-eq v2, v7, :cond_7

    const/16 v7, 0x2bc

    if-ne v2, v7, :cond_c

    .line 1033
    :cond_7
    aget-object v7, p2, v1

    const-string v8, "messageid"

    invoke-virtual {v7, v8}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 1034
    sget-object v7, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v8, "pleses insert \'messageid\'"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1035
    const/4 v7, -0x1

    .line 1059
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .line 1037
    :cond_8
    :try_start_4
    aget-object v7, p2, v1

    const-string v8, "sp_type"

    invoke-virtual {v7, v8}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_9

    .line 1038
    sget-object v7, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v8, "insert \'sp_type\'"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1039
    const/4 v7, -0x1

    .line 1059
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .line 1041
    :cond_9
    const/16 v7, 0x190

    if-ne v2, v7, :cond_b

    .line 1042
    :try_start_5
    aget-object v7, p2, v1

    const-string v8, "new"

    invoke-virtual {v7, v8}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_a

    .line 1043
    aget-object v7, p2, v1

    const-string v8, "new"

    const-string v9, "1"

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1049
    :cond_a
    :goto_3
    aget-object v7, p2, v1

    const-string v8, "duration"

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1050
    iget-object v7, p0, Lcom/sec/android/provider/logsprovider/LogsProvider;->mContentResolver:Landroid/content/ContentResolver;

    aget-object v8, p2, v1

    aget-object v9, p2, v1

    const-string v10, "number"

    invoke-virtual {v9, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcom/sec/android/provider/logsprovider/LogsProvider;->updateLogInfoWithNumberAndEmail(Landroid/content/ContentResolver;Landroid/content/ContentValues;Ljava/lang/String;)Landroid/content/ContentValues;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_2

    .line 1059
    .end local v1           #index:I
    .end local v2           #logType:I
    :catchall_0
    move-exception v7

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v7

    .line 1047
    .restart local v1       #index:I
    .restart local v2       #logType:I
    :cond_b
    :try_start_6
    aget-object v7, p2, v1

    const-string v8, "new"

    const-string v9, "1"

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 1052
    :cond_c
    sget-object v7, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v8, "wrong \'logtype\'"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1057
    .end local v2           #logType:I
    :cond_d
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1059
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1061
    invoke-virtual {p0}, Lcom/sec/android/provider/logsprovider/LogsProvider;->notifyChange()V

    .line 1062
    array-length v7, p2

    goto/16 :goto_0

    .line 1064
    .end local v1           #index:I
    .end local v5           #rowId:J
    :sswitch_1
    array-length v7, p2

    const/16 v8, 0xbb8

    if-le v7, v8, :cond_e

    .line 1065
    const/16 v4, 0xbb8

    .line 1066
    :cond_e
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1068
    const-wide/16 v5, 0x0

    .line 1069
    .restart local v5       #rowId:J
    const/4 v1, 0x0

    .restart local v1       #index:I
    :goto_4
    if-ge v1, v4, :cond_f

    .line 1070
    :try_start_7
    const-string v7, "logs"

    const/4 v8, 0x0

    aget-object v9, p2, v1

    invoke-virtual {v0, v7, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v5

    .line 1069
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1072
    :cond_f
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 1074
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1076
    invoke-virtual {p0}, Lcom/sec/android/provider/logsprovider/LogsProvider;->notifyChange()V

    .line 1077
    array-length v7, p2

    goto/16 :goto_0

    .line 1074
    :catchall_1
    move-exception v7

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v7

    .line 1079
    .end local v1           #index:I
    .end local v5           #rowId:J
    :sswitch_2
    array-length v7, p2

    const/16 v8, 0xbb8

    if-le v7, v8, :cond_10

    .line 1080
    const/16 v4, 0xbb8

    .line 1081
    :cond_10
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1083
    const-wide/16 v5, 0x0

    .line 1084
    .restart local v5       #rowId:J
    const/4 v1, 0x0

    .restart local v1       #index:I
    :goto_5
    if-ge v1, v4, :cond_11

    .line 1085
    :try_start_8
    const-string v7, "sns_msg_receiver_map"

    const/4 v8, 0x0

    aget-object v9, p2, v1

    invoke-virtual {v0, v7, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v5

    .line 1084
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1087
    :cond_11
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 1089
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1091
    array-length v7, p2

    goto/16 :goto_0

    .line 1089
    :catchall_2
    move-exception v7

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v7

    .line 991
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x15 -> :sswitch_1
        0x20 -> :sswitch_2
    .end sparse-switch
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 17
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 1160
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->mDbHelper:Lcom/sec/android/provider/logsprovider/LogsProvider$DatabaseHelper;

    move-object v14, v0

    invoke-virtual {v14}, Lcom/sec/android/provider/logsprovider/LogsProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    .line 1161
    .local v6, db:Landroid/database/sqlite/SQLiteDatabase;
    sget-object v14, Lcom/sec/android/provider/logsprovider/LogsProvider;->sURIMatcher:Landroid/content/UriMatcher;

    move-object v0, v14

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v7

    .line 1162
    .local v7, match:I
    const/4 v5, 0x0

    .line 1163
    .local v5, count:I
    const-wide/16 v8, 0x0

    .line 1164
    .local v8, t:J
    const-wide/16 v10, 0x0

    .line 1165
    .local v10, t2:J
    const-string v4, " (logtype=500 OR logtype=800 OR logtype=100 OR (logs.logtype=200 AND number NOT IN (SELECT number FROM logs WHERE number LIKE \'%@%\')) OR logtype=300)"

    .line 1171
    .local v4, addedSelection:Ljava/lang/String;
    sparse-switch v7, :sswitch_data_0

    .line 1310
    new-instance v14, Ljava/lang/UnsupportedOperationException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Cannot delete that URL: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 1173
    :sswitch_0
    move-object/from16 v0, p2

    move-object v1, v4

    invoke-static {v0, v1}, Lcom/sec/android/provider/logsprovider/LogsProvider;->concatenateWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1174
    .local v12, where:Ljava/lang/String;
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1176
    :try_start_0
    const-string v14, "logs"

    move-object v0, v6

    move-object v1, v14

    move-object v2, v12

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    .line 1177
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1179
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1312
    .end local v12           #where:Ljava/lang/String;
    :goto_0
    if-lez v5, :cond_0

    .line 1313
    sparse-switch v7, :sswitch_data_1

    .line 1323
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/provider/logsprovider/LogsProvider;->notifyChange()V

    .line 1325
    :cond_0
    return v5

    .line 1179
    .restart local v12       #where:Ljava/lang/String;
    :catchall_0
    move-exception v14

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v14

    .line 1184
    .end local v12           #where:Ljava/lang/String;
    :sswitch_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 1185
    if-eqz p2, :cond_1

    .line 1186
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v14

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " AND"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1190
    :goto_2
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1192
    :try_start_1
    const-string v14, "logs"

    move-object v0, v6

    move-object v1, v14

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    .line 1193
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1195
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1197
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long v10, v14, v8

    .line 1198
    sget-object v14, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "delete time : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1188
    :cond_1
    move-object/from16 p2, v4

    goto :goto_2

    .line 1195
    :catchall_1
    move-exception v14

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v14

    .line 1203
    :sswitch_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 1204
    if-eqz p2, :cond_2

    .line 1205
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v14

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " AND"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1209
    :goto_3
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1211
    :try_start_2
    const-string v14, "logs"

    move-object v0, v6

    move-object v1, v14

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    .line 1212
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1214
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1216
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long v10, v14, v8

    .line 1217
    sget-object v14, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "delete time : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1207
    :cond_2
    move-object/from16 p2, v4

    goto :goto_3

    .line 1214
    :catchall_2
    move-exception v14

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v14

    .line 1221
    :sswitch_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 1222
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1224
    :try_start_3
    sget-object v14, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "delete : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1225
    const-string v14, "logs"

    move-object v0, v6

    move-object v1, v14

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    .line 1226
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 1228
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1230
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long v10, v14, v8

    .line 1231
    sget-object v14, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "delete time : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1228
    :catchall_3
    move-exception v14

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v14

    .line 1235
    :sswitch_4
    const-string v13, " (logtype=400)"

    .line 1236
    .local v13, where3:Ljava/lang/String;
    if-eqz p2, :cond_3

    .line 1237
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v14

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " AND"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1241
    :goto_4
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1243
    :try_start_4
    const-string v14, "logs"

    move-object v0, v6

    move-object v1, v14

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    .line 1244
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 1246
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .line 1239
    :cond_3
    move-object/from16 p2, v13

    goto :goto_4

    .line 1246
    :catchall_4
    move-exception v14

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v14

    .line 1251
    .end local v13           #where3:Ljava/lang/String;
    :sswitch_5
    const-string v13, " (logtype=410)"

    .line 1252
    .restart local v13       #where3:Ljava/lang/String;
    if-eqz p2, :cond_4

    .line 1253
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v14

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " AND"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1257
    :goto_5
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1259
    :try_start_5
    const-string v14, "logs"

    move-object v0, v6

    move-object v1, v14

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    .line 1260
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 1262
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .line 1255
    :cond_4
    move-object/from16 p2, v13

    goto :goto_5

    .line 1262
    :catchall_5
    move-exception v14

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v14

    .line 1267
    .end local v13           #where3:Ljava/lang/String;
    :sswitch_6
    const-string v13, " (logtype=600)"

    .line 1268
    .restart local v13       #where3:Ljava/lang/String;
    if-eqz p2, :cond_5

    .line 1269
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v14

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " AND"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1273
    :goto_6
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1275
    :try_start_6
    const-string v14, "logs"

    move-object v0, v6

    move-object v1, v14

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    .line 1276
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    .line 1278
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .line 1271
    :cond_5
    move-object/from16 p2, v13

    goto :goto_6

    .line 1278
    :catchall_6
    move-exception v14

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v14

    .line 1283
    .end local v13           #where3:Ljava/lang/String;
    :sswitch_7
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1285
    :try_start_7
    const-string v14, "sns_msg_receiver_map"

    move-object v0, v6

    move-object v1, v14

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    .line 1286
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    .line 1288
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    :catchall_7
    move-exception v14

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v14

    .line 1293
    :sswitch_8
    const-string v12, " (logtype=700)"

    .line 1294
    .restart local v12       #where:Ljava/lang/String;
    if-eqz p2, :cond_6

    .line 1295
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v14

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " AND"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1299
    :goto_7
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1301
    :try_start_8
    sget-object v14, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "delete : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1302
    const-string v14, "logs"

    move-object v0, v6

    move-object v1, v14

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    .line 1303
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    .line 1305
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .line 1297
    :cond_6
    move-object/from16 p2, v12

    goto :goto_7

    .line 1305
    :catchall_8
    move-exception v14

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v14

    .line 1319
    .end local v12           #where:Ljava/lang/String;
    :sswitch_9
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/provider/logsprovider/LogsProvider;->notifyAllCallsChange()V

    .line 1320
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/provider/logsprovider/LogsProvider;->notifyCallChange()V

    goto/16 :goto_1

    .line 1171
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0xb -> :sswitch_4
        0x13 -> :sswitch_5
        0x14 -> :sswitch_0
        0x15 -> :sswitch_6
        0x16 -> :sswitch_1
        0x17 -> :sswitch_8
        0x1a -> :sswitch_2
        0x20 -> :sswitch_7
    .end sparse-switch

    .line 1313
    :sswitch_data_1
    .sparse-switch
        0x7 -> :sswitch_9
        0x9 -> :sswitch_9
        0x14 -> :sswitch_9
        0x16 -> :sswitch_9
        0x1a -> :sswitch_9
    .end sparse-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 4
    .parameter "uri"

    .prologue
    .line 654
    sget-object v1, Lcom/sec/android/provider/logsprovider/LogsProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 655
    .local v0, match:I
    packed-switch v0, :pswitch_data_0

    .line 659
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown URI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 657
    :pswitch_0
    const-string v1, "vnd.android.cursor.item/calls"

    return-object v1

    .line 655
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 11
    .parameter "uri"
    .parameter "values"

    .prologue
    const/4 v8, 0x0

    const-string v10, "logtype"

    const-string v7, "duration"

    const-string v9, "number"

    const-string v6, "new"

    .line 665
    sget-object v5, Lcom/sec/android/provider/logsprovider/LogsProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v5, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    .line 667
    .local v2, match:I
    const-string v5, "type"

    invoke-virtual {p2, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 668
    sget-object v5, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v6, "pleses insert \'type\' data"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v8

    .line 981
    :goto_0
    return-object v5

    .line 672
    :cond_0
    sparse-switch v2, :sswitch_data_0

    .line 900
    sget-object v5, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v6, "wrong uri"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v8

    .line 901
    goto :goto_0

    .line 674
    :sswitch_0
    const-string v5, "number"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 675
    sget-object v5, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v6, "pleses insert \'number\' data"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v8

    .line 676
    goto :goto_0

    .line 678
    :cond_1
    const-string v5, "duration"

    invoke-virtual {p2, v7}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 679
    sget-object v5, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v6, "pleses insert \'duration\' data"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v8

    .line 680
    goto :goto_0

    .line 682
    :cond_2
    const-string v5, "new"

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 683
    const-string v5, "new"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p2, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 685
    :cond_3
    const-string v5, "logtype"

    const/16 v5, 0x1f4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p2, v10, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 686
    const-string v5, "frequent"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 904
    :goto_1
    packed-switch v2, :pswitch_data_0

    .line 921
    :goto_2
    :pswitch_0
    iget-object v5, p0, Lcom/sec/android/provider/logsprovider/LogsProvider;->mLogInserter:Landroid/database/DatabaseUtils$InsertHelper;

    invoke-virtual {v5, p2}, Landroid/database/DatabaseUtils$InsertHelper;->insert(Landroid/content/ContentValues;)J

    move-result-wide v3

    .line 923
    .local v3, rowId:J
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-lez v5, :cond_2c

    .line 924
    sparse-switch v2, :sswitch_data_1

    .line 937
    :goto_3
    invoke-virtual {p0}, Lcom/sec/android/provider/logsprovider/LogsProvider;->notifyChange()V

    .line 938
    sget-object v5, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "insert data - logtype : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "logtype"

    invoke-virtual {p2, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " number : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "number"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " contactid : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "contactid"

    invoke-virtual {p2, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " name : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "name"

    invoke-virtual {p2, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " messageid : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "messageid"

    invoke-virtual {p2, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 941
    sparse-switch v2, :sswitch_data_2

    .line 977
    :goto_4
    invoke-static {p1, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    goto/16 :goto_0

    .line 691
    .end local v3           #rowId:J
    :sswitch_1
    const-string v5, "number"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 692
    sget-object v5, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v6, "pleses insert \'number\' data"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v8

    .line 693
    goto/16 :goto_0

    .line 695
    :cond_4
    const-string v5, "duration"

    invoke-virtual {p2, v7}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 696
    sget-object v5, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v6, "pleses insert \'duration\' data"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v8

    .line 697
    goto/16 :goto_0

    .line 699
    :cond_5
    const-string v5, "new"

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 700
    const-string v5, "new"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p2, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 702
    :cond_6
    const-string v5, "logtype"

    const/16 v5, 0x320

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p2, v10, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 703
    const-string v5, "frequent"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_1

    .line 708
    :sswitch_2
    const-string v5, "number"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 709
    sget-object v5, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v6, "pleses insert \'number\' data"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v8

    .line 710
    goto/16 :goto_0

    .line 712
    :cond_7
    const-string v5, "duration"

    invoke-virtual {p2, v7}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 713
    sget-object v5, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v6, "pleses insert \'duration\' data"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v8

    .line 714
    goto/16 :goto_0

    .line 716
    :cond_8
    const-string v5, "new"

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 717
    const-string v5, "new"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p2, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 719
    :cond_9
    const-string v5, "logtype"

    const/16 v5, 0x64

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p2, v10, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 720
    const-string v5, "frequent"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_1

    .line 723
    :sswitch_3
    const-string v5, "number"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 724
    sget-object v5, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v6, "pleses insert \'number\' data"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v8

    .line 725
    goto/16 :goto_0

    .line 727
    :cond_a
    const-string v5, "messageid"

    invoke-virtual {p2, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_b

    .line 728
    sget-object v5, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v6, "pleses insert \'messageid\'"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v8

    .line 729
    goto/16 :goto_0

    .line 731
    :cond_b
    const-string v5, "logtype"

    const/16 v5, 0x12c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p2, v10, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 732
    const-string v5, "duration"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p2, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 733
    const-string v5, "new"

    const-string v5, "1"

    invoke-virtual {p2, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 736
    :sswitch_4
    const-string v5, "number"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_c

    .line 737
    sget-object v5, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v6, "pleses insert \'number\' data"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v8

    .line 738
    goto/16 :goto_0

    .line 740
    :cond_c
    const-string v5, "messageid"

    invoke-virtual {p2, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_d

    .line 741
    sget-object v5, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v6, "pleses insert \'messageid\'"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v8

    .line 742
    goto/16 :goto_0

    .line 744
    :cond_d
    const-string v5, "logtype"

    const/16 v5, 0xc8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p2, v10, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 745
    const-string v5, "duration"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p2, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 746
    const-string v5, "new"

    const-string v5, "1"

    invoke-virtual {p2, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 749
    :sswitch_5
    const-string v5, "address"

    invoke-virtual {p2, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_e

    .line 750
    sget-object v5, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v6, "pleses insert \'address\' data"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v8

    .line 751
    goto/16 :goto_0

    .line 753
    :cond_e
    const-string v5, "address"

    invoke-virtual {p2, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 754
    .local v0, ad:Ljava/lang/String;
    const-string v5, "number"

    invoke-virtual {p2, v9, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 756
    const-string v5, "messageid"

    invoke-virtual {p2, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_f

    .line 757
    sget-object v5, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v6, "pleses insert \'messageid\'"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v8

    .line 758
    goto/16 :goto_0

    .line 760
    :cond_f
    const-string v5, "sp_type"

    invoke-virtual {p2, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_10

    .line 761
    sget-object v5, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v6, "pleses insert \'sp_type\'"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v8

    .line 762
    goto/16 :goto_0

    .line 764
    :cond_10
    const-string v5, "logtype"

    const/16 v5, 0x2bc

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p2, v10, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 765
    const-string v5, "duration"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p2, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 766
    const-string v5, "new"

    const-string v5, "1"

    invoke-virtual {p2, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 769
    .end local v0           #ad:Ljava/lang/String;
    :sswitch_6
    const-string v5, "number"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_11

    .line 770
    sget-object v5, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v6, "pleses insert \'number\' data"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v8

    .line 771
    goto/16 :goto_0

    .line 773
    :cond_11
    const-string v5, "messageid"

    invoke-virtual {p2, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_12

    .line 774
    sget-object v5, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v6, "pleses insert \'messageid\'"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v8

    .line 775
    goto/16 :goto_0

    .line 777
    :cond_12
    const-string v5, "new"

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_13

    .line 778
    const-string v5, "new"

    const-string v5, "1"

    invoke-virtual {p2, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 780
    :cond_13
    const-string v5, "logtype"

    const/16 v5, 0x190

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p2, v10, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 781
    const-string v5, "duration"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p2, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_1

    .line 784
    :sswitch_7
    const-string v5, "address"

    invoke-virtual {p2, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_14

    .line 785
    sget-object v5, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v6, "pleses insert \'address\' data"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v8

    .line 786
    goto/16 :goto_0

    .line 788
    :cond_14
    const-string v5, "address"

    invoke-virtual {p2, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 789
    .restart local v0       #ad:Ljava/lang/String;
    const-string v5, "number"

    invoke-virtual {p2, v9, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 792
    const-string v5, "messageid"

    invoke-virtual {p2, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_15

    .line 793
    sget-object v5, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v6, "pleses insert \'messageid\'"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v8

    .line 794
    goto/16 :goto_0

    .line 796
    :cond_15
    const-string v5, "account_name"

    invoke-virtual {p2, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_16

    .line 797
    sget-object v5, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v6, "pleses insert \'account_name\'"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v8

    .line 798
    goto/16 :goto_0

    .line 800
    :cond_16
    const-string v5, "sp_type"

    invoke-virtual {p2, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_17

    .line 801
    sget-object v5, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v6, "pleses insert \'sp_type\'"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v8

    .line 802
    goto/16 :goto_0

    .line 804
    :cond_17
    const-string v5, "new"

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_18

    .line 805
    const-string v5, "new"

    const-string v5, "1"

    invoke-virtual {p2, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 807
    :cond_18
    const-string v5, "logtype"

    const/16 v5, 0x19a

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p2, v10, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 808
    const-string v5, "duration"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p2, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_1

    .line 811
    .end local v0           #ad:Ljava/lang/String;
    :sswitch_8
    const-string v5, "number"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_19

    .line 812
    sget-object v5, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v6, "pleses insert \'number\' data"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v8

    .line 813
    goto/16 :goto_0

    .line 815
    :cond_19
    const-string v5, "messageid"

    invoke-virtual {p2, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1a

    .line 816
    sget-object v5, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v6, "pleses insert \'messageid\'"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v8

    .line 817
    goto/16 :goto_0

    .line 819
    :cond_1a
    const-string v5, "sp_type"

    invoke-virtual {p2, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1b

    .line 820
    sget-object v5, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v6, "pleses insert \'sp_type\'"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v8

    .line 821
    goto/16 :goto_0

    .line 823
    :cond_1b
    const-string v5, "contactid"

    invoke-virtual {p2, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1c

    move-object v5, v8

    .line 824
    goto/16 :goto_0

    .line 826
    :cond_1c
    const-string v5, "logtype"

    const/16 v5, 0x258

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p2, v10, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 827
    const-string v5, "duration"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p2, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 828
    const-string v5, "new"

    const-string v5, "1"

    invoke-virtual {p2, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 831
    :sswitch_9
    const-string v5, "logtype"

    invoke-virtual {p2, v10}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 832
    .local v1, logType:I
    const-string v5, "logtype"

    invoke-virtual {p2, v10}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1d

    .line 833
    sget-object v5, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v6, "pleses insert \'logtype\'"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v8

    .line 834
    goto/16 :goto_0

    .line 836
    :cond_1d
    const/16 v5, 0x64

    if-eq v1, v5, :cond_1e

    const/16 v5, 0x190

    if-eq v1, v5, :cond_1e

    const/16 v5, 0x258

    if-eq v1, v5, :cond_1e

    const/16 v5, 0xc8

    if-eq v1, v5, :cond_1e

    const/16 v5, 0x12c

    if-eq v1, v5, :cond_1e

    const/16 v5, 0x2bc

    if-eq v1, v5, :cond_1e

    const/16 v5, 0x1f4

    if-eq v1, v5, :cond_1e

    .line 843
    sget-object v5, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v6, "wrong \'logtype\'"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v8

    .line 844
    goto/16 :goto_0

    .line 847
    :cond_1e
    const/16 v5, 0x64

    if-eq v1, v5, :cond_1f

    const/16 v5, 0x1f4

    if-ne v1, v5, :cond_22

    .line 849
    :cond_1f
    const-string v5, "duration"

    invoke-virtual {p2, v7}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_20

    .line 850
    sget-object v5, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v6, "pleses insert \'duration\'"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v8

    .line 851
    goto/16 :goto_0

    .line 853
    :cond_20
    const-string v5, "new"

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_21

    .line 854
    const-string v5, "new"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p2, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 856
    :cond_21
    const-string v5, "frequent"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_1

    .line 858
    :cond_22
    const/16 v5, 0x190

    if-eq v1, v5, :cond_23

    const/16 v5, 0xc8

    if-eq v1, v5, :cond_23

    const/16 v5, 0x12c

    if-eq v1, v5, :cond_23

    const/16 v5, 0x258

    if-eq v1, v5, :cond_23

    const/16 v5, 0x2bc

    if-ne v1, v5, :cond_28

    .line 863
    :cond_23
    const-string v5, "messageid"

    invoke-virtual {p2, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_24

    .line 864
    sget-object v5, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v6, "pleses insert \'messageid\'"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v8

    .line 865
    goto/16 :goto_0

    .line 867
    :cond_24
    const-string v5, "sp_type"

    invoke-virtual {p2, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_25

    .line 868
    sget-object v5, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v6, "insert \'sp_type\'"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v8

    .line 869
    goto/16 :goto_0

    .line 871
    :cond_25
    const/16 v5, 0x190

    if-ne v1, v5, :cond_27

    .line 872
    const-string v5, "new"

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_26

    .line 873
    const-string v5, "new"

    const-string v5, "1"

    invoke-virtual {p2, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 879
    :cond_26
    :goto_5
    const-string v5, "duration"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p2, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_1

    .line 877
    :cond_27
    const-string v5, "new"

    const-string v5, "1"

    invoke-virtual {p2, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 881
    :cond_28
    sget-object v5, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v6, "wrong \'logtype\'"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 885
    .end local v1           #logType:I
    :sswitch_a
    const-string v5, "number"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_29

    .line 886
    sget-object v5, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v6, "pleses insert \'number\' data"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v8

    .line 887
    goto/16 :goto_0

    .line 889
    :cond_29
    const-string v5, "duration"

    invoke-virtual {p2, v7}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2a

    .line 890
    sget-object v5, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v6, "pleses insert \'duration\' data"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v8

    .line 891
    goto/16 :goto_0

    .line 893
    :cond_2a
    const-string v5, "new"

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2b

    .line 894
    const-string v5, "new"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p2, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 896
    :cond_2b
    const-string v5, "frequent"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_1

    .line 908
    :pswitch_1
    iget-object v5, p0, Lcom/sec/android/provider/logsprovider/LogsProvider;->mContentResolver:Landroid/content/ContentResolver;

    const-string v6, "number"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, p2, v6}, Lcom/sec/android/provider/logsprovider/LogsProvider;->updateLogInfoWithNumber(Landroid/content/ContentResolver;Landroid/content/ContentValues;Ljava/lang/String;)Landroid/content/ContentValues;

    goto/16 :goto_2

    .line 914
    :pswitch_2
    iget-object v5, p0, Lcom/sec/android/provider/logsprovider/LogsProvider;->mContentResolver:Landroid/content/ContentResolver;

    const-string v6, "number"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, p2, v6}, Lcom/sec/android/provider/logsprovider/LogsProvider;->updateLogInfoWithNumberAndEmail(Landroid/content/ContentResolver;Landroid/content/ContentValues;Ljava/lang/String;)Landroid/content/ContentValues;

    goto/16 :goto_2

    .line 917
    :pswitch_3
    iget-object v5, p0, Lcom/sec/android/provider/logsprovider/LogsProvider;->mContentResolver:Landroid/content/ContentResolver;

    const-string v6, "number"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, p2, v6}, Lcom/sec/android/provider/logsprovider/LogsProvider;->updateLogInfoWithIM(Landroid/content/ContentResolver;Landroid/content/ContentValues;Ljava/lang/String;)Landroid/content/ContentValues;

    goto/16 :goto_2

    .line 929
    .restart local v3       #rowId:J
    :sswitch_b
    invoke-virtual {p0}, Lcom/sec/android/provider/logsprovider/LogsProvider;->notifyAllCallsChange()V

    goto/16 :goto_3

    .line 932
    :sswitch_c
    invoke-virtual {p0}, Lcom/sec/android/provider/logsprovider/LogsProvider;->notifyAllCallsChange()V

    .line 933
    invoke-virtual {p0}, Lcom/sec/android/provider/logsprovider/LogsProvider;->notifyCallChange()V

    goto/16 :goto_3

    .line 946
    :sswitch_d
    iget-object v5, p0, Lcom/sec/android/provider/logsprovider/LogsProvider;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v6, Lcom/sec/android/provider/logsprovider/LogsColumn$Logs;->CONTENT_URI:Landroid/net/Uri;

    const-string v7, "_id in (select _id from logs where logtype=100 OR logtype=500 OR logtype=800 ORDER BY date DESC limit -1 offset 500)"

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_4

    .line 954
    :sswitch_e
    iget-object v5, p0, Lcom/sec/android/provider/logsprovider/LogsProvider;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v6, Lcom/sec/android/provider/logsprovider/LogsColumn$Logs;->CONTENT_URI:Landroid/net/Uri;

    const-string v7, "_id in (select _id from logs where logtype=300 OR logtype=200 ORDER BY date DESC limit -1 offset 500)"

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_4

    .line 960
    :sswitch_f
    iget-object v5, p0, Lcom/sec/android/provider/logsprovider/LogsProvider;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v6, Lcom/sec/android/provider/logsprovider/LogsColumn$Logs;->CONTENT_URI:Landroid/net/Uri;

    const-string v7, "_id in (select _id from logs where logtype=700 ORDER BY date DESC limit -1 offset 500)"

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_4

    .line 966
    :sswitch_10
    iget-object v5, p0, Lcom/sec/android/provider/logsprovider/LogsProvider;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v6, Lcom/sec/android/provider/logsprovider/LogsColumn$Logs;->CONTENT_URI:Landroid/net/Uri;

    const-string v7, "_id in (select _id from logs where logtype=400 OR logtype=410 ORDER BY date DESC limit -1 offset 500)"

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_4

    .line 972
    :sswitch_11
    iget-object v5, p0, Lcom/sec/android/provider/logsprovider/LogsProvider;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v6, Lcom/sec/android/provider/logsprovider/LogsColumn$Logs;->CONTENT_URI:Landroid/net/Uri;

    const-string v7, "_id in (select _id from logs where logtype=600 ORDER BY date DESC limit -1 offset 3000)"

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_4

    .line 979
    :cond_2c
    sget-object v5, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v6, "insert falled. check input data"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v8

    .line 981
    goto/16 :goto_0

    .line 672
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_9
        0x7 -> :sswitch_4
        0x9 -> :sswitch_3
        0xb -> :sswitch_6
        0xd -> :sswitch_0
        0xe -> :sswitch_1
        0x13 -> :sswitch_7
        0x14 -> :sswitch_2
        0x15 -> :sswitch_8
        0x17 -> :sswitch_5
        0x23 -> :sswitch_a
    .end sparse-switch

    .line 904
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 924
    :sswitch_data_1
    .sparse-switch
        0x7 -> :sswitch_b
        0x9 -> :sswitch_b
        0xd -> :sswitch_b
        0xe -> :sswitch_b
        0x14 -> :sswitch_c
    .end sparse-switch

    .line 941
    :sswitch_data_2
    .sparse-switch
        0x7 -> :sswitch_e
        0x9 -> :sswitch_e
        0xb -> :sswitch_10
        0xd -> :sswitch_d
        0xe -> :sswitch_d
        0x13 -> :sswitch_10
        0x14 -> :sswitch_d
        0x15 -> :sswitch_11
        0x17 -> :sswitch_f
        0x23 -> :sswitch_d
    .end sparse-switch
.end method

.method protected notifyAllCallsChange()V
    .locals 4

    .prologue
    .line 1661
    invoke-virtual {p0}, Lcom/sec/android/provider/logsprovider/LogsProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://logs/allcalls"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 1662
    return-void
.end method

.method protected notifyCallChange()V
    .locals 4

    .prologue
    .line 1658
    invoke-virtual {p0}, Lcom/sec/android/provider/logsprovider/LogsProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CallLog;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 1659
    return-void
.end method

.method protected notifyChange()V
    .locals 4

    .prologue
    .line 1655
    invoke-virtual {p0}, Lcom/sec/android/provider/logsprovider/LogsProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/provider/logsprovider/LogsColumn$Logs;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 1656
    return-void
.end method

.method public onAccountsUpdated([Landroid/accounts/Account;)V
    .locals 26
    .parameter "arg0"

    .prologue
    .line 360
    const/16 v17, 0x0

    .line 361
    .local v17, accountsOnMgr:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->mContext:Landroid/content/Context;

    move-object v5, v0

    invoke-static {v5}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v18

    .line 363
    .local v18, am:Landroid/accounts/AccountManager;
    if-nez v18, :cond_1

    .line 447
    :cond_0
    :goto_0
    return-void

    .line 366
    :cond_1
    const/16 v25, 0x0

    .local v25, spType:I
    :goto_1
    sget-object v5, Lcom/sec/android/provider/logsprovider/LogsProvider;->sSnsAccountType:[Ljava/lang/String;

    array-length v5, v5

    move/from16 v0, v25

    move v1, v5

    if-ge v0, v1, :cond_3

    .line 367
    sget-object v5, Lcom/sec/android/provider/logsprovider/LogsProvider;->sSnsAccountType:[Ljava/lang/String;

    aget-object v5, v5, v25

    move-object/from16 v0, v18

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v13

    .line 368
    .local v13, accountSNS:[Landroid/accounts/Account;
    array-length v5, v13

    if-nez v5, :cond_2

    .line 369
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    .line 370
    .local v24, sb:Ljava/lang/StringBuilder;
    const-string v5, "logtype=600"

    move-object/from16 v0, v24

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " AND sp_type="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v24

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 374
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object v5, v0

    const-string v6, "logs"

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 375
    sget-object v5, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onAccountsUpdated: Delete SNS log : spType = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 378
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 366
    .end local v24           #sb:Ljava/lang/StringBuilder;
    :cond_2
    add-int/lit8 v25, v25, 0x1

    goto/16 :goto_1

    .line 378
    .restart local v24       #sb:Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v5

    .line 383
    .end local v13           #accountSNS:[Landroid/accounts/Account;
    .end local v24           #sb:Ljava/lang/StringBuilder;
    :cond_3
    const/16 v25, 0x0

    :goto_2
    sget-object v5, Lcom/sec/android/provider/logsprovider/LogsProvider;->sSevenAccountType:[Ljava/lang/String;

    array-length v5, v5

    move/from16 v0, v25

    move v1, v5

    if-ge v0, v1, :cond_5

    .line 384
    sget-object v5, Lcom/sec/android/provider/logsprovider/LogsProvider;->sSevenAccountType:[Ljava/lang/String;

    aget-object v5, v5, v25

    move-object/from16 v0, v18

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v14

    .line 385
    .local v14, accountSeven:[Landroid/accounts/Account;
    if-eqz v14, :cond_4

    .line 386
    array-length v5, v14

    add-int v17, v17, v5

    .line 383
    :cond_4
    add-int/lit8 v25, v25, 0x1

    goto :goto_2

    .line 389
    .end local v14           #accountSeven:[Landroid/accounts/Account;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->mDbHelper:Lcom/sec/android/provider/logsprovider/LogsProvider$DatabaseHelper;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/sec/android/provider/logsprovider/LogsProvider$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 390
    .local v4, db:Landroid/database/sqlite/SQLiteDatabase;
    const/16 v20, 0x0

    .line 391
    .local v20, c:Landroid/database/Cursor;
    const-string v5, "logs"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "_id"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string v8, "logtype"

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-string v8, "account_name"

    aput-object v8, v6, v7

    const/4 v7, 0x3

    const-string v8, "sp_type"

    aput-object v8, v6, v7

    const-string v7, "logtype=410 AND sp_type != 4 AND sp_type != 3 AND sp_type !=  0"

    const/4 v8, 0x0

    const-string v9, "account_name"

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v4 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    .line 402
    const/16 v16, -0x1

    .line 403
    .local v16, accountsOnLogs:I
    if-eqz v20, :cond_0

    .line 404
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->getCount()I

    move-result v16

    .line 408
    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_b

    if-lez v16, :cond_b

    .line 410
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToFirst()Z

    .line 412
    const/16 v21, 0x0

    .local v21, i:I
    move/from16 v22, v21

    .end local v21           #i:I
    .local v22, i:I
    :goto_3
    add-int/lit8 v21, v22, 0x1

    .end local v22           #i:I
    .restart local v21       #i:I
    move/from16 v0, v22

    move/from16 v1, v16

    if-ge v0, v1, :cond_b

    .line 413
    const/16 v19, 0x0

    .line 414
    .local v19, bExist:Z
    const/4 v15, 0x0

    .line 415
    .local v15, accounts:Ljava/lang/String;
    const/4 v5, 0x2

    move-object/from16 v0, v20

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 417
    if-nez v15, :cond_7

    .line 412
    :cond_6
    :goto_4
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToNext()Z

    move/from16 v22, v21

    .end local v21           #i:I
    .restart local v22       #i:I
    goto :goto_3

    .line 420
    .end local v22           #i:I
    .restart local v21       #i:I
    :cond_7
    const/16 v25, 0x0

    :goto_5
    sget-object v5, Lcom/sec/android/provider/logsprovider/LogsProvider;->sSevenAccountType:[Ljava/lang/String;

    array-length v5, v5

    move/from16 v0, v25

    move v1, v5

    if-ge v0, v1, :cond_a

    .line 421
    if-nez v19, :cond_8

    .line 422
    sget-object v5, Lcom/sec/android/provider/logsprovider/LogsProvider;->sSevenAccountType:[Ljava/lang/String;

    aget-object v5, v5, v25

    move-object/from16 v0, v18

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v14

    .line 423
    .restart local v14       #accountSeven:[Landroid/accounts/Account;
    if-eqz v14, :cond_8

    .line 424
    array-length v5, v14

    if-lez v5, :cond_8

    .line 426
    const/16 v23, 0x0

    .local v23, index:I
    :goto_6
    array-length v5, v14

    move/from16 v0, v23

    move v1, v5

    if-ge v0, v1, :cond_8

    .line 427
    aget-object v5, v14, v23

    iget-object v5, v5, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v15, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    sget-object v5, Lcom/sec/android/provider/logsprovider/LogsProvider;->sSevenAccountType:[Ljava/lang/String;

    aget-object v5, v5, v25

    aget-object v6, v14, v23

    iget-object v6, v6, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 429
    const/16 v19, 0x1

    .line 430
    sget-object v5, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is existed on AccountManager and sp_type is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/sec/android/provider/logsprovider/LogsProvider;->sSevenAccountType:[Ljava/lang/String;

    aget-object v7, v7, v25

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    .end local v14           #accountSeven:[Landroid/accounts/Account;
    .end local v23           #index:I
    :cond_8
    add-int/lit8 v25, v25, 0x1

    goto :goto_5

    .line 426
    .restart local v14       #accountSeven:[Landroid/accounts/Account;
    .restart local v23       #index:I
    :cond_9
    add-int/lit8 v23, v23, 0x1

    goto :goto_6

    .line 439
    .end local v14           #accountSeven:[Landroid/accounts/Account;
    .end local v23           #index:I
    :cond_a
    if-nez v19, :cond_6

    .line 441
    const-string v5, "content://logs/email_seven"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "account_name=\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v6

    move-object v3, v7

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/provider/logsprovider/LogsProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 442
    sget-object v5, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Delete from Logs account_name = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 446
    .end local v15           #accounts:Ljava/lang/String;
    .end local v19           #bExist:Z
    .end local v21           #i:I
    :cond_b
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method

.method public onCreate()Z
    .locals 3

    .prologue
    .line 322
    invoke-virtual {p0}, Lcom/sec/android/provider/logsprovider/LogsProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/provider/logsprovider/LogsProvider;->mContext:Landroid/content/Context;

    .line 323
    new-instance v0, Lcom/sec/android/provider/logsprovider/LogsProvider$DatabaseHelper;

    invoke-virtual {p0}, Lcom/sec/android/provider/logsprovider/LogsProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/provider/logsprovider/LogsProvider$DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/provider/logsprovider/LogsProvider;->mDbHelper:Lcom/sec/android/provider/logsprovider/LogsProvider$DatabaseHelper;

    .line 324
    iget-object v0, p0, Lcom/sec/android/provider/logsprovider/LogsProvider;->mDbHelper:Lcom/sec/android/provider/logsprovider/LogsProvider$DatabaseHelper;

    invoke-virtual {v0}, Lcom/sec/android/provider/logsprovider/LogsProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/provider/logsprovider/LogsProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 325
    new-instance v0, Landroid/database/DatabaseUtils$InsertHelper;

    iget-object v1, p0, Lcom/sec/android/provider/logsprovider/LogsProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "logs"

    invoke-direct {v0, v1, v2}, Landroid/database/DatabaseUtils$InsertHelper;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/provider/logsprovider/LogsProvider;->mLogInserter:Landroid/database/DatabaseUtils$InsertHelper;

    .line 326
    iget-object v0, p0, Lcom/sec/android/provider/logsprovider/LogsProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/provider/logsprovider/LogsProvider;->mContentResolver:Landroid/content/ContentResolver;

    .line 327
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    invoke-virtual {p0}, Lcom/sec/android/provider/logsprovider/LogsProvider;->verifyAccounts()V

    .line 330
    const/4 v0, 0x1

    return v0
.end method

.method public onLowMemory()V
    .locals 2

    .prologue
    .line 451
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v1, "LOWMEMORY"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    invoke-super {p0}, Landroid/content/ContentProvider;->onLowMemory()V

    .line 453
    return-void
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 25
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 458
    new-instance v11, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v11}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 459
    .local v11, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    sget-object v3, Lcom/sec/android/provider/logsprovider/LogsProvider;->sURIMatcher:Landroid/content/UriMatcher;

    move-object v0, v3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v22

    .line 462
    .local v22, match:I
    packed-switch v22, :pswitch_data_0

    .line 491
    :pswitch_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown URL "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 494
    :pswitch_1
    const/4 v10, 0x0

    .line 495
    .local v10, groupby:Ljava/lang/String;
    const-string v3, "logs"

    invoke-virtual {v11, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 496
    packed-switch v22, :pswitch_data_1

    .line 609
    :pswitch_2
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown URL "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 499
    :pswitch_3
    const-string v10, "number"

    .line 501
    :pswitch_4
    const-string v3, "logs.logtype=100"

    invoke-virtual {v11, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 502
    const-string v3, " OR logs.logtype=500"

    invoke-virtual {v11, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 503
    const-string v3, " OR logs.logtype=800"

    invoke-virtual {v11, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 504
    const-string v3, " OR (logs.logtype=200 AND number NOT IN (SELECT number FROM logs WHERE number LIKE \'%@%\'))"

    invoke-virtual {v11, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 505
    const-string v3, " OR logs.logtype=300"

    invoke-virtual {v11, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 612
    .end local p1
    :goto_0
    :pswitch_5
    const/16 v3, 0x21

    move/from16 v0, v22

    move v1, v3

    if-ne v0, v1, :cond_3

    .line 613
    sget-object v3, Lcom/sec/android/provider/logsprovider/LogsProvider;->sIdSearchProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v11, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 622
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->mDbHelper:Lcom/sec/android/provider/logsprovider/LogsProvider$DatabaseHelper;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/sec/android/provider/logsprovider/LogsProvider$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    .line 624
    .local v5, db:Landroid/database/sqlite/SQLiteDatabase;
    if-nez p5, :cond_0

    .line 625
    const-string p5, "date DESC"

    .line 629
    :cond_0
    const/16 v20, 0x0

    .line 630
    .local v20, c:Landroid/database/Cursor;
    const/16 v3, 0xf

    move/from16 v0, v22

    move v1, v3

    if-ne v0, v1, :cond_5

    .line 631
    const-string v6, "logs"

    const/4 v3, 0x6

    new-array v7, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "1 as _id"

    aput-object v4, v7, v3

    const/4 v3, 0x1

    const-string v4, "name"

    aput-object v4, v7, v3

    const/4 v3, 0x2

    const-string v4, "number"

    aput-object v4, v7, v3

    const/4 v3, 0x3

    const-string v4, "COUNT(number)AS count"

    aput-object v4, v7, v3

    const/4 v3, 0x4

    const-string v4, "contactid"

    aput-object v4, v7, v3

    const/4 v3, 0x5

    const-string v4, "name_reversed"

    aput-object v4, v7, v3

    const-string v8, "type=2 AND frequent=1"

    const/4 v9, 0x0

    const/4 v11, 0x0

    const-string v12, "count desc"

    .end local v11           #qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v13, "12"

    invoke-virtual/range {v5 .. v13}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    .line 646
    :goto_2
    if-eqz v20, :cond_1

    .line 647
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/provider/logsprovider/LogsProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/sec/android/provider/logsprovider/LogsColumn$Logs;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v20

    move-object v1, v3

    move-object v2, v4

    invoke-interface {v0, v1, v2}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    :cond_1
    move-object/from16 v3, v20

    .line 649
    .end local v5           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v20           #c:Landroid/database/Cursor;
    .end local p2
    :goto_3
    return-object v3

    .line 511
    .restart local v11       #qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    .restart local p1
    .restart local p2
    :pswitch_6
    const-string v3, "logs left outer join sns_msg_receiver_map on logs.sns_pkey=sns_msg_receiver_map.message_id"

    invoke-virtual {v11, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 512
    const-string v10, "logs._id"

    .line 513
    goto :goto_0

    .line 517
    :pswitch_7
    const-string v3, "(logs.logtype=100"

    invoke-virtual {v11, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 518
    const-string v3, "OR logs.logtype=500)"

    invoke-virtual {v11, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 519
    const-string v3, " AND logs._id="

    invoke-virtual {v11, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 520
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/CharSequence;

    move-object v0, v11

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 524
    .restart local p1
    :pswitch_8
    const-string v10, "number"

    .line 525
    goto/16 :goto_0

    .line 528
    :pswitch_9
    const-string v3, "logs.logtype=300"

    invoke-virtual {v11, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 532
    :pswitch_a
    const-string v3, "logs.logtype=200"

    invoke-virtual {v11, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 536
    :pswitch_b
    const-string v3, "logs.logtype=400 OR logs.logtype=410"

    invoke-virtual {v11, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 541
    :pswitch_c
    const-string v3, "logs.logtype=410"

    invoke-virtual {v11, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 545
    :pswitch_d
    const-string v3, "logs.logtype=500"

    invoke-virtual {v11, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 549
    :pswitch_e
    const-string v3, "logs.logtype=800"

    invoke-virtual {v11, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 553
    :pswitch_f
    const-string v3, "logs.logtype=600"

    invoke-virtual {v11, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 557
    :pswitch_10
    const-string v3, "logs.logtype=700"

    invoke-virtual {v11, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 575
    :pswitch_11
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x2

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    .end local p2
    check-cast p2, Ljava/lang/String;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v23

    .line 576
    .local v23, sp:I
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x3

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    .line 577
    .local v21, id:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/receiver"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 578
    .local v24, uriPath:Ljava/lang/String;
    const/4 v4, 0x0

    .line 579
    .local v4, msgReceiver:Landroid/net/Uri;
    if-eqz v23, :cond_2

    .line 580
    sget-object v3, Lcom/sec/android/provider/logsprovider/LogsProvider;->SNS_GET_MSG_RECEIVERS:Landroid/net/Uri;

    move-object v0, v3

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 584
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->mContentResolver:Landroid/content/ContentResolver;

    move-object v3, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    goto/16 :goto_3

    .line 582
    :cond_2
    sget-object v3, Lcom/sec/android/provider/logsprovider/LogsProvider;->SNS_GET_THREADMSG_RECEIVERS:Landroid/net/Uri;

    move-object v0, v3

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    goto :goto_4

    .line 600
    .end local v4           #msgReceiver:Landroid/net/Uri;
    .end local v21           #id:Ljava/lang/String;
    .end local v23           #sp:I
    .end local v24           #uriPath:Ljava/lang/String;
    .restart local p2
    :pswitch_12
    const-string v3, "logs._id="

    invoke-virtual {v11, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 601
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/CharSequence;

    move-object v0, v11

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 605
    .restart local p1
    :pswitch_13
    const-string v3, "duration_table"

    invoke-virtual {v11, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 615
    .end local p1
    :cond_3
    const/16 v3, 0x22

    move/from16 v0, v22

    move v1, v3

    if-ne v0, v1, :cond_4

    .line 616
    sget-object v3, Lcom/sec/android/provider/logsprovider/LogsProvider;->sDurationProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v11, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    goto/16 :goto_1

    .line 618
    :cond_4
    sget-object v3, Lcom/sec/android/provider/logsprovider/LogsProvider;->sLogsProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v11, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    goto/16 :goto_1

    .line 640
    .restart local v5       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v20       #c:Landroid/database/Cursor;
    :cond_5
    const/16 v3, 0x22

    move/from16 v0, v22

    move v1, v3

    if-ne v0, v1, :cond_6

    .line 641
    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v12, v5

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    move-object/from16 v15, p4

    invoke-virtual/range {v11 .. v19}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    goto/16 :goto_2

    .line 643
    :cond_6
    const/16 v17, 0x0

    const/16 v19, 0x0

    move-object v12, v5

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    move-object/from16 v15, p4

    move-object/from16 v16, v10

    move-object/from16 v18, p5

    invoke-virtual/range {v11 .. v19}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    goto/16 :goto_2

    .line 462
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 496
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_12
        :pswitch_2
        :pswitch_7
        :pswitch_2
        :pswitch_2
        :pswitch_a
        :pswitch_2
        :pswitch_9
        :pswitch_2
        :pswitch_b
        :pswitch_2
        :pswitch_d
        :pswitch_e
        :pswitch_8
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_c
        :pswitch_4
        :pswitch_f
        :pswitch_2
        :pswitch_10
        :pswitch_2
        :pswitch_11
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_6
        :pswitch_13
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 7
    .parameter "url"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 1099
    iget-object v4, p0, Lcom/sec/android/provider/logsprovider/LogsProvider;->mDbHelper:Lcom/sec/android/provider/logsprovider/LogsProvider$DatabaseHelper;

    invoke-virtual {v4}, Lcom/sec/android/provider/logsprovider/LogsProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 1101
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    sget-object v4, Lcom/sec/android/provider/logsprovider/LogsProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v4, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    .line 1102
    .local v2, matchedUriId:I
    sparse-switch v2, :sswitch_data_0

    .line 1121
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot update URL: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1114
    :sswitch_0
    move-object v3, p3

    .line 1123
    .local v3, where:Ljava/lang/String;
    :goto_0
    const/4 v0, 0x0

    .line 1124
    .local v0, count:I
    const-string v4, "number"

    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1125
    sget-object v4, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1126
    const/4 v4, -0x1

    .line 1155
    :goto_1
    return v4

    .line 1117
    .end local v0           #count:I
    .end local v3           #where:Ljava/lang/String;
    :sswitch_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v6, 0x1

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p3, v4}, Lcom/sec/android/provider/logsprovider/LogsProvider;->concatenateWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1119
    .restart local v3       #where:Ljava/lang/String;
    goto :goto_0

    .line 1128
    .restart local v0       #count:I
    :cond_0
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1130
    const/16 v4, 0x22

    if-ne v2, v4, :cond_2

    .line 1131
    :try_start_0
    const-string v4, "duration_table"

    invoke-virtual {v1, v4, p2, v3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 1135
    :goto_2
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1137
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1140
    if-lez v0, :cond_1

    .line 1141
    sparse-switch v2, :sswitch_data_1

    .line 1153
    :goto_3
    invoke-virtual {p0}, Lcom/sec/android/provider/logsprovider/LogsProvider;->notifyChange()V

    :cond_1
    move v4, v0

    .line 1155
    goto :goto_1

    .line 1133
    :cond_2
    :try_start_1
    const-string v4, "logs"

    invoke-virtual {v1, v4, p2, v3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_2

    .line 1137
    :catchall_0
    move-exception v4

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v4

    .line 1145
    :sswitch_2
    invoke-virtual {p0}, Lcom/sec/android/provider/logsprovider/LogsProvider;->notifyAllCallsChange()V

    goto :goto_3

    .line 1148
    :sswitch_3
    invoke-virtual {p0}, Lcom/sec/android/provider/logsprovider/LogsProvider;->notifyAllCallsChange()V

    .line 1149
    invoke-virtual {p0}, Lcom/sec/android/provider/logsprovider/LogsProvider;->notifyCallChange()V

    goto :goto_3

    .line 1102
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x4 -> :sswitch_1
        0x7 -> :sswitch_0
        0x9 -> :sswitch_0
        0xb -> :sswitch_0
        0xd -> :sswitch_0
        0xe -> :sswitch_0
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x15 -> :sswitch_0
        0x17 -> :sswitch_0
        0x22 -> :sswitch_0
    .end sparse-switch

    .line 1141
    :sswitch_data_1
    .sparse-switch
        0x7 -> :sswitch_2
        0x9 -> :sswitch_2
        0xd -> :sswitch_2
        0x14 -> :sswitch_3
    .end sparse-switch
.end method

.method protected verifyAccounts()V
    .locals 3

    .prologue
    .line 334
    invoke-virtual {p0}, Lcom/sec/android/provider/logsprovider/LogsProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Landroid/accounts/AccountManager;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z)V

    .line 335
    invoke-virtual {p0}, Lcom/sec/android/provider/logsprovider/LogsProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/provider/logsprovider/LogsProvider;->onAccountsUpdated([Landroid/accounts/Account;)V

    .line 336
    return-void
.end method
