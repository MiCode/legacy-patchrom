.class public Lcom/android/providers/telephony/DlutProvider;
.super Landroid/content/ContentProvider;
.source "DlutProvider.java"


# static fields
.field private static DBG:Z = false

.field private static final MCC_IDD:I = 0x1

.field private static final MCC_IDD_ID:I = 0x8

.field private static final MCC_LOOKUP_TABLE:I = 0x2

.field private static final MCC_LOOKUP_TABLE_ID:I = 0x9

.field private static final MCC_SID_CONFLICT:I = 0x3

.field private static final MCC_SID_CONFLICT_ID:I = 0xa

.field private static final MCC_SID_RANGE:I = 0x4

.field private static final MCC_SID_RANGE_ID:I = 0xb

.field private static final NANP_AREA_CODE:I = 0x5

.field private static final NANP_AREA_CODE_ID:I = 0xc

.field public static final PATH_MCC_IDD:Ljava/lang/String; = "idd"

.field public static final PATH_MCC_LOOKUP_TABLE:Ljava/lang/String; = "lookup"

.field public static final PATH_MCC_SID_CONFLICT:Ljava/lang/String; = "conflict"

.field public static final PATH_MCC_SID_RANGE:Ljava/lang/String; = "range"

.field public static final PATH_NANP_AREA_CODE:Ljava/lang/String; = "nanp"

.field public static final PATH_UNRESOLVABLE_CONFLICT:Ljava/lang/String; = "unresolve"

.field public static final PATH_USERADD_COUNTRY:Ljava/lang/String; = "useradd"

.field public static final TABLE_MCC_IDD:Ljava/lang/String; = "mcc_idd"

.field public static final TABLE_MCC_LOOKUP_TABLE:Ljava/lang/String; = "mcc_lookup_table"

.field public static final TABLE_MCC_SID_CONFLICT:Ljava/lang/String; = "mcc_sid_conflict"

.field public static final TABLE_MCC_SID_RANGE:Ljava/lang/String; = "mcc_sid_range"

.field public static final TABLE_NANP_AREA_CODE:Ljava/lang/String; = "nanp_area_code"

.field public static final TABLE_UNRESOLVABLE_CONFLICT:Ljava/lang/String; = "unresolvable_conflict"

.field public static final TABLE_USERADD_COUNTRY:Ljava/lang/String; = "useradd_country"

.field private static final TAG:Ljava/lang/String; = "DlutProvider"

.field private static final UNRESOLVABLE_CONFLICT:I = 0x6

.field private static final UNRESOLVABLE_CONFLICT_ID:I = 0xd

.field private static final USERADD_COUNTRY:I = 0x7

.field private static final USERADD_COUNTRY_ID:I = 0xe

.field private static final sConflictProjectionMap:Ljava/util/HashMap;
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

.field private static final sIddProjectionMap:Ljava/util/HashMap;
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

.field private static final sLookupProjectionMap:Ljava/util/HashMap;
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

.field private static final sNanpProjectionMap:Ljava/util/HashMap;
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

.field private static final sRangeProjectionMap:Ljava/util/HashMap;
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

.field private static final sURIMatcher:Landroid/content/UriMatcher;

.field private static final sUnresolveProjectionMap:Ljava/util/HashMap;
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

.field private static final sUseraddProjectionMap:Ljava/util/HashMap;
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


