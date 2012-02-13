.class public final Landroid/provider/Calendar;
.super Ljava/lang/Object;
.source "Calendar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/Calendar$SyncState;,
        Landroid/provider/Calendar$ExtendedProperties;,
        Landroid/provider/Calendar$ExtendedPropertiesColumns;,
        Landroid/provider/Calendar$CalendarAlerts;,
        Landroid/provider/Calendar$CalendarAlertsColumns;,
        Landroid/provider/Calendar$Reminders;,
        Landroid/provider/Calendar$RemindersColumns;,
        Landroid/provider/Calendar$EventDays;,
        Landroid/provider/Calendar$EventDaysColumns;,
        Landroid/provider/Calendar$CalendarMetaData;,
        Landroid/provider/Calendar$CalendarMetaDataColumns;,
        Landroid/provider/Calendar$CalendarCache;,
        Landroid/provider/Calendar$CalendarCacheColumns;,
        Landroid/provider/Calendar$Instances;,
        Landroid/provider/Calendar$Events;,
        Landroid/provider/Calendar$EventsEntity;,
        Landroid/provider/Calendar$EventsColumns;,
        Landroid/provider/Calendar$EASEventsColumns;,
        Landroid/provider/Calendar$Attendees;,
        Landroid/provider/Calendar$AttendeesColumns;,
        Landroid/provider/Calendar$Calendars;,
        Landroid/provider/Calendar$CalendarsColumns;,
        Landroid/provider/Calendar$EASCalendarsColumns;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.android.calendar"

.field public static final CALLER_IS_SYNCADAPTER:Ljava/lang/String; = "caller_is_syncadapter"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final EVENT_BEGIN_TIME:Ljava/lang/String; = "beginTime"

.field public static final EVENT_END_TIME:Ljava/lang/String; = "endTime"

.field public static final EVENT_REMINDER_ACTION:Ljava/lang/String; = "android.intent.action.EVENT_REMINDER"

.field public static final TAG:Ljava/lang/String; = "Calendar"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string v0, "content://com.android.calendar"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Calendar;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
