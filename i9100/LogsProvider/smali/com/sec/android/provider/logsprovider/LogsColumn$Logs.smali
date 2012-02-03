.class public final Lcom/sec/android/provider/logsprovider/LogsColumn$Logs;
.super Ljava/lang/Object;
.source "LogsColumn.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/provider/logsprovider/LogsColumn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Logs"
.end annotation


# static fields
.field public static final ADD_CONTENT_URI:Landroid/net/Uri;

.field public static final CALL_PROJECTION:[Ljava/lang/String;

.field public static final CONTACT_PROJECTION:[Ljava/lang/String;

.field public static final CONTENT_FILTER_URI:Landroid/net/Uri;

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final EMAIL_PROJECTION:[Ljava/lang/String;

.field public static final LOG_PROJECTION:[Ljava/lang/String;

.field public static final PHONES_PROJECTION:[Ljava/lang/String;

.field public static PRESENTATION_ALLOWED:I

.field public static PRESENTATION_PAYPHONE:I

.field public static PRESENTATION_RESTRICTED:I

.field public static PRESENTATION_UNKNOWN:I

.field public static final SNS_PROJECTION:[Ljava/lang/String;

.field public static final SNS_RECEIVER_MAP_PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 60
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v5

    const-string v1, "number"

    aput-object v1, v0, v3

    const-string v1, "date"

    aput-object v1, v0, v4

    const-string v1, "duration"

    aput-object v1, v0, v6

    const-string v1, "new"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "type"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "numbertype"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "numberlabel"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/provider/logsprovider/LogsColumn$Logs;->CALL_PROJECTION:[Ljava/lang/String;

    .line 72
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v5

    const-string v1, "number"

    aput-object v1, v0, v3

    const-string v1, "date"

    aput-object v1, v0, v4

    const-string v1, "duration"

    aput-object v1, v0, v6

    const-string v1, "type"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "new"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "numbertype"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "numberlabel"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "messageid"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "cityid"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/provider/logsprovider/LogsColumn$Logs;->LOG_PROJECTION:[Ljava/lang/String;

    .line 88
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v5

    const-string v1, "display_name"

    aput-object v1, v0, v3

    const-string v1, "type"

    aput-object v1, v0, v4

    const-string v1, "label"

    aput-object v1, v0, v6

    const-string v1, "number"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "display_name"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/provider/logsprovider/LogsColumn$Logs;->PHONES_PROJECTION:[Ljava/lang/String;

    .line 97
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v5

    const-string v1, "service_provider"

    aput-object v1, v0, v3

    const-string v1, "message_id"

    aput-object v1, v0, v4

    const-string v1, "title"

    aput-object v1, v0, v6

    const-string v1, "content"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "send_time"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "sender_id"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "sender_name"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "folder"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "thread_id"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "representative_receiver_id"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "representative_receiver"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "receiver_count"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/provider/logsprovider/LogsColumn$Logs;->SNS_PROJECTION:[Ljava/lang/String;

    .line 113
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v5

    const-string v1, "message_id"

    aput-object v1, v0, v3

    const-string v1, "receiver_id"

    aput-object v1, v0, v4

    const-string v1, "receiver_name"

    aput-object v1, v0, v6

    sput-object v0, Lcom/sec/android/provider/logsprovider/LogsColumn$Logs;->SNS_RECEIVER_MAP_PROJECTION:[Ljava/lang/String;

    .line 120
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "contact_id"

    aput-object v1, v0, v5

    const-string v1, "lookup"

    aput-object v1, v0, v3

    sput-object v0, Lcom/sec/android/provider/logsprovider/LogsColumn$Logs;->EMAIL_PROJECTION:[Ljava/lang/String;

    .line 125
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v5

    const-string v1, "display_name"

    aput-object v1, v0, v3

    const-string v1, "display_name"

    aput-object v1, v0, v4

    sput-object v0, Lcom/sec/android/provider/logsprovider/LogsColumn$Logs;->CONTACT_PROJECTION:[Ljava/lang/String;

    .line 131
    const-string v0, "content://logs/historys"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/provider/logsprovider/LogsColumn$Logs;->CONTENT_URI:Landroid/net/Uri;

    .line 134
    const-string v0, "content://logs/addcall"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/provider/logsprovider/LogsColumn$Logs;->ADD_CONTENT_URI:Landroid/net/Uri;

    .line 137
    const-string v0, "content://logs/historys/filter"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/provider/logsprovider/LogsColumn$Logs;->CONTENT_FILTER_URI:Landroid/net/Uri;

    .line 249
    sput v3, Lcom/sec/android/provider/logsprovider/LogsColumn$Logs;->PRESENTATION_ALLOWED:I

    .line 250
    sput v4, Lcom/sec/android/provider/logsprovider/LogsColumn$Logs;->PRESENTATION_RESTRICTED:I

    .line 251
    sput v6, Lcom/sec/android/provider/logsprovider/LogsColumn$Logs;->PRESENTATION_UNKNOWN:I

    .line 252
    sput v7, Lcom/sec/android/provider/logsprovider/LogsColumn$Logs;->PRESENTATION_PAYPHONE:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
