.class public interface abstract Lcom/android/providers/calendar/ConferenceCallInfo;
.super Ljava/lang/Object;
.source "ConferenceCallInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/calendar/ConferenceCallInfo$Calendars;,
        Lcom/android/providers/calendar/ConferenceCallInfo$ColumnIndex;,
        Lcom/android/providers/calendar/ConferenceCallInfo$ColumnNames;
    }
.end annotation


# static fields
.field public static final CONFERENCE_CALL_INFO_PATH:Ljava/lang/String; = "conference_call_info"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final CREATE_INDEX:Ljava/lang/String; = "CREATE INDEX IF NOT EXISTS confInfoOrganzierEventIdIndex ON ConferenceCallInfo (organizer_email,associated_event_id);"

.field public static final CREATE_TABLE:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS ConferenceCallInfo (_id INTEGER PRIMARY KEY,organizer_email TEXT NOT NULL,data_source_flag INTEGER NOT NULL DEFAULT -1,contact_data_id INTEGER DEFAULT -1,contact_phone_type INTEGER DEFAULT -1,manual_conference_number TEXT DEFAULT NULL,manual_conference_id TEXT DEFAULT NULL,associated_event_id INTEGER NOT NULL DEFAULT -1);"

.field public static final DATA_SOURCE_FLAG_AUTO_DETECT:I = 0x4

.field public static final DATA_SOURCE_FLAG_CONTACT_DATA:I = 0x0

.field public static final DATA_SOURCE_FLAG_INVALID:I = -0x1

.field public static final DATA_SOURCE_FLAG_MANUAL_INPUT:I = 0x3

.field public static final DATA_SOURCE_FLAG_MEETING_LOCATION:I = 0x2

.field public static final DATA_SOURCE_FLAG_MY_PREFERENCE:I = 0x1

.field public static final DROP_TABLE:Ljava/lang/String; = "DROP TABLE IF EXISTS ConferenceCallInfo"

.field public static final TABLE_NAME:Ljava/lang/String; = "ConferenceCallInfo"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-string v0, "content://com.android.calendar/conference_call_info"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/providers/calendar/ConferenceCallInfo;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method
