.class public final Landroid/provider/Notes;
.super Ljava/lang/Object;
.source "Notes.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/Notes$Account;,
        Landroid/provider/Notes$Body;,
        Landroid/provider/Notes$Message;,
        Landroid/provider/Notes$AccountColumns;,
        Landroid/provider/Notes$BodyColumns;,
        Landroid/provider/Notes$MessageColumns;,
        Landroid/provider/Notes$Columns;
    }
.end annotation


# static fields
.field public static final ACCOUNT_TABLE:Ljava/lang/String; = "deleted_message"

.field public static final AUTHORITY:Ljava/lang/String; = "com.android.notes"

.field public static final BODY_TABLE:Ljava/lang/String; = "body"

.field public static final CALLER_IS_SYNCADAPTER:Ljava/lang/String; = "caller_is_syncadapter"

.field public static final CLIENT_OP_ADD_NOTE:I = 0x1

.field public static final CLIENT_OP_DEL_NOTE:I = 0x2

.field public static final CLIENT_OP_MODIFY_NOTE:I = 0x3

.field public static final CLIENT_OP_TYPE:I = 0x0

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final CONTENT_URI_LOCAL:Landroid/net/Uri; = null

.field public static final CONTENT_URI_SYNC:Landroid/net/Uri; = null

.field public static final DELETED_MESSAGE_TABLE:Ljava/lang/String; = "deleted_message"

.field public static final MESSAGE_TABLE:Ljava/lang/String; = "message"

.field public static final PROJECTION:[Ljava/lang/String; = null

.field public static final SYNC_DONE:I = 0x0

.field public static final SYNC_REQUIRED:I = 0x4

.field public static final SYNC_REQUIRED_DELETE_CLIENT_MSG:I = 0x3

.field public static final SYNC_REQUIRED_NEW_CLIENT_MSG:I = 0x1

.field public static final SYNC_REQUIRED_UPDATE_CLIENT_MSG:I = 0x2

.field public static final TAG:Ljava/lang/String; = "Notes"

.field public static final UPDATE_MESSAGE_TABLE:Ljava/lang/String; = "update_message"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 67
    const-string v0, "content://com.android.notes"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Notes;->CONTENT_URI:Landroid/net/Uri;

    .line 70
    const-string v0, "content://com.android.notes/syncNote"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Notes;->CONTENT_URI_SYNC:Landroid/net/Uri;

    .line 74
    const-string v0, "content://com.android.notes/localNote"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Notes;->CONTENT_URI_LOCAL:Landroid/net/Uri;

    .line 102
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "emailAddress"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "subject"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "categories"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "last_modified_date"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "textContent"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "type"

    aput-object v2, v0, v1

    sput-object v0, Landroid/provider/Notes;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 351
    return-void
.end method
