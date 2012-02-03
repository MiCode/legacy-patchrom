.class public Landroid/provider/Calendar$Calendars;
.super Ljava/lang/Object;
.source "Calendar.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Landroid/provider/Calendar$CalendarsColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Calendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Calendars"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "displayName"

.field public static final DISPLAY_NAME:Ljava/lang/String; = "displayName"

.field public static final HIDDEN:Ljava/lang/String; = "hidden"

.field public static final LOCATION:Ljava/lang/String; = "location"

.field public static final NAME:Ljava/lang/String; = "name"

.field public static final ORGANIZER_CAN_RESPOND:Ljava/lang/String; = "organizerCanRespond"

.field public static final OWNER_ACCOUNT:Ljava/lang/String; = "ownerAccount"

.field public static final URL:Ljava/lang/String; = "url"

.field private static final WHERE_DELETE_FOR_ACCOUNT:Ljava/lang/String; = "_sync_account=? AND _sync_account_type=?"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 247
    const-string v0, "content://com.android.calendar/calendars"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Calendar$Calendars;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static delete(Landroid/content/ContentResolver;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .parameter "cr"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 227
    sget-object v0, Landroid/provider/Calendar$Calendars;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v0, p1, p2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static deleteCalendarsForAccount(Landroid/content/ContentResolver;Landroid/accounts/Account;)I
    .locals 4
    .parameter "cr"
    .parameter "account"

    .prologue
    .line 239
    const-string v0, "_sync_account=? AND _sync_account_type=?"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Landroid/provider/Calendar$Calendars;->delete(Landroid/content/ContentResolver;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static final query(Landroid/content/ContentResolver;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .parameter "cr"
    .parameter "projection"
    .parameter "where"
    .parameter "orderBy"

    .prologue
    .line 214
    sget-object v1, Landroid/provider/Calendar$Calendars;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    if-nez p3, :cond_0

    const-string v0, "displayName"

    move-object v5, v0

    :goto_0
    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    :cond_0
    move-object v5, p3

    goto :goto_0
.end method