# instance fields
.field private mDbHelper:Lcom/android/providers/telephony/DlutDatabaseHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const-string v7, "area_code"

    const-string v6, "idd"

    const-string v5, "mcc"

    const-string v4, "dlut"

    const-string v3, "_id"

    .line 31
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/providers/telephony/DlutProvider;->DBG:Z

    .line 65
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/providers/telephony/DlutProvider;->sURIMatcher:Landroid/content/UriMatcher;

    .line 76
    sget-object v0, Lcom/android/providers/telephony/DlutProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "dlut"

    const-string v1, "idd"

    const/4 v1, 0x1

    invoke-virtual {v0, v4, v6, v1}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 77
    sget-object v0, Lcom/android/providers/telephony/DlutProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "dlut"

    const-string v1, "lookup"

    const/4 v2, 0x2

    invoke-virtual {v0, v4, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 78
    sget-object v0, Lcom/android/providers/telephony/DlutProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "dlut"

    const-string v1, "conflict"

    const/4 v2, 0x3

    invoke-virtual {v0, v4, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 79
    sget-object v0, Lcom/android/providers/telephony/DlutProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "dlut"

    const-string v1, "range"

    const/4 v2, 0x4

    invoke-virtual {v0, v4, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 80
    sget-object v0, Lcom/android/providers/telephony/DlutProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "dlut"

    const-string v1, "nanp"

    const/4 v2, 0x5

    invoke-virtual {v0, v4, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 81
    sget-object v0, Lcom/android/providers/telephony/DlutProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "dlut"

    const-string v1, "unresolve"

    const/4 v2, 0x6

    invoke-virtual {v0, v4, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 82
    sget-object v0, Lcom/android/providers/telephony/DlutProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "dlut"

    const-string v1, "useradd"

    const/4 v2, 0x7

    invoke-virtual {v0, v4, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 83
    sget-object v0, Lcom/android/providers/telephony/DlutProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "dlut"

    const-string v1, "idd/#"

    const/16 v2, 0x8

    invoke-virtual {v0, v4, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 84
    sget-object v0, Lcom/android/providers/telephony/DlutProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "dlut"

    const-string v1, "lookup/#"

    const/16 v2, 0x9

    invoke-virtual {v0, v4, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 85
    sget-object v0, Lcom/android/providers/telephony/DlutProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "dlut"

    const-string v1, "conflict/#"

    const/16 v2, 0xa

    invoke-virtual {v0, v4, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 86
    sget-object v0, Lcom/android/providers/telephony/DlutProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "dlut"

    const-string v1, "range/#"

    const/16 v2, 0xb

    invoke-virtual {v0, v4, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 87
    sget-object v0, Lcom/android/providers/telephony/DlutProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "dlut"

    const-string v1, "nanp/#"

    const/16 v2, 0xc

    invoke-virtual {v0, v4, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 88
    sget-object v0, Lcom/android/providers/telephony/DlutProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "dlut"

    const-string v1, "unresolve/#"

    const/16 v2, 0xd

    invoke-virtual {v0, v4, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 89
    sget-object v0, Lcom/android/providers/telephony/DlutProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "dlut"

    const-string v1, "useradd/#"

    const/16 v2, 0xe

    invoke-virtual {v0, v4, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 91
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/providers/telephony/DlutProvider;->sIddProjectionMap:Ljava/util/HashMap;

    .line 92
    sget-object v0, Lcom/android/providers/telephony/DlutProvider;->sIddProjectionMap:Ljava/util/HashMap;

    const-string v1, "_id"

    const-string v1, "_id"

    invoke-virtual {v0, v3, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Lcom/android/providers/telephony/DlutProvider;->sIddProjectionMap:Ljava/util/HashMap;

    const-string v1, "mcc"

    const-string v1, "mcc"

    invoke-virtual {v0, v5, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v0, Lcom/android/providers/telephony/DlutProvider;->sIddProjectionMap:Ljava/util/HashMap;

    const-string v1, "idd"

    const-string v1, "idd"

    invoke-virtual {v0, v6, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/providers/telephony/DlutProvider;->sLookupProjectionMap:Ljava/util/HashMap;

    .line 97
    sget-object v0, Lcom/android/providers/telephony/DlutProvider;->sLookupProjectionMap:Ljava/util/HashMap;

    const-string v1, "_id"

    const-string v1, "_id"

    invoke-virtual {v0, v3, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v0, Lcom/android/providers/telephony/DlutProvider;->sLookupProjectionMap:Ljava/util/HashMap;

    const-string v1, "mcc"

    const-string v1, "mcc"

    invoke-virtual {v0, v5, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v0, Lcom/android/providers/telephony/DlutProvider;->sLookupProjectionMap:Ljava/util/HashMap;

    const-string v1, "country_code"

    const-string v2, "country_code"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v0, Lcom/android/providers/telephony/DlutProvider;->sLookupProjectionMap:Ljava/util/HashMap;

    const-string v1, "country_name"

    const-string v2, "country_name"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v0, Lcom/android/providers/telephony/DlutProvider;->sLookupProjectionMap:Ljava/util/HashMap;

    const-string v1, "ndd"

    const-string v2, "ndd"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v0, Lcom/android/providers/telephony/DlutProvider;->sLookupProjectionMap:Ljava/util/HashMap;

    const-string v1, "nanps"

    const-string v2, "nanps"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v0, Lcom/android/providers/telephony/DlutProvider;->sLookupProjectionMap:Ljava/util/HashMap;

    const-string v1, "nbpcd"

    const-string v2, "nbpcd"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v0, Lcom/android/providers/telephony/DlutProvider;->sLookupProjectionMap:Ljava/util/HashMap;

    const-string v1, "gmt_offset_low"

    const-string v2, "gmt_offset_low"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v0, Lcom/android/providers/telephony/DlutProvider;->sLookupProjectionMap:Ljava/util/HashMap;

    const-string v1, "gmt_offset_high"

    const-string v2, "gmt_offset_high"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v0, Lcom/android/providers/telephony/DlutProvider;->sLookupProjectionMap:Ljava/util/HashMap;

    const-string v1, "gmt_dst_low"

    const-string v2, "gmt_dst_low"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v0, Lcom/android/providers/telephony/DlutProvider;->sLookupProjectionMap:Ljava/util/HashMap;

    const-string v1, "gmt_dst_high"

    const-string v2, "gmt_dst_high"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v0, Lcom/android/providers/telephony/DlutProvider;->sLookupProjectionMap:Ljava/util/HashMap;

    const-string v1, "nbpcd_last_attempt"

    const-string v2, "nbpcd_last_attempt"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/providers/telephony/DlutProvider;->sConflictProjectionMap:Ljava/util/HashMap;

    .line 111
    sget-object v0, Lcom/android/providers/telephony/DlutProvider;->sConflictProjectionMap:Ljava/util/HashMap;

    const-string v1, "_id"

    const-string v1, "_id"

    invoke-virtual {v0, v3, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    sget-object v0, Lcom/android/providers/telephony/DlutProvider;->sConflictProjectionMap:Ljava/util/HashMap;

    const-string v1, "mcc"

    const-string v1, "mcc"

    invoke-virtual {v0, v5, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v0, Lcom/android/providers/telephony/DlutProvider;->sConflictProjectionMap:Ljava/util/HashMap;

    const-string v1, "sid_conflict"

    const-string v2, "sid_conflict"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/providers/telephony/DlutProvider;->sRangeProjectionMap:Ljava/util/HashMap;

    .line 116
    sget-object v0, Lcom/android/providers/telephony/DlutProvider;->sRangeProjectionMap:Ljava/util/HashMap;

    const-string v1, "_id"

    const-string v1, "_id"

    invoke-virtual {v0, v3, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    sget-object v0, Lcom/android/providers/telephony/DlutProvider;->sRangeProjectionMap:Ljava/util/HashMap;

    const-string v1, "mcc"

    const-string v1, "mcc"

    invoke-virtual {v0, v5, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    sget-object v0, Lcom/android/providers/telephony/DlutProvider;->sRangeProjectionMap:Ljava/util/HashMap;

    const-string v1, "sid_range_low"

    const-string v2, "sid_range_low"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    sget-object v0, Lcom/android/providers/telephony/DlutProvider;->sRangeProjectionMap:Ljava/util/HashMap;

    const-string v1, "sid_range_high"

    const-string v2, "sid_range_high"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/providers/telephony/DlutProvider;->sNanpProjectionMap:Ljava/util/HashMap;

    .line 122
    sget-object v0, Lcom/android/providers/telephony/DlutProvider;->sNanpProjectionMap:Ljava/util/HashMap;

    const-string v1, "_id"

    const-string v1, "_id"

    invoke-virtual {v0, v3, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    sget-object v0, Lcom/android/providers/telephony/DlutProvider;->sNanpProjectionMap:Ljava/util/HashMap;

    const-string v1, "area_code"

    const-string v1, "area_code"

    invoke-virtual {v0, v7, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/providers/telephony/DlutProvider;->sUnresolveProjectionMap:Ljava/util/HashMap;

    .line 126
    sget-object v0, Lcom/android/providers/telephony/DlutProvider;->sUnresolveProjectionMap:Ljava/util/HashMap;

    const-string v1, "_id"

    const-string v1, "_id"

    invoke-virtual {v0, v3, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    sget-object v0, Lcom/android/providers/telephony/DlutProvider;->sUnresolveProjectionMap:Ljava/util/HashMap;

    const-string v1, "mcc"

    const-string v1, "mcc"

    invoke-virtual {v0, v5, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    sget-object v0, Lcom/android/providers/telephony/DlutProvider;->sUnresolveProjectionMap:Ljava/util/HashMap;

    const-string v1, "sid"

    const-string v2, "sid"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/providers/telephony/DlutProvider;->sUseraddProjectionMap:Ljava/util/HashMap;

    .line 131
    sget-object v0, Lcom/android/providers/telephony/DlutProvider;->sUseraddProjectionMap:Ljava/util/HashMap;

    const-string v1, "_id"

    const-string v1, "_id"

    invoke-virtual {v0, v3, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    sget-object v0, Lcom/android/providers/telephony/DlutProvider;->sUseraddProjectionMap:Ljava/util/HashMap;

    const-string v1, "mdn_length"

    const-string v2, "mdn_length"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    sget-object v0, Lcom/android/providers/telephony/DlutProvider;->sUseraddProjectionMap:Ljava/util/HashMap;

    const-string v1, "area_code"

    const-string v1, "area_code"

    invoke-virtual {v0, v7, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    sget-object v0, Lcom/android/providers/telephony/DlutProvider;->sUseraddProjectionMap:Ljava/util/HashMap;

    const-string v1, "mcc"

    const-string v1, "mcc"

    invoke-virtual {v0, v5, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    sget-object v0, Lcom/android/providers/telephony/DlutProvider;->sUseraddProjectionMap:Ljava/util/HashMap;

    const-string v1, "idd"

    const-string v1, "idd"

    invoke-virtual {v0, v6, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    sget-object v0, Lcom/android/providers/telephony/DlutProvider;->sUseraddProjectionMap:Ljava/util/HashMap;

    const-string v1, "dst_flag"

    const-string v2, "dst_flag"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    sget-object v0, Lcom/android/providers/telephony/DlutProvider;->sUseraddProjectionMap:Ljava/util/HashMap;

    const-string v1, "time_zone"

    const-string v2, "time_zone"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    sget-object v0, Lcom/android/providers/telephony/DlutProvider;->sUseraddProjectionMap:Ljava/util/HashMap;

    const-string v1, "nbpcd"

    const-string v2, "nbpcd"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    sget-object v0, Lcom/android/providers/telephony/DlutProvider;->sUseraddProjectionMap:Ljava/util/HashMap;

    const-string v1, "nanps"

    const-string v2, "nanps"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    sget-object v0, Lcom/android/providers/telephony/DlutProvider;->sUseraddProjectionMap:Ljava/util/HashMap;

    const-string v1, "ndd"

    const-string v2, "ndd"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    sget-object v0, Lcom/android/providers/telephony/DlutProvider;->sUseraddProjectionMap:Ljava/util/HashMap;

    const-string v1, "country_name"

    const-string v2, "country_name"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    sget-object v0, Lcom/android/providers/telephony/DlutProvider;->sUseraddProjectionMap:Ljava/util/HashMap;

    const-string v1, "country_code"

    const-string v2, "country_code"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    sget-object v0, Lcom/android/providers/telephony/DlutProvider;->sUseraddProjectionMap:Ljava/util/HashMap;

    const-string v1, "sid"

    const-string v2, "sid"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 341
    iget-object v3, p0, Lcom/android/providers/telephony/DlutProvider;->mDbHelper:Lcom/android/providers/telephony/DlutDatabaseHelper;

    invoke-virtual {v3}, Lcom/android/providers/telephony/DlutDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 342
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v0, 0x0

    .line 343
    .local v0, count:I
    sget-object v3, Lcom/android/providers/telephony/DlutProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    .line 344
    .local v2, match:I
    packed-switch v2, :pswitch_data_0

    .line 349
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot delete URL: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 346
    :pswitch_0
    const-string v3, "useradd_country"

    invoke-virtual {v1, v3, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 352
    return v0

    .line 344
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
    .end packed-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 2
    .parameter "uri"

    .prologue
    .line 161
    sget-boolean v0, Lcom/android/providers/telephony/DlutProvider;->DBG:Z

    if-eqz v0, :cond_0

    .line 162
    const-string v0, "DlutProvider"

    const-string v1, "getType"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 7
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 324
    iget-object v4, p0, Lcom/android/providers/telephony/DlutProvider;->mDbHelper:Lcom/android/providers/telephony/DlutDatabaseHelper;

    invoke-virtual {v4}, Lcom/android/providers/telephony/DlutDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 326
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    sget-object v4, Lcom/android/providers/telephony/DlutProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v4, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    .line 327
    .local v1, match:I
    packed-switch v1, :pswitch_data_0

    .line 336
    :cond_0
    new-instance v4, Landroid/database/SQLException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to insert row into "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 329
    :pswitch_0
    const-string v4, "useradd_country"

    const-string v5, "_id"

    invoke-virtual {v0, v4, v5, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 330
    .local v2, rowId:J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_0

    .line 331
    sget-object v4, Lcom/motorola/android/provider/Dlut$Useradd;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    return-object v4

    .line 327
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate()Z
    .locals 2

    .prologue
    .line 150
    sget-boolean v0, Lcom/android/providers/telephony/DlutProvider;->DBG:Z

    if-eqz v0, :cond_0

    .line 151
    const-string v0, "DlutProvider"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :cond_0
    new-instance v0, Lcom/android/providers/telephony/DlutDatabaseHelper;

    invoke-virtual {p0}, Lcom/android/providers/telephony/DlutProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/providers/telephony/DlutDatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/providers/telephony/DlutProvider;->mDbHelper:Lcom/android/providers/telephony/DlutDatabaseHelper;

    .line 154
    iget-object v0, p0, Lcom/android/providers/telephony/DlutProvider;->mDbHelper:Lcom/android/providers/telephony/DlutDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/providers/telephony/DlutDatabaseHelper;->createDataBase()V

    .line 156
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 11
    .parameter "uri"
    .parameter "projectionIn"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 171
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 172
    .local v0, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    const/4 v7, 0x0

    .line 173
    .local v7, orderBy:Ljava/lang/String;
    const/4 v5, 0x0

    .line 174
    .local v5, groupBy:Ljava/lang/String;
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    .line 176
    .local v10, useDefaultOrder:Z
    sget-object v2, Lcom/android/providers/telephony/DlutProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v9

    .line 177
    .local v9, match:I
    packed-switch v9, :pswitch_data_0

    .line 306
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown URI "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 179
    :pswitch_0
    const-string v2, "mcc_idd"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 180
    sget-object v2, Lcom/android/providers/telephony/DlutProvider;->sIddProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 181
    if-eqz v10, :cond_0

    .line 182
    const-string v7, "mcc ASC"

    .line 309
    :cond_0
    :goto_0
    if-nez v10, :cond_1

    .line 310
    move-object/from16 v7, p5

    .line 313
    :cond_1
    iget-object v2, p0, Lcom/android/providers/telephony/DlutProvider;->mDbHelper:Lcom/android/providers/telephony/DlutDatabaseHelper;

    invoke-virtual {v2}, Lcom/android/providers/telephony/DlutDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 314
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v6, 0x0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 315
    .local v8, c:Landroid/database/Cursor;
    if-eqz v8, :cond_2

    .line 316
    invoke-virtual {p0}, Lcom/android/providers/telephony/DlutProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-interface {v8, v2, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 319
    :cond_2
    return-object v8

    .line 187
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v8           #c:Landroid/database/Cursor;
    :pswitch_1
    const-string v2, "mcc_lookup_table"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 188
    sget-object v2, Lcom/android/providers/telephony/DlutProvider;->sLookupProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 189
    if-eqz v10, :cond_3

    .line 190
    const-string v7, "mcc ASC"

    .line 192
    :cond_3
    const-string v5, "country_name"

    .line 193
    goto :goto_0

    .line 196
    :pswitch_2
    const-string v2, "mcc_sid_conflict"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 197
    sget-object v2, Lcom/android/providers/telephony/DlutProvider;->sConflictProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 198
    if-eqz v10, :cond_0

    .line 199
    const-string v7, "mcc ASC"

    goto :goto_0

    .line 204
    :pswitch_3
    const-string v2, "mcc_sid_range"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 205
    sget-object v2, Lcom/android/providers/telephony/DlutProvider;->sRangeProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 206
    if-eqz v10, :cond_0

    .line 207
    const-string v7, "mcc ASC"

    goto :goto_0

    .line 212
    :pswitch_4
    const-string v2, "nanp_area_code"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 213
    sget-object v2, Lcom/android/providers/telephony/DlutProvider;->sNanpProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 214
    if-eqz v10, :cond_0

    .line 215
    const-string v7, "area_code ASC"

    goto :goto_0

    .line 220
    :pswitch_5
    const-string v2, "unresolvable_conflict"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 221
    sget-object v2, Lcom/android/providers/telephony/DlutProvider;->sUnresolveProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 222
    if-eqz v10, :cond_0

    .line 223
    const-string v7, "mcc ASC"

    goto :goto_0

    .line 228
    :pswitch_6
    const-string v2, "useradd_country"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 229
    sget-object v2, Lcom/android/providers/telephony/DlutProvider;->sUseraddProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 230
    if-eqz v10, :cond_0

    .line 231
    const-string v7, "mcc ASC"

    goto :goto_0

    .line 236
    :pswitch_7
    const-string v2, "mcc_idd"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 237
    sget-object v2, Lcom/android/providers/telephony/DlutProvider;->sIddProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 238
    const-string v2, "mcc_idd._id="

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 239
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 240
    if-eqz v10, :cond_0

    .line 241
    const-string v7, "mcc ASC"

    goto/16 :goto_0

    .line 246
    :pswitch_8
    const-string v2, "mcc_lookup_table"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 247
    sget-object v2, Lcom/android/providers/telephony/DlutProvider;->sLookupProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 248
    const-string v2, "mcc_lookup_table._id="

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 249
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 250
    if-eqz v10, :cond_0

    .line 251
    const-string v7, "mcc ASC"

    goto/16 :goto_0

    .line 256
    :pswitch_9
    const-string v2, "mcc_sid_conflict"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 257
    sget-object v2, Lcom/android/providers/telephony/DlutProvider;->sConflictProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 258
    const-string v2, "mcc_sid_conflict._id="

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 259
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 260
    if-eqz v10, :cond_0

    .line 261
    const-string v7, "mcc ASC"

    goto/16 :goto_0

    .line 266
    :pswitch_a
    const-string v2, "mcc_sid_range"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 267
    sget-object v2, Lcom/android/providers/telephony/DlutProvider;->sRangeProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 268
    const-string v2, "mcc_sid_range._id="

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 269
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 270
    if-eqz v10, :cond_0

    .line 271
    const-string v7, "mcc ASC"

    goto/16 :goto_0

    .line 276
    :pswitch_b
    const-string v2, "nanp_area_code"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 277
    sget-object v2, Lcom/android/providers/telephony/DlutProvider;->sNanpProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 278
    const-string v2, "nanp_area_code._id="

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 279
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 280
    if-eqz v10, :cond_0

    .line 281
    const-string v7, "area_code ASC"

    goto/16 :goto_0

    .line 286
    :pswitch_c
    const-string v2, "unresolvable_conflict"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 287
    sget-object v2, Lcom/android/providers/telephony/DlutProvider;->sUnresolveProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 288
    const-string v2, "unresolvable_conflict._id="

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 289
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 290
    if-eqz v10, :cond_0

    .line 291
    const-string v7, "mcc ASC"

    goto/16 :goto_0

    .line 296
    :pswitch_d
    const-string v2, "useradd_country"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 297
    sget-object v2, Lcom/android/providers/telephony/DlutProvider;->sUseraddProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 298
    const-string v2, "useradd_country._id="

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 299
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 300
    if-eqz v10, :cond_0

    .line 301
    const-string v7, "mcc ASC"

    goto/16 :goto_0

    .line 177
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 357
    const/4 v0, 0x0

    .line 358
    .local v0, count:I
    iget-object v3, p0, Lcom/android/providers/telephony/DlutProvider;->mDbHelper:Lcom/android/providers/telephony/DlutDatabaseHelper;

    invoke-virtual {v3}, Lcom/android/providers/telephony/DlutDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 360
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    sget-object v3, Lcom/android/providers/telephony/DlutProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    .line 361
    .local v2, match:I
    sparse-switch v2, :sswitch_data_0

    .line 369
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot update URL: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 363
    :sswitch_0
    const-string v3, "mcc_lookup_table"

    invoke-virtual {v1, v3, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 372
    :goto_0
    return v0

    .line 366
    :sswitch_1
    const-string v3, "useradd_country"

    invoke-virtual {v1, v3, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 367
    goto :goto_0

    .line 361
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x7 -> :sswitch_1
    .end sparse-switch
.end method
