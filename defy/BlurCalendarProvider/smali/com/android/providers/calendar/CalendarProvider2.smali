.class public Lcom/android/providers/calendar/CalendarProvider2;
.super Lcom/android/providers/calendar/SQLiteContentProvider;
.source "CalendarProvider2.java"

# interfaces
.implements Landroid/accounts/OnAccountsUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/calendar/CalendarProvider2$TimezoneCheckerThread;,
        Lcom/android/providers/calendar/CalendarProvider2$EventsRawTimesColumns;,
        Lcom/android/providers/calendar/CalendarProvider2$AlarmScheduler;,
        Lcom/android/providers/calendar/CalendarProvider2$EventInstancesMap;,
        Lcom/android/providers/calendar/CalendarProvider2$InstancesList;,
        Lcom/android/providers/calendar/CalendarProvider2$InstancesRange;,
        Lcom/android/providers/calendar/CalendarProvider2$TimeRange;
    }
.end annotation


# static fields
.field private static final ALARM_SCHEDULER_DELAY:J = 0x1388L

.field private static final ALLDAY_DTEND_INDEX:I = 0x2

.field private static final ALLDAY_DTSTART_INDEX:I = 0x1

.field private static final ALLDAY_DURATION_INDEX:I = 0x3

.field private static final ALLDAY_ID_INDEX:I = 0x0

.field private static final ALLDAY_TIME_PROJECTION:[Ljava/lang/String; = null

.field private static final ATTENDEES:I = 0x7

.field private static final ATTENDEES_ID:I = 0x8

.field private static final CALENDARS:I = 0x5

.field private static final CALENDARS_ID:I = 0x6

.field private static final CALENDARS_INDEX_ID:I = 0x0

.field private static final CALENDARS_INDEX_SYNC_TYPE:I = 0x0

.field private static final CALENDAR_ALERTS:I = 0xd

.field private static final CALENDAR_ALERTS_BY_INSTANCE:I = 0xf

.field private static final CALENDAR_ALERTS_ID:I = 0xe

.field private static final CALENDAR_ID_SELECTION:Ljava/lang/String; = "calendar_id=?"

.field private static final CHIP_CALENDARS:I = 0x1a

.field private static final CHIP_SELECTED:I = 0x1b

.field private static final CLEAR_OLD_ALARM_THRESHOLD:J = 0x247a6100L

.field private static final CONFERENCE_CALL_INFO:I = 0x1c

.field private static final CONFERENCE_CALL_INFO_ID:I = 0x1d

.field private static final DAY_IN_SECONDS:I = 0x15180

.field private static final DELETED_EVENTS:I = 0x4

.field private static final EVENTS:I = 0x1

.field private static final EVENTS_CALENDAR_ID_INDEX:I = 0x4

.field private static final EVENTS_ID:I = 0x2

.field private static final EVENTS_ORIGINAL_EVENT_INDEX:I = 0x3

.field private static final EVENTS_PROJECTION:[Ljava/lang/String; = null

.field private static final EVENTS_RDATE_INDEX:I = 0x2

.field private static final EVENTS_RRULE_INDEX:I = 0x1

.field private static final EVENTS_SYNC_ID_INDEX:I = 0x0

.field private static final EVENT_DAYS:I = 0x15

.field private static final EVENT_ENTITIES:I = 0x13

.field private static final EVENT_ENTITIES_ID:I = 0x14

.field private static final EVENT_ID_INDEX:I = 0x1

.field private static final EXPAND_COLUMNS:[Ljava/lang/String; = null

.field private static final EXTENDED_PROPERTIES:I = 0xb

.field private static final EXTENDED_PROPERTIES_ID:I = 0xc

.field protected static final EXT_PROP_ORIGINAL_TIMEZONE:Ljava/lang/String; = "CalendarSyncAdapter#originalTimezone"

.field private static final ID_INDEX:I = 0x0

.field private static final ID_ONLY_PROJECTION:[Ljava/lang/String; = null

.field private static final ID_PROJECTION:[Ljava/lang/String; = null

.field private static final INSTANCES:I = 0x3

.field private static final INSTANCES_BY_DAY:I = 0x10

.field private static final INSTANCES_INDEX_ALL_DAY:I = 0x4

.field private static final INSTANCES_INDEX_END_DAY:I = 0x1

.field private static final INSTANCES_INDEX_END_MINUTE:I = 0x3

.field private static final INSTANCES_INDEX_START_DAY:I = 0x0

.field private static final INSTANCES_INDEX_START_MINUTE:I = 0x2

.field private static final INVALID_CALENDARALERTS_SELECTOR:Ljava/lang/String; = "_id IN (SELECT ca._id FROM CalendarAlerts AS ca LEFT OUTER JOIN Instances USING (event_id, begin, end) LEFT OUTER JOIN Reminders AS r ON (ca.event_id=r.event_id AND ca.minutes=r.minutes) WHERE Instances.begin ISNULL OR ca.alarmTime<?   OR (r.minutes ISNULL AND ca.minutes<>0))"

.field private static final MAX_ASSUMED_DURATION:I = 0x240c8400

.field private static final MINIMUM_EXPANSION_SPAN:J = 0x13f4a4800L

.field private static final PROFILE:Z = false

.field private static final PROVIDER_PROPERTIES:I = 0x19

.field private static final REMINDERS:I = 0x9

.field private static final REMINDERS_ID:I = 0xa

.field private static final SCHEDULE_ALARM:I = 0x16

.field static final SCHEDULE_ALARM_PATH:Ljava/lang/String; = "schedule_alarms"

.field private static final SCHEDULE_ALARM_REMOVE:I = 0x17

.field static final SCHEDULE_ALARM_REMOVE_PATH:Ljava/lang/String; = "schedule_alarms_remove"

.field static final SCHEDULE_ALARM_REMOVE_URI:Landroid/net/Uri; = null

.field private static final SCHEDULE_ALARM_SLACK:J = 0x6ddd00L

.field static final SCHEDULE_ALARM_URI:Landroid/net/Uri; = null

.field private static final SQL_SELECT_EVENTSRAWTIMES:Ljava/lang/String; = "SELECT event_id, dtstart2445, dtend2445, eventTimezone FROM EventsRawTimes, Events WHERE event_id = Events._id"

.field private static final SYNCSTATE:I = 0x11

.field private static final SYNCSTATE_CONTENT_URI:Landroid/net/Uri; = null

.field private static final SYNCSTATE_ID:I = 0x12

.field private static final TAG:Ljava/lang/String; = "CalendarProvider2"

.field private static final TIME:I = 0x18

.field private static final TIMEZONE_GMT:Ljava/lang/String; = "GMT"

.field private static mAlarmScheduler:Lcom/android/providers/calendar/CalendarProvider2$AlarmScheduler;

.field private static mRemoveAlarmsOnRerun:Z

.field private static mRerunAlarmScheduler:Z

.field private static sAliasCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sAttendeesProjectionMap:Ljava/util/HashMap;
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

.field private static sAttendeesTable:Ljava/lang/String;

.field private static final sCalendarAlertsProjectionMap:Ljava/util/HashMap;
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

.field private static sCalendarAlertsTable:Ljava/lang/String;

.field private static final sCalendarCacheProjectionMap:Ljava/util/HashMap;
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

.field private static final sCalendarsIdProjection:[Ljava/lang/String;

.field private static final sCalendarsSyncTypeProjection:[Ljava/lang/String;

.field private static final sChipCalendarsProjectionMap:Ljava/util/HashMap;
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

.field private static final sEventEntitiesProjectionMap:Ljava/util/HashMap;
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

.field private static final sEventsProjectionMap:Ljava/util/HashMap;
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

.field private static sEventsTable:Ljava/lang/String;

.field private static sExtendedPropertiesTable:Ljava/lang/String;

.field private static final sInitLock:Ljava/lang/Object;

.field private static sInitialized:Z

.field private static final sInstancesProjection:[Ljava/lang/String;

.field private static final sInstancesProjectionMap:Ljava/util/HashMap;
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

.field private static final sRemindersProjectionMap:Ljava/util/HashMap;
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

.field private static sRemindersTable:Ljava/lang/String;

.field private static final sUriMatcher:Landroid/content/UriMatcher;


# instance fields
.field private final mAlarmLock:Ljava/lang/Object;

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private final mAppWidgetProvider:Lcom/android/providers/calendar/CalendarWidgetProvider;

.field mCalendarCache:Lcom/android/providers/calendar/CalendarCache;

.field private mContext:Landroid/content/Context;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field mMetaData:Lcom/android/providers/calendar/MetaData;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v7, "event_id"

    const-string v4, "_id"

    const-string v3, "com.android.calendar"

    .line 104
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v4, v0, v5

    sput-object v0, Lcom/android/providers/calendar/CalendarProvider2;->ID_ONLY_PROJECTION:[Ljava/lang/String;

    .line 107
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_sync_id"

    aput-object v1, v0, v5

    const-string v1, "rrule"

    aput-object v1, v0, v6

    const/4 v1, 0x2

    const-string v2, "rdate"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "originalEvent"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "calendar_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/calendar/CalendarProvider2;->EVENTS_PROJECTION:[Ljava/lang/String;

    .line 120
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v4, v0, v5

    const-string v1, "event_id"

    aput-object v7, v0, v6

    sput-object v0, Lcom/android/providers/calendar/CalendarProvider2;->ID_PROJECTION:[Ljava/lang/String;

    .line 130
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v4, v0, v5

    const-string v1, "dtstart"

    aput-object v1, v0, v6

    const/4 v1, 0x2

    const-string v2, "dtend"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "duration"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/calendar/CalendarProvider2;->ALLDAY_TIME_PROJECTION:[Ljava/lang/String;

    .line 144
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sAliasCache:Ljava/util/Map;

    .line 159
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sInitLock:Ljava/lang/Object;

    .line 160
    sput-boolean v5, Lcom/android/providers/calendar/CalendarProvider2;->sInitialized:Z

    .line 162
    const-string v0, "content://syncstate/state"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/providers/calendar/CalendarProvider2;->SYNCSTATE_CONTENT_URI:Landroid/net/Uri;

    .line 169
    sget-object v0, Landroid/provider/Calendar;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "schedule_alarms"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/providers/calendar/CalendarProvider2;->SCHEDULE_ALARM_URI:Landroid/net/Uri;

    .line 171
    sget-object v0, Landroid/provider/Calendar;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "schedule_alarms_remove"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/providers/calendar/CalendarProvider2;->SCHEDULE_ALARM_REMOVE_URI:Landroid/net/Uri;

    .line 294
    sput-boolean v5, Lcom/android/providers/calendar/CalendarProvider2;->mRerunAlarmScheduler:Z

    .line 295
    sput-boolean v5, Lcom/android/providers/calendar/CalendarProvider2;->mRemoveAlarmsOnRerun:Z

    .line 331
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v4, v0, v5

    sput-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sCalendarsIdProjection:[Ljava/lang/String;

    .line 334
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "sync_type"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sCalendarsSyncTypeProjection:[Ljava/lang/String;

    .line 340
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "startDay"

    aput-object v1, v0, v5

    const-string v1, "endDay"

    aput-object v1, v0, v6

    const/4 v1, 0x2

    const-string v2, "startMinute"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "endMinute"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "allDay"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sInstancesProjection:[Ljava/lang/String;

    .line 1240
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v4, v0, v5

    const-string v1, "_sync_id"

    aput-object v1, v0, v6

    const/4 v1, 0x2

    const-string v2, "eventStatus"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "dtstart"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "dtend"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "eventTimezone"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "rrule"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "rdate"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "exrule"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "exdate"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "duration"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "allDay"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "originalEvent"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "originalInstanceTime"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "calendar_id"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "deleted"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/calendar/CalendarProvider2;->EXPAND_COLUMNS:[Ljava/lang/String;

    .line 3971
    const-string v0, "Events"

    sput-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsTable:Ljava/lang/String;

    .line 3972
    const-string v0, "Attendees"

    sput-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sAttendeesTable:Ljava/lang/String;

    .line 3973
    const-string v0, "Reminders"

    sput-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sRemindersTable:Ljava/lang/String;

    .line 3974
    const-string v0, "CalendarAlerts"

    sput-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sCalendarAlertsTable:Ljava/lang/String;

    .line 3975
    const-string v0, "ExtendedProperties"

    sput-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sExtendedPropertiesTable:Ljava/lang/String;

    .line 4009
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    .line 4021
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.calendar"

    const-string v1, "instances/when/*/*"

    const/4 v2, 0x3

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4022
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.calendar"

    const-string v1, "instances/whenbyday/*/*"

    const/16 v2, 0x10

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4023
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.calendar"

    const-string v1, "instances/groupbyday/*/*"

    const/16 v2, 0x15

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4024
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.calendar"

    const-string v1, "events"

    invoke-virtual {v0, v3, v1, v6}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4025
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.calendar"

    const-string v1, "events/#"

    const/4 v2, 0x2

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4026
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.calendar"

    const-string v1, "event_entities"

    const/16 v2, 0x13

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4027
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.calendar"

    const-string v1, "event_entities/#"

    const/16 v2, 0x14

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4028
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.calendar"

    const-string v1, "calendars"

    const/4 v2, 0x5

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4029
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.calendar"

    const-string v1, "calendars/#"

    const/4 v2, 0x6

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4030
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.calendar"

    const-string v1, "deleted_events"

    const/4 v2, 0x4

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4031
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.calendar"

    const-string v1, "attendees"

    const/4 v2, 0x7

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4032
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.calendar"

    const-string v1, "attendees/#"

    const/16 v2, 0x8

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4033
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.calendar"

    const-string v1, "reminders"

    const/16 v2, 0x9

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4034
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.calendar"

    const-string v1, "reminders/#"

    const/16 v2, 0xa

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4035
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.calendar"

    const-string v1, "extendedproperties"

    const/16 v2, 0xb

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4036
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.calendar"

    const-string v1, "extendedproperties/#"

    const/16 v2, 0xc

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4037
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.calendar"

    const-string v1, "calendar_alerts"

    const/16 v2, 0xd

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4038
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.calendar"

    const-string v1, "calendar_alerts/#"

    const/16 v2, 0xe

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4039
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.calendar"

    const-string v1, "calendar_alerts/by_instance"

    const/16 v2, 0xf

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4041
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.calendar"

    const-string v1, "syncstate"

    const/16 v2, 0x11

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4042
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.calendar"

    const-string v1, "syncstate/#"

    const/16 v2, 0x12

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4043
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.calendar"

    const-string v1, "schedule_alarms"

    const/16 v2, 0x16

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4044
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.calendar"

    const-string v1, "schedule_alarms_remove"

    const/16 v2, 0x17

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4045
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.calendar"

    const-string v1, "time/#"

    const/16 v2, 0x18

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4046
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.calendar"

    const-string v1, "time"

    const/16 v2, 0x18

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4047
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.calendar"

    const-string v1, "properties"

    const/16 v2, 0x19

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4049
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.calendar"

    const-string v1, "chipcalendars"

    const/16 v2, 0x1a

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4050
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.calendar"

    const-string v1, "chipselected/*/*"

    const/16 v2, 0x1b

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4051
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.calendar"

    const-string v1, "conference_call_info"

    const/16 v2, 0x1c

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4052
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.calendar"

    const-string v1, "conference_call_info/#"

    const/16 v2, 0x1d

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4054
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    .line 4056
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "uid"

    const-string v2, "uid"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4057
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "dtstamp"

    const-string v2, "dtstamp"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4058
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "categories"

    const-string v2, "categories"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4059
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "uid"

    const-string v2, "uid"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4060
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "dtstamp"

    const-string v2, "dtstamp"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4061
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "categories"

    const-string v2, "categories"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4062
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "htmlUri"

    const-string v2, "htmlUri"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4063
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "title"

    const-string v2, "title"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4064
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "eventLocation"

    const-string v2, "eventLocation"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4065
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "description"

    const-string v2, "description"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4066
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "eventStatus"

    const-string v2, "eventStatus"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4067
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "selfAttendeeStatus"

    const-string v2, "selfAttendeeStatus"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4068
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "commentsUri"

    const-string v2, "commentsUri"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4069
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "dtstart"

    const-string v2, "dtstart"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4070
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "dtend"

    const-string v2, "dtend"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4071
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "eventTimezone"

    const-string v2, "eventTimezone"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4072
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "duration"

    const-string v2, "duration"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4073
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "allDay"

    const-string v2, "allDay"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4074
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "visibility"

    const-string v2, "visibility"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4075
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "transparency"

    const-string v2, "transparency"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4076
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "hasAlarm"

    const-string v2, "hasAlarm"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4077
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "hasExtendedProperties"

    const-string v2, "hasExtendedProperties"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4078
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "rrule"

    const-string v2, "rrule"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4079
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "rdate"

    const-string v2, "rdate"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4080
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "exrule"

    const-string v2, "exrule"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4081
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "exdate"

    const-string v2, "exdate"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4082
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "originalEvent"

    const-string v2, "originalEvent"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4083
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "originalInstanceTime"

    const-string v2, "originalInstanceTime"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4084
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "originalAllDay"

    const-string v2, "originalAllDay"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4085
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "lastDate"

    const-string v2, "lastDate"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4086
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "hasAttendeeData"

    const-string v2, "hasAttendeeData"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4087
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "calendar_id"

    const-string v2, "calendar_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4088
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "guestsCanInviteOthers"

    const-string v2, "guestsCanInviteOthers"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4089
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "guestsCanModify"

    const-string v2, "guestsCanModify"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4090
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "guestsCanSeeGuests"

    const-string v2, "guestsCanSeeGuests"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4091
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "organizer"

    const-string v2, "organizer"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4092
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "deleted"

    const-string v2, "deleted"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4095
    new-instance v0, Ljava/util/HashMap;

    sget-object v1, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    sput-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sAttendeesProjectionMap:Ljava/util/HashMap;

    .line 4096
    new-instance v0, Ljava/util/HashMap;

    sget-object v1, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    sput-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sRemindersProjectionMap:Ljava/util/HashMap;

    .line 4099
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "color"

    const-string v2, "color"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4100
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "access_level"

    const-string v2, "access_level"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4101
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "selected"

    const-string v2, "selected"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4102
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "url"

    const-string v2, "url"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4103
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "timezone"

    const-string v2, "timezone"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4104
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "ownerAccount"

    const-string v2, "ownerAccount"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4105
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "sync_type"

    const-string v2, "sync_type"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4106
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "displayName"

    const-string v2, "displayName"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4111
    new-instance v0, Ljava/util/HashMap;

    sget-object v1, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    sput-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sInstancesProjectionMap:Ljava/util/HashMap;

    .line 4112
    new-instance v0, Ljava/util/HashMap;

    sget-object v1, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    sput-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sCalendarAlertsProjectionMap:Ljava/util/HashMap;

    .line 4114
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "_id"

    const-string v1, "_id"

    invoke-virtual {v0, v4, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4115
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "_sync_id"

    const-string v2, "_sync_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4116
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "_sync_version"

    const-string v2, "_sync_version"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4117
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "_sync_time"

    const-string v2, "_sync_time"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4118
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "_sync_local_id"

    const-string v2, "_sync_local_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4119
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "_sync_dirty"

    const-string v2, "_sync_dirty"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4120
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "_sync_account"

    const-string v2, "_sync_account"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4121
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "_sync_account_type"

    const-string v2, "_sync_account_type"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4124
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    .line 4125
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "htmlUri"

    const-string v2, "htmlUri"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4126
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "title"

    const-string v2, "title"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4127
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "description"

    const-string v2, "description"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4128
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "eventLocation"

    const-string v2, "eventLocation"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4129
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "eventStatus"

    const-string v2, "eventStatus"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4130
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "selfAttendeeStatus"

    const-string v2, "selfAttendeeStatus"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4131
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "commentsUri"

    const-string v2, "commentsUri"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4132
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "dtstart"

    const-string v2, "dtstart"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4133
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "dtend"

    const-string v2, "dtend"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4134
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "duration"

    const-string v2, "duration"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4135
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "eventTimezone"

    const-string v2, "eventTimezone"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4136
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "allDay"

    const-string v2, "allDay"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4137
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "visibility"

    const-string v2, "visibility"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4138
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "transparency"

    const-string v2, "transparency"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4139
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "hasAlarm"

    const-string v2, "hasAlarm"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4140
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "hasExtendedProperties"

    const-string v2, "hasExtendedProperties"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4141
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "rrule"

    const-string v2, "rrule"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4142
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "rdate"

    const-string v2, "rdate"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4143
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "exrule"

    const-string v2, "exrule"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4144
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "exdate"

    const-string v2, "exdate"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4145
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "originalEvent"

    const-string v2, "originalEvent"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4146
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "originalInstanceTime"

    const-string v2, "originalInstanceTime"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4147
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "originalAllDay"

    const-string v2, "originalAllDay"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4148
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "lastDate"

    const-string v2, "lastDate"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4149
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "hasAttendeeData"

    const-string v2, "hasAttendeeData"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4150
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "calendar_id"

    const-string v2, "calendar_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4151
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "guestsCanInviteOthers"

    const-string v2, "guestsCanInviteOthers"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4152
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "guestsCanModify"

    const-string v2, "guestsCanModify"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4153
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "guestsCanSeeGuests"

    const-string v2, "guestsCanSeeGuests"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4154
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "organizer"

    const-string v2, "organizer"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4155
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "deleted"

    const-string v2, "deleted"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4156
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "_id"

    const-string v1, "_id"

    invoke-virtual {v0, v4, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4157
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "_sync_id"

    const-string v2, "_sync_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4158
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "_sync_local_id"

    const-string v2, "_sync_local_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4159
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "_sync_version"

    const-string v2, "_sync_version"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4160
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "_sync_dirty"

    const-string v2, "_sync_dirty"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4161
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "url"

    const-string v2, "url"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4164
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sInstancesProjectionMap:Ljava/util/HashMap;

    const-string v1, "begin"

    const-string v2, "begin"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4165
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sInstancesProjectionMap:Ljava/util/HashMap;

    const-string v1, "end"

    const-string v2, "end"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4166
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sInstancesProjectionMap:Ljava/util/HashMap;

    const-string v1, "event_id"

    const-string v1, "Instances.event_id AS event_id"

    invoke-virtual {v0, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4167
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sInstancesProjectionMap:Ljava/util/HashMap;

    const-string v1, "_id"

    const-string v1, "Instances._id AS _id"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4168
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sInstancesProjectionMap:Ljava/util/HashMap;

    const-string v1, "startDay"

    const-string v2, "startDay"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4169
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sInstancesProjectionMap:Ljava/util/HashMap;

    const-string v1, "endDay"

    const-string v2, "endDay"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4170
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sInstancesProjectionMap:Ljava/util/HashMap;

    const-string v1, "startMinute"

    const-string v2, "startMinute"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4171
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sInstancesProjectionMap:Ljava/util/HashMap;

    const-string v1, "endMinute"

    const-string v2, "endMinute"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4174
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sAttendeesProjectionMap:Ljava/util/HashMap;

    const-string v1, "event_id"

    const-string v1, "event_id"

    invoke-virtual {v0, v7, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4175
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sAttendeesProjectionMap:Ljava/util/HashMap;

    const-string v1, "_id"

    const-string v1, "Attendees._id AS _id"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4176
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sAttendeesProjectionMap:Ljava/util/HashMap;

    const-string v1, "attendeeName"

    const-string v2, "attendeeName"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4177
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sAttendeesProjectionMap:Ljava/util/HashMap;

    const-string v1, "attendeeEmail"

    const-string v2, "attendeeEmail"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4178
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sAttendeesProjectionMap:Ljava/util/HashMap;

    const-string v1, "attendeeStatus"

    const-string v2, "attendeeStatus"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4179
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sAttendeesProjectionMap:Ljava/util/HashMap;

    const-string v1, "attendeeRelationship"

    const-string v2, "attendeeRelationship"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4180
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sAttendeesProjectionMap:Ljava/util/HashMap;

    const-string v1, "attendeeType"

    const-string v2, "attendeeType"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4183
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sRemindersProjectionMap:Ljava/util/HashMap;

    const-string v1, "event_id"

    const-string v1, "event_id"

    invoke-virtual {v0, v7, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4184
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sRemindersProjectionMap:Ljava/util/HashMap;

    const-string v1, "_id"

    const-string v1, "Reminders._id AS _id"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4185
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sRemindersProjectionMap:Ljava/util/HashMap;

    const-string v1, "minutes"

    const-string v2, "minutes"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4186
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sRemindersProjectionMap:Ljava/util/HashMap;

    const-string v1, "method"

    const-string v2, "method"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4189
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sCalendarAlertsProjectionMap:Ljava/util/HashMap;

    const-string v1, "event_id"

    const-string v1, "event_id"

    invoke-virtual {v0, v7, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4190
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sCalendarAlertsProjectionMap:Ljava/util/HashMap;

    const-string v1, "_id"

    const-string v1, "CalendarAlerts._id AS _id"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4191
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sCalendarAlertsProjectionMap:Ljava/util/HashMap;

    const-string v1, "begin"

    const-string v2, "begin"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4192
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sCalendarAlertsProjectionMap:Ljava/util/HashMap;

    const-string v1, "end"

    const-string v2, "end"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4193
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sCalendarAlertsProjectionMap:Ljava/util/HashMap;

    const-string v1, "alarmTime"

    const-string v2, "alarmTime"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4194
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sCalendarAlertsProjectionMap:Ljava/util/HashMap;

    const-string v1, "state"

    const-string v2, "state"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4195
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sCalendarAlertsProjectionMap:Ljava/util/HashMap;

    const-string v1, "minutes"

    const-string v2, "minutes"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4198
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sCalendarCacheProjectionMap:Ljava/util/HashMap;

    .line 4199
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sCalendarCacheProjectionMap:Ljava/util/HashMap;

    const-string v1, "key"

    const-string v2, "key"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4200
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sCalendarCacheProjectionMap:Ljava/util/HashMap;

    const-string v1, "value"

    const-string v2, "value"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4203
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sChipCalendarsProjectionMap:Ljava/util/HashMap;

    .line 4204
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sChipCalendarsProjectionMap:Ljava/util/HashMap;

    const-string v1, "_id"

    const-string v1, "_id"

    invoke-virtual {v0, v4, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4205
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sChipCalendarsProjectionMap:Ljava/util/HashMap;

    const-string v1, "chip_id"

    const-string v2, "chip_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4206
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sChipCalendarsProjectionMap:Ljava/util/HashMap;

    const-string v1, "chip_calendar_id"

    const-string v2, "chip_calendar_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4207
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sChipCalendarsProjectionMap:Ljava/util/HashMap;

    const-string v1, "chip_calendar_selected"

    const-string v2, "chip_calendar_selected"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4208
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/providers/calendar/SQLiteContentProvider;-><init>()V

    .line 324
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/providers/calendar/CalendarProvider2;->mAlarmLock:Ljava/lang/Object;

    .line 352
    invoke-static {}, Lcom/android/providers/calendar/CalendarWidgetProvider;->getInstance()Lcom/android/providers/calendar/CalendarWidgetProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/calendar/CalendarProvider2;->mAppWidgetProvider:Lcom/android/providers/calendar/CalendarWidgetProvider;

    .line 357
    new-instance v0, Lcom/android/providers/calendar/CalendarProvider2$1;

    invoke-direct {v0, p0}, Lcom/android/providers/calendar/CalendarProvider2$1;-><init>(Lcom/android/providers/calendar/CalendarProvider2;)V

    iput-object v0, p0, Lcom/android/providers/calendar/CalendarProvider2;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 507
    return-void
.end method

.method static synthetic access$000(Lcom/android/providers/calendar/CalendarProvider2;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarProvider2;->mAlarmLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 88
    sget-boolean v0, Lcom/android/providers/calendar/CalendarProvider2;->mRemoveAlarmsOnRerun:Z

    return v0
.end method

.method static synthetic access$102(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 88
    sput-boolean p0, Lcom/android/providers/calendar/CalendarProvider2;->mRemoveAlarmsOnRerun:Z

    return p0
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 88
    sget-boolean v0, Lcom/android/providers/calendar/CalendarProvider2;->mRerunAlarmScheduler:Z

    return v0
.end method

.method static synthetic access$202(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 88
    sput-boolean p0, Lcom/android/providers/calendar/CalendarProvider2;->mRerunAlarmScheduler:Z

    return p0
.end method

.method static synthetic access$300(Lcom/android/providers/calendar/CalendarProvider2;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/CalendarProvider2;->runScheduleNextAlarm(Z)V

    return-void
.end method

.method static synthetic access$402(Lcom/android/providers/calendar/CalendarProvider2$AlarmScheduler;)Lcom/android/providers/calendar/CalendarProvider2$AlarmScheduler;
    .locals 0
    .parameter "x0"

    .prologue
    .line 88
    sput-object p0, Lcom/android/providers/calendar/CalendarProvider2;->mAlarmScheduler:Lcom/android/providers/calendar/CalendarProvider2$AlarmScheduler;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/providers/calendar/CalendarProvider2;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/CalendarProvider2;->performTimeZoneDependentFieldsUpdate(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method private acquireInstanceRange(Landroid/database/sqlite/SQLiteDatabase;JJZZLjava/lang/String;Z)V
    .locals 1
    .parameter "db"
    .parameter "begin"
    .parameter "end"
    .parameter "useMinimumExpansionWindow"
    .parameter "forceExpansion"
    .parameter "instancesTimezone"
    .parameter "isHomeTimezone"

    .prologue
    .line 1110
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1112
    :try_start_0
    invoke-direct/range {p0 .. p9}, Lcom/android/providers/calendar/CalendarProvider2;->acquireInstanceRangeLocked(Landroid/database/sqlite/SQLiteDatabase;JJZZLjava/lang/String;Z)V

    .line 1114
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1116
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1118
    return-void

    .line 1116
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method private acquireInstanceRangeLocked(Landroid/database/sqlite/SQLiteDatabase;JJZZLjava/lang/String;Z)V
    .locals 31
    .parameter "db"
    .parameter "begin"
    .parameter "end"
    .parameter "useMinimumExpansionWindow"
    .parameter "forceExpansion"
    .parameter "instancesTimezone"
    .parameter "isHomeTimezone"

    .prologue
    .line 1133
    move-wide/from16 v4, p2

    .line 1134
    .local v4, expandBegin:J
    move-wide/from16 v6, p4

    .line 1136
    .local v6, expandEnd:J
    if-nez p8, :cond_1

    .line 1137
    const-string v2, "CalendarProvider2"

    const/4 v3, 0x6

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1138
    const-string v2, "CalendarProvider2"

    const-string v3, "Cannot run acquireInstanceRangeLocked() because instancesTimezone is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1238
    :cond_0
    :goto_0
    return-void

    .line 1144
    :cond_1
    if-eqz p6, :cond_2

    .line 1148
    sub-long v27, p4, p2

    .line 1149
    .local v27, span:J
    const-wide v2, 0x13f4a4800L

    cmp-long v2, v27, v2

    if-gez v2, :cond_2

    .line 1150
    const-wide v2, 0x13f4a4800L

    sub-long v2, v2, v27

    const-wide/16 v8, 0x2

    div-long v21, v2, v8

    .line 1151
    .local v21, additionalRange:J
    sub-long v4, v4, v21

    .line 1152
    add-long v6, v6, v21

    .line 1159
    .end local v21           #additionalRange:J
    .end local v27           #span:J
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/CalendarProvider2;->mMetaData:Lcom/android/providers/calendar/MetaData;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/android/providers/calendar/MetaData;->getFieldsLocked()Lcom/android/providers/calendar/MetaData$Fields;

    move-result-object v23

    .line 1160
    .local v23, fields:Lcom/android/providers/calendar/MetaData$Fields;
    move-object/from16 v0, v23

    iget-wide v0, v0, Lcom/android/providers/calendar/MetaData$Fields;->maxInstance:J

    move-wide/from16 v16, v0

    .line 1161
    .local v16, maxInstance:J
    move-object/from16 v0, v23

    iget-wide v0, v0, Lcom/android/providers/calendar/MetaData$Fields;->minInstance:J

    move-wide v12, v0

    .line 1163
    .local v12, minInstance:J
    if-eqz p9, :cond_7

    .line 1164
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/CalendarProvider2;->mCalendarCache:Lcom/android/providers/calendar/CalendarCache;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/android/providers/calendar/CalendarCache;->readTimezoneInstancesPrevious()Ljava/lang/String;

    move-result-object v26

    .line 1165
    .local v26, previousTimezone:Ljava/lang/String;
    move-object/from16 v0, p8

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const/4 v2, 0x1

    move/from16 v29, v2

    .line 1176
    .end local v26           #previousTimezone:Ljava/lang/String;
    .local v29, timezoneChanged:Z
    :cond_3
    :goto_1
    const-wide/16 v2, 0x0

    cmp-long v2, v16, v2

    if-eqz v2, :cond_4

    if-nez v29, :cond_4

    if-eqz p7, :cond_9

    .line 1178
    :cond_4
    const-string v2, "DELETE FROM Instances;"

    move-object/from16 v0, p1

    move-object v1, v2

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1179
    const-string v2, "CalendarProvider2"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1180
    const-string v2, "CalendarProvider2"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "acquireInstanceRangeLocked() deleted Instances, timezone changed: "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v8, p8

    .line 1183
    invoke-direct/range {v2 .. v8}, Lcom/android/providers/calendar/CalendarProvider2;->expandInstanceRangeLocked(Landroid/database/sqlite/SQLiteDatabase;JJLjava/lang/String;)V

    .line 1185
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/CalendarProvider2;->mMetaData:Lcom/android/providers/calendar/MetaData;

    move-object v2, v0

    move-object/from16 v3, p8

    invoke-virtual/range {v2 .. v7}, Lcom/android/providers/calendar/MetaData;->writeLocked(Ljava/lang/String;JJ)V

    .line 1187
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/CalendarProvider2;->mCalendarCache:Lcom/android/providers/calendar/CalendarCache;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/android/providers/calendar/CalendarCache;->readTimezoneType()Ljava/lang/String;

    move-result-object v30

    .line 1191
    .local v30, timezoneType:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/CalendarProvider2;->mCalendarCache:Lcom/android/providers/calendar/CalendarCache;

    move-object v2, v0

    move-object v0, v2

    move-object/from16 v1, p8

    invoke-virtual {v0, v1}, Lcom/android/providers/calendar/CalendarCache;->writeTimezoneInstances(Ljava/lang/String;)V

    .line 1194
    const-string v2, "auto"

    move-object/from16 v0, v30

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1195
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/CalendarProvider2;->mCalendarCache:Lcom/android/providers/calendar/CalendarCache;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/android/providers/calendar/CalendarCache;->readTimezoneInstancesPrevious()Ljava/lang/String;

    move-result-object v25

    .line 1196
    .local v25, prevTZ:Ljava/lang/String;
    const-string v2, "GMT"

    move-object v0, v2

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1197
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/CalendarProvider2;->mCalendarCache:Lcom/android/providers/calendar/CalendarCache;

    move-object v2, v0

    move-object v0, v2

    move-object/from16 v1, p8

    invoke-virtual {v0, v1}, Lcom/android/providers/calendar/CalendarCache;->writeTimezoneInstancesPrevious(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1165
    .end local v25           #prevTZ:Ljava/lang/String;
    .end local v29           #timezoneChanged:Z
    .end local v30           #timezoneType:Ljava/lang/String;
    .restart local v26       #previousTimezone:Ljava/lang/String;
    :cond_6
    const/4 v2, 0x0

    move/from16 v29, v2

    goto/16 :goto_1

    .line 1167
    .end local v26           #previousTimezone:Ljava/lang/String;
    :cond_7
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v24

    .line 1168
    .local v24, localTimezone:Ljava/lang/String;
    move-object/from16 v0, p8

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    const/4 v2, 0x1

    move/from16 v29, v2

    .line 1170
    .restart local v29       #timezoneChanged:Z
    :goto_2
    if-eqz v29, :cond_3

    .line 1171
    move-object/from16 p8, v24

    goto/16 :goto_1

    .line 1168
    .end local v29           #timezoneChanged:Z
    :cond_8
    const/4 v2, 0x0

    move/from16 v29, v2

    goto :goto_2

    .line 1214
    .end local v24           #localTimezone:Ljava/lang/String;
    .restart local v29       #timezoneChanged:Z
    :cond_9
    cmp-long v2, p2, v12

    if-ltz v2, :cond_a

    cmp-long v2, p4, v16

    if-gtz v2, :cond_a

    .line 1215
    const-string v2, "CalendarProvider2"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1216
    const-string v2, "CalendarProvider2"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Canceled instance query ("

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, ", "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, ") falls within previously expanded range."

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1224
    :cond_a
    cmp-long v2, p2, v12

    if-gez v2, :cond_b

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-wide v10, v4

    move-object/from16 v14, p8

    .line 1225
    invoke-direct/range {v8 .. v14}, Lcom/android/providers/calendar/CalendarProvider2;->expandInstanceRangeLocked(Landroid/database/sqlite/SQLiteDatabase;JJLjava/lang/String;)V

    .line 1226
    move-wide v12, v4

    .line 1231
    :cond_b
    cmp-long v2, p4, v16

    if-lez v2, :cond_c

    move-object/from16 v14, p0

    move-object/from16 v15, p1

    move-wide/from16 v18, v6

    move-object/from16 v20, p8

    .line 1232
    invoke-direct/range {v14 .. v20}, Lcom/android/providers/calendar/CalendarProvider2;->expandInstanceRangeLocked(Landroid/database/sqlite/SQLiteDatabase;JJLjava/lang/String;)V

    .line 1233
    move-wide/from16 v16, v6

    .line 1237
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/CalendarProvider2;->mMetaData:Lcom/android/providers/calendar/MetaData;

    move-object v10, v0

    move-object/from16 v11, p8

    move-wide/from16 v14, v16

    invoke-virtual/range {v10 .. v15}, Lcom/android/providers/calendar/MetaData;->writeLocked(Ljava/lang/String;JJ)V

    goto/16 :goto_0
.end method

.method private appendAccountFromParameter(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;)V
    .locals 4
    .parameter "qb"
    .parameter "uri"

    .prologue
    .line 3526
    const-string v2, "account_name"

    invoke-static {p2, v2}, Lcom/android/providers/calendar/CalendarProvider2;->getQueryParameter(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3527
    .local v0, accountName:Ljava/lang/String;
    const-string v2, "account_type"

    invoke-static {p2, v2}, Lcom/android/providers/calendar/CalendarProvider2;->getQueryParameter(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3528
    .local v1, accountType:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3529
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_sync_account="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_sync_account_type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 3536
    :goto_0
    return-void

    .line 3534
    :cond_0
    const-string v2, "1"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private appendAccountToSelection(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "uri"
    .parameter "selection"

    .prologue
    .line 3539
    const-string v3, "account_name"

    invoke-static {p1, v3}, Lcom/android/providers/calendar/CalendarProvider2;->getQueryParameter(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3540
    .local v0, accountName:Ljava/lang/String;
    const-string v3, "account_type"

    invoke-static {p1, v3}, Lcom/android/providers/calendar/CalendarProvider2;->getQueryParameter(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3541
    .local v1, accountType:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 3542
    new-instance v2, Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_sync_account="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_sync_account_type"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3546
    .local v2, selectionSb:Ljava/lang/StringBuilder;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 3547
    const-string v3, " AND ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3548
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3549
    const/16 v3, 0x29

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3551
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3553
    .end local v2           #selectionSb:Ljava/lang/StringBuilder;
    :goto_0
    return-object v3

    :cond_1
    move-object v3, p2

    goto :goto_0
.end method

.method private appendIds(Ljava/lang/StringBuilder;Ljava/util/HashSet;)V
    .locals 5
    .parameter "sb"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 740
    .local p2, ids:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    invoke-virtual {p2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .end local p0
    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 741
    .local v1, id:J
    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x2c

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 744
    .end local v1           #id:J
    :cond_0
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 745
    return-void
.end method

.method private computeTimezoneDependentFields(JJLandroid/text/format/Time;Landroid/content/ContentValues;)V
    .locals 6
    .parameter "begin"
    .parameter "end"
    .parameter "local"
    .parameter "values"

    .prologue
    .line 1710
    invoke-virtual {p5, p1, p2}, Landroid/text/format/Time;->set(J)V

    .line 1711
    iget-wide v4, p5, Landroid/text/format/Time;->gmtoff:J

    invoke-static {p1, p2, v4, v5}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v2

    .line 1712
    .local v2, startDay:I
    iget v4, p5, Landroid/text/format/Time;->hour:I

    mul-int/lit8 v4, v4, 0x3c

    iget v5, p5, Landroid/text/format/Time;->minute:I

    add-int v3, v4, v5

    .line 1714
    .local v3, startMinute:I
    invoke-virtual {p5, p3, p4}, Landroid/text/format/Time;->set(J)V

    .line 1715
    iget-wide v4, p5, Landroid/text/format/Time;->gmtoff:J

    invoke-static {p3, p4, v4, v5}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v0

    .line 1716
    .local v0, endDay:I
    iget v4, p5, Landroid/text/format/Time;->hour:I

    mul-int/lit8 v4, v4, 0x3c

    iget v5, p5, Landroid/text/format/Time;->minute:I

    add-int v1, v4, v5

    .line 1722
    .local v1, endMinute:I
    if-nez v1, :cond_0

    if-le v0, v2, :cond_0

    .line 1723
    const/16 v1, 0x5a0

    .line 1724
    add-int/lit8 v0, v0, -0x1

    .line 1727
    :cond_0
    const-string v4, "startDay"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p6, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1728
    const-string v4, "endDay"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p6, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1729
    const-string v4, "startMinute"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p6, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1730
    const-string v4, "endMinute"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p6, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1731
    return-void
.end method

.method private createAttendeeEntry(JILjava/lang/String;)V
    .locals 4
    .parameter "eventId"
    .parameter "status"
    .parameter "emailAddress"

    .prologue
    .line 2293
    iget-object v2, p0, Lcom/android/providers/calendar/CalendarProvider2;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2}, Lcom/android/providers/calendar/CalendarProvider2;->getDatabaseHelper(Landroid/content/Context;)Lcom/android/providers/calendar/CalendarDatabaseHelper;

    move-result-object v0

    .line 2294
    .local v0, dbHelper:Lcom/android/providers/calendar/CalendarDatabaseHelper;
    if-nez v0, :cond_0

    .line 2309
    :goto_0
    return-void

    .line 2296
    :cond_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 2297
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "event_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2298
    const-string v2, "attendeeStatus"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2299
    const-string v2, "attendeeType"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2302
    const-string v2, "attendeeRelationship"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2304
    const-string v2, "attendeeEmail"

    invoke-virtual {v1, v2, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2308
    invoke-virtual {v0, v1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->attendeesInsert(Landroid/content/ContentValues;)J

    goto :goto_0
.end method

.method private deleteEventInternal(Landroid/database/sqlite/SQLiteDatabase;JZZ)I
    .locals 33
    .parameter "db"
    .parameter "id"
    .parameter "callerIsSyncAdapter"
    .parameter "isBatch"

    .prologue
    .line 2980
    const/16 v27, 0x0

    .line 2981
    .local v27, result:I
    const/16 v22, 0x0

    .line 2982
    .local v22, isRecurrenceException:Z
    const/16 v16, 0x1

    .line 2984
    .local v16, deleteData:Z
    const/4 v5, 0x1

    new-array v9, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v9, v5

    .line 2987
    .local v9, selectionArgs:[Ljava/lang/String;
    const-string v6, "Events"

    sget-object v7, Lcom/android/providers/calendar/CalendarProvider2;->EVENTS_PROJECTION:[Ljava/lang/String;

    const-string v8, "_id=?"

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 2992
    .local v15, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2993
    const/16 v27, 0x1

    .line 2994
    const/4 v5, 0x0

    invoke-interface {v15, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v29

    .line 2995
    .local v29, syncId:Ljava/lang/String;
    invoke-static/range {v29 .. v29}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    .line 2996
    .local v18, emptySyncId:Z
    invoke-static/range {v29 .. v29}, Lcom/motorola/blur/calendar/sync/activesync/common/CalendarUtils;->isLocalServerId(Ljava/lang/String;)Z

    move-result v24

    .line 2997
    .local v24, localServerId:Z
    const/4 v5, 0x1

    invoke-interface {v15, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    .line 2998
    .local v28, rrule:Ljava/lang/String;
    const/4 v5, 0x2

    invoke-interface {v15, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    .line 2999
    .local v26, rdate:Ljava/lang/String;
    const/4 v5, 0x3

    invoke-interface {v15, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 3000
    .local v25, origEvent:Ljava/lang/String;
    const/4 v5, 0x4

    invoke-interface {v15, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 3002
    .local v13, calendarId:J
    invoke-direct/range {p0 .. p3}, Lcom/android/providers/calendar/CalendarProvider2;->getSyncTypeFromEventId(Landroid/database/sqlite/SQLiteDatabase;J)J

    move-result-wide v30

    .line 3003
    .local v30, syncType:J
    const-wide/16 v5, -0x1

    cmp-long v5, v5, v30

    if-nez v5, :cond_7

    const/4 v5, 0x1

    move/from16 v21, v5

    .line 3004
    .local v21, isLocal:Z
    :goto_0
    const-wide/16 v5, 0x1

    cmp-long v5, v5, v30

    if-nez v5, :cond_8

    const/4 v5, 0x1

    move/from16 v20, v5

    .line 3005
    .local v20, isActiveSync:Z
    :goto_1
    invoke-static/range {v28 .. v28}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static/range {v26 .. v26}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_9

    :cond_0
    const/4 v5, 0x1

    move/from16 v23, v5

    .line 3006
    .local v23, isRecurringEvent:Z
    :goto_2
    invoke-static/range {v25 .. v25}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_a

    const/4 v5, 0x1

    move/from16 v22, v5

    .line 3011
    :goto_3
    if-nez v23, :cond_1

    if-eqz v22, :cond_2

    .line 3012
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/CalendarProvider2;->mMetaData:Lcom/android/providers/calendar/MetaData;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/providers/calendar/MetaData;->clearInstanceRange()V

    .line 3015
    :cond_2
    if-eqz v21, :cond_b

    .line 3017
    const-string v5, "Events"

    const-string v6, "_id=?"

    move-object/from16 v0, p1

    move-object v1, v5

    move-object v2, v6

    move-object v3, v9

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3018
    const-string v5, "Attendees"

    const-string v6, "event_id=?"

    move-object/from16 v0, p1

    move-object v1, v5

    move-object v2, v6

    move-object v3, v9

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3061
    :cond_3
    :goto_4
    if-eqz v23, :cond_4

    if-nez v18, :cond_4

    .line 3063
    const-string v5, "Events"

    const-string v6, "originalEvent=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v29, v7, v8

    move-object/from16 v0, p1

    move-object v1, v5

    move-object v2, v6

    move-object v3, v7

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3071
    .end local v13           #calendarId:J
    .end local v18           #emptySyncId:Z
    .end local v20           #isActiveSync:Z
    .end local v21           #isLocal:Z
    .end local v23           #isRecurringEvent:Z
    .end local v24           #localServerId:Z
    .end local v25           #origEvent:Ljava/lang/String;
    .end local v26           #rdate:Ljava/lang/String;
    .end local v28           #rrule:Ljava/lang/String;
    .end local v29           #syncId:Ljava/lang/String;
    .end local v30           #syncType:J
    :cond_4
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 3072
    const/4 v15, 0x0

    .line 3075
    if-nez p5, :cond_5

    .line 3076
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/providers/calendar/CalendarProvider2;->scheduleNextAlarm(Z)V

    .line 3077
    const-wide/16 v5, -0x1

    move-object/from16 v0, p0

    move-wide v1, v5

    invoke-direct {v0, v1, v2}, Lcom/android/providers/calendar/CalendarProvider2;->triggerAppWidgetUpdate(J)V

    .line 3082
    :cond_5
    if-eqz v16, :cond_6

    .line 3083
    const-string v5, "Instances"

    const-string v6, "event_id=?"

    move-object/from16 v0, p1

    move-object v1, v5

    move-object v2, v6

    move-object v3, v9

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3084
    const-string v5, "EventsRawTimes"

    const-string v6, "event_id=?"

    move-object/from16 v0, p1

    move-object v1, v5

    move-object v2, v6

    move-object v3, v9

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3085
    const-string v5, "Reminders"

    const-string v6, "event_id=?"

    move-object/from16 v0, p1

    move-object v1, v5

    move-object v2, v6

    move-object v3, v9

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3086
    const-string v5, "CalendarAlerts"

    const-string v6, "event_id=?"

    move-object/from16 v0, p1

    move-object v1, v5

    move-object v2, v6

    move-object v3, v9

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3087
    const-string v5, "ExtendedProperties"

    const-string v6, "event_id=?"

    move-object/from16 v0, p1

    move-object v1, v5

    move-object v2, v6

    move-object v3, v9

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_6
    move/from16 v5, v27

    .line 3089
    :goto_5
    return v5

    .line 3003
    .restart local v13       #calendarId:J
    .restart local v18       #emptySyncId:Z
    .restart local v24       #localServerId:Z
    .restart local v25       #origEvent:Ljava/lang/String;
    .restart local v26       #rdate:Ljava/lang/String;
    .restart local v28       #rrule:Ljava/lang/String;
    .restart local v29       #syncId:Ljava/lang/String;
    .restart local v30       #syncType:J
    :cond_7
    const/4 v5, 0x0

    move/from16 v21, v5

    goto/16 :goto_0

    .line 3004
    .restart local v21       #isLocal:Z
    :cond_8
    const/4 v5, 0x0

    move/from16 v20, v5

    goto/16 :goto_1

    .line 3005
    .restart local v20       #isActiveSync:Z
    :cond_9
    const/4 v5, 0x0

    move/from16 v23, v5

    goto/16 :goto_2

    .line 3006
    .restart local v23       #isRecurringEvent:Z
    :cond_a
    const/4 v5, 0x0

    move/from16 v22, v5

    goto/16 :goto_3

    .line 3022
    :cond_b
    if-nez p4, :cond_c

    if-nez v18, :cond_c

    if-eqz v24, :cond_d

    .line 3023
    :cond_c
    :try_start_1
    const-string v5, "Events"

    const-string v6, "_id=?"

    move-object/from16 v0, p1

    move-object v1, v5

    move-object v2, v6

    move-object v3, v9

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3024
    const-string v5, "Attendees"

    const-string v6, "event_id=?"

    move-object/from16 v0, p1

    move-object v1, v5

    move-object v2, v6

    move-object v3, v9

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_4

    .line 3067
    .end local v13           #calendarId:J
    .end local v18           #emptySyncId:Z
    .end local v20           #isActiveSync:Z
    .end local v21           #isLocal:Z
    .end local v23           #isRecurringEvent:Z
    .end local v24           #localServerId:Z
    .end local v25           #origEvent:Ljava/lang/String;
    .end local v26           #rdate:Ljava/lang/String;
    .end local v28           #rrule:Ljava/lang/String;
    .end local v29           #syncId:Ljava/lang/String;
    .end local v30           #syncType:J
    :catch_0
    move-exception v5

    move-object/from16 v17, v5

    .line 3068
    .local v17, e:Landroid/database/sqlite/SQLiteFullException;
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/calendar/CalendarProvider2;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/motorola/blur/util/os/StorageUtil;->sendStorageFullIntent(Landroid/content/Context;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3069
    const/4 v5, 0x0

    .line 3071
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 3072
    const/4 v15, 0x0

    goto :goto_5

    .line 3026
    .end local v17           #e:Landroid/database/sqlite/SQLiteFullException;
    .restart local v13       #calendarId:J
    .restart local v18       #emptySyncId:Z
    .restart local v20       #isActiveSync:Z
    .restart local v21       #isLocal:Z
    .restart local v23       #isRecurringEvent:Z
    .restart local v24       #localServerId:Z
    .restart local v25       #origEvent:Ljava/lang/String;
    .restart local v26       #rdate:Ljava/lang/String;
    .restart local v28       #rrule:Ljava/lang/String;
    .restart local v29       #syncId:Ljava/lang/String;
    .restart local v30       #syncType:J
    :cond_d
    :try_start_3
    new-instance v32, Landroid/content/ContentValues;

    invoke-direct/range {v32 .. v32}, Landroid/content/ContentValues;-><init>()V

    .line 3027
    .local v32, values:Landroid/content/ContentValues;
    if-eqz v20, :cond_e

    if-eqz v22, :cond_e

    .line 3029
    const-string v5, "eventStatus"

    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v32

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3030
    const-string v5, "Events"

    const-string v6, "_id=?"

    move-object/from16 v0, p1

    move-object v1, v5

    move-object/from16 v2, v32

    move-object v3, v6

    move-object v4, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3032
    invoke-virtual/range {v32 .. v32}, Landroid/content/ContentValues;->clear()V

    .line 3033
    const-string v5, "_sync_dirty"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v32

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3036
    const-string v5, "Events"

    const-string v6, "_sync_id=? AND calendar_id=?"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v25, v7, v8

    const/4 v8, 0x1

    invoke-static {v13, v14}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v7, v8

    move-object/from16 v0, p1

    move-object v1, v5

    move-object/from16 v2, v32

    move-object v3, v6

    move-object v4, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_3 .. :try_end_3} :catch_0

    .line 3041
    const/16 v16, 0x0

    .line 3048
    :goto_6
    if-eqz v20, :cond_3

    .line 3051
    :try_start_4
    new-instance v19, Landroid/content/Intent;

    const-string v5, "com.motorola.blur.calendar.sync.activesync.Actions.START_SYNC"

    move-object/from16 v0, v19

    move-object v1, v5

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3053
    .local v19, intent:Landroid/content/Intent;
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/calendar/CalendarProvider2;->getContext()Landroid/content/Context;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_4

    .line 3054
    .end local v19           #intent:Landroid/content/Intent;
    :catch_1
    move-exception v5

    move-object/from16 v17, v5

    .line 3055
    .local v17, e:Ljava/lang/Exception;
    :try_start_5
    const-string v5, "CalendarProvider2"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to start Calendar Sync Engine: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_4

    .line 3071
    .end local v13           #calendarId:J
    .end local v17           #e:Ljava/lang/Exception;
    .end local v18           #emptySyncId:Z
    .end local v20           #isActiveSync:Z
    .end local v21           #isLocal:Z
    .end local v23           #isRecurringEvent:Z
    .end local v24           #localServerId:Z
    .end local v25           #origEvent:Ljava/lang/String;
    .end local v26           #rdate:Ljava/lang/String;
    .end local v28           #rrule:Ljava/lang/String;
    .end local v29           #syncId:Ljava/lang/String;
    .end local v30           #syncType:J
    .end local v32           #values:Landroid/content/ContentValues;
    :catchall_0
    move-exception v5

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 3072
    const/4 v15, 0x0

    throw v5

    .line 3043
    .restart local v13       #calendarId:J
    .restart local v18       #emptySyncId:Z
    .restart local v20       #isActiveSync:Z
    .restart local v21       #isLocal:Z
    .restart local v23       #isRecurringEvent:Z
    .restart local v24       #localServerId:Z
    .restart local v25       #origEvent:Ljava/lang/String;
    .restart local v26       #rdate:Ljava/lang/String;
    .restart local v28       #rrule:Ljava/lang/String;
    .restart local v29       #syncId:Ljava/lang/String;
    .restart local v30       #syncType:J
    .restart local v32       #values:Landroid/content/ContentValues;
    :cond_e
    :try_start_6
    const-string v5, "deleted"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v32

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3044
    const-string v5, "_sync_dirty"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v32

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3045
    const-string v5, "Events"

    const-string v6, "_id=?"

    move-object/from16 v0, p1

    move-object v1, v5

    move-object/from16 v2, v32

    move-object v3, v6

    move-object v4, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_6
.end method

.method private deleteFromTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 13
    .parameter "db"
    .parameter "table"
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 3102
    sget-object v2, Lcom/android/providers/calendar/CalendarProvider2;->ID_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    move-object v0, p0

    move-object/from16 v1, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/calendar/CalendarProvider2;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3103
    .local v6, c:Landroid/database/Cursor;
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 3104
    .local v12, values:Landroid/content/ContentValues;
    const-string v0, "_sync_dirty"

    const-string v1, "1"

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3105
    const/4 v7, 0x0

    .line 3107
    .local v7, count:I
    :goto_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3108
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 3109
    .local v10, id:J
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 3110
    .local v8, event_id:J
    const-string v0, "_id=?"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p1, p2, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3111
    const-string v0, "Events"

    const-string v1, "_id=?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p1, v0, v12, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3112
    add-int/lit8 v7, v7, 0x1

    .line 3113
    goto :goto_0

    .line 3115
    .end local v8           #event_id:J
    .end local v10           #id:J
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3117
    return v7

    .line 3115
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private deleteMatchingCalendars(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)I
    .locals 12
    .parameter "db"
    .parameter "where"

    .prologue
    const/4 v11, 0x0

    const/4 v4, 0x0

    const-string v1, "Calendars"

    .line 3155
    const-string v0, "Calendars"

    sget-object v2, Lcom/android/providers/calendar/CalendarProvider2;->sCalendarsIdProjection:[Ljava/lang/String;

    move-object v0, p1

    move-object v3, p2

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 3158
    .local v8, c:Landroid/database/Cursor;
    if-nez v8, :cond_0

    move v0, v11

    .line 3169
    :goto_0
    return v0

    .line 3162
    :cond_0
    :goto_1
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3163
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 3164
    .local v9, id:J
    const/4 v0, 0x0

    invoke-direct {p0, v9, v10, v0}, Lcom/android/providers/calendar/CalendarProvider2;->modifyCalendarSubscription(JZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 3167
    .end local v9           #id:J
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 3169
    const-string v0, "Calendars"

    invoke-virtual {p1, v1, p2, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method private expandInstanceRangeLocked(Landroid/database/sqlite/SQLiteDatabase;JJLjava/lang/String;)V
    .locals 7
    .parameter "db"
    .parameter "begin"
    .parameter "end"
    .parameter "localTimezone"

    .prologue
    const-string v2, "CalendarProvider2"

    .line 1268
    const-string v0, "CalendarProvider2"

    const/4 v0, 0x2

    invoke-static {v2, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1269
    const-string v0, "CalendarProvider2"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expanding events between "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1272
    :cond_0
    invoke-direct/range {p0 .. p5}, Lcom/android/providers/calendar/CalendarProvider2;->getEntries(Landroid/database/sqlite/SQLiteDatabase;JJ)Landroid/database/Cursor;

    move-result-object v6

    .local v6, entries:Landroid/database/Cursor;
    move-object v0, p0

    move-wide v1, p2

    move-wide v3, p4

    move-object v5, p6

    .line 1274
    :try_start_0
    invoke-direct/range {v0 .. v6}, Lcom/android/providers/calendar/CalendarProvider2;->performInstanceExpansion(JJLjava/lang/String;Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1276
    if-eqz v6, :cond_1

    .line 1277
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1283
    :cond_1
    return-void

    .line 1276
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 1277
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method private fixAllDayTime(Landroid/net/Uri;Landroid/content/ContentValues;)Z
    .locals 20
    .parameter "uri"
    .parameter "updatedValues"

    .prologue
    .line 1789
    const/16 v16, 0x0

    .line 1790
    .local v16, neededCorrection:Z
    const-string v3, "allDay"

    move-object/from16 v0, p2

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    const-string v3, "allDay"

    move-object/from16 v0, p2

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 1792
    const-string v3, "dtstart"

    move-object/from16 v0, p2

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v12

    .line 1793
    .local v12, dtstart:Ljava/lang/Long;
    const-string v3, "dtend"

    move-object/from16 v0, p2

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v11

    .line 1794
    .local v11, dtend:Ljava/lang/Long;
    const-string v3, "duration"

    move-object/from16 v0, p2

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1795
    .local v13, duration:Ljava/lang/String;
    new-instance v19, Landroid/text/format/Time;

    invoke-direct/range {v19 .. v19}, Landroid/text/format/Time;-><init>()V

    .line 1796
    .local v19, time:Landroid/text/format/Time;
    const/4 v9, 0x0

    .line 1801
    .local v9, currentTimesCursor:Landroid/database/Cursor;
    if-eqz v12, :cond_0

    if-nez v11, :cond_2

    if-nez v13, :cond_2

    .line 1803
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 1804
    sget-object v5, Lcom/android/providers/calendar/CalendarProvider2;->ALLDAY_TIME_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-virtual/range {v3 .. v8}, Lcom/android/providers/calendar/CalendarProvider2;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1809
    if-eqz v9, :cond_2

    .line 1810
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    .line 1815
    :cond_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1816
    const/4 v9, 0x0

    .line 1825
    :cond_2
    if-nez v12, :cond_3

    .line 1826
    if-eqz v9, :cond_c

    .line 1829
    const/4 v3, 0x1

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 1831
    .local v18, tempValue:Ljava/lang/String;
    :try_start_0
    invoke-static/range {v18 .. v18}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    .line 1841
    .end local v18           #tempValue:Ljava/lang/String;
    :cond_3
    const-string v3, "UTC"

    move-object/from16 v0, v19

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->clear(Ljava/lang/String;)V

    .line 1842
    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    move-object/from16 v0, v19

    move-wide v1, v3

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 1843
    move-object/from16 v0, v19

    iget v0, v0, Landroid/text/format/Time;->hour:I

    move v3, v0

    if-nez v3, :cond_4

    move-object/from16 v0, v19

    iget v0, v0, Landroid/text/format/Time;->minute:I

    move v3, v0

    if-nez v3, :cond_4

    move-object/from16 v0, v19

    iget v0, v0, Landroid/text/format/Time;->second:I

    move v3, v0

    if-eqz v3, :cond_5

    .line 1844
    :cond_4
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, v19

    iput v0, v1, Landroid/text/format/Time;->hour:I

    .line 1845
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, v19

    iput v0, v1, Landroid/text/format/Time;->minute:I

    .line 1846
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, v19

    iput v0, v1, Landroid/text/format/Time;->second:I

    .line 1847
    const-string v3, "dtstart"

    const/4 v4, 0x1

    move-object/from16 v0, v19

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, p2

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1848
    const/16 v16, 0x1

    .line 1852
    :cond_5
    if-nez v11, :cond_6

    if-eqz v9, :cond_6

    .line 1855
    const/4 v3, 0x2

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 1857
    .restart local v18       #tempValue:Ljava/lang/String;
    :try_start_1
    invoke-static/range {v18 .. v18}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v11

    .line 1862
    .end local v18           #tempValue:Ljava/lang/String;
    :cond_6
    :goto_0
    if-eqz v11, :cond_8

    .line 1863
    const-string v3, "UTC"

    move-object/from16 v0, v19

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->clear(Ljava/lang/String;)V

    .line 1864
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    move-object/from16 v0, v19

    move-wide v1, v3

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 1865
    move-object/from16 v0, v19

    iget v0, v0, Landroid/text/format/Time;->hour:I

    move v3, v0

    if-nez v3, :cond_7

    move-object/from16 v0, v19

    iget v0, v0, Landroid/text/format/Time;->minute:I

    move v3, v0

    if-nez v3, :cond_7

    move-object/from16 v0, v19

    iget v0, v0, Landroid/text/format/Time;->second:I

    move v3, v0

    if-eqz v3, :cond_8

    .line 1866
    :cond_7
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, v19

    iput v0, v1, Landroid/text/format/Time;->hour:I

    .line 1867
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, v19

    iput v0, v1, Landroid/text/format/Time;->minute:I

    .line 1868
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, v19

    iput v0, v1, Landroid/text/format/Time;->second:I

    .line 1869
    const/4 v3, 0x1

    move-object/from16 v0, v19

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    .line 1870
    const-string v3, "dtend"

    move-object/from16 v0, p2

    move-object v1, v3

    move-object v2, v11

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1871
    const/16 v16, 0x1

    .line 1875
    :cond_8
    if-eqz v9, :cond_a

    .line 1876
    if-nez v13, :cond_9

    .line 1877
    const/4 v3, 0x3

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 1879
    :cond_9
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1882
    :cond_a
    if-eqz v13, :cond_b

    .line 1883
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v15

    .line 1887
    .local v15, len:I
    if-nez v15, :cond_d

    .line 1888
    const/4 v13, 0x0

    .line 1903
    .end local v15           #len:I
    :cond_b
    :goto_1
    if-nez v13, :cond_10

    if-nez v11, :cond_10

    .line 1904
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "DTEND and DURATION cannot both be null for an event."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1832
    .restart local v18       #tempValue:Ljava/lang/String;
    :catch_0
    move-exception v14

    .line 1833
    .local v14, e:Ljava/lang/NumberFormatException;
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1834
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Event has no DTSTART field, the db may be damaged. Set DTSTART for this event to fix."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1838
    .end local v14           #e:Ljava/lang/NumberFormatException;
    .end local v18           #tempValue:Ljava/lang/String;
    :cond_c
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "DTSTART cannot be empty for new events."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1858
    .restart local v18       #tempValue:Ljava/lang/String;
    :catch_1
    move-exception v14

    .line 1859
    .restart local v14       #e:Ljava/lang/NumberFormatException;
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 1889
    .end local v14           #e:Ljava/lang/NumberFormatException;
    .end local v18           #tempValue:Ljava/lang/String;
    .restart local v15       #len:I
    :cond_d
    const/4 v3, 0x0

    invoke-virtual {v13, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x50

    if-ne v3, v4, :cond_e

    const/4 v3, 0x1

    sub-int v3, v15, v3

    invoke-virtual {v13, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x53

    if-ne v3, v4, :cond_e

    .line 1891
    const/4 v3, 0x1

    const/4 v4, 0x1

    sub-int v4, v15, v4

    invoke-virtual {v13, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    .line 1892
    .local v17, seconds:I
    const v3, 0x15180

    add-int v3, v3, v17

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    const v4, 0x15180

    div-int v10, v3, v4

    .line 1893
    .local v10, days:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "P"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "D"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 1894
    const-string v3, "duration"

    move-object/from16 v0, p2

    move-object v1, v3

    move-object v2, v13

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1895
    const/16 v16, 0x1

    .line 1896
    goto :goto_1

    .end local v10           #days:I
    .end local v17           #seconds:I
    :cond_e
    const/4 v3, 0x0

    invoke-virtual {v13, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x50

    if-ne v3, v4, :cond_f

    const/4 v3, 0x1

    sub-int v3, v15, v3

    invoke-virtual {v13, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x44

    if-eq v3, v4, :cond_b

    .line 1898
    :cond_f
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "duration is not formatted correctly. Should be \'P<seconds>S\' or \'P<days>D\'."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1908
    .end local v9           #currentTimesCursor:Landroid/database/Cursor;
    .end local v11           #dtend:Ljava/lang/Long;
    .end local v12           #dtstart:Ljava/lang/Long;
    .end local v13           #duration:Ljava/lang/String;
    .end local v15           #len:I
    .end local v19           #time:Landroid/text/format/Time;
    :cond_10
    return v16
.end method

.method private get2445ToMillis(Ljava/lang/String;Ljava/lang/String;)J
    .locals 7
    .parameter "timezone"
    .parameter "dt2445"

    .prologue
    const-wide/16 v5, 0x0

    const/4 v3, 0x2

    const-string v4, "CalendarProvider2"

    .line 619
    if-nez p2, :cond_1

    .line 620
    const-string v2, "CalendarProvider2"

    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 621
    const-string v2, "CalendarProvider2"

    const-string v2, "Cannot parse null RFC2445 date"

    invoke-static {v4, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-wide v2, v5

    .line 634
    :goto_0
    return-wide v2

    .line 625
    :cond_1
    if-eqz p1, :cond_2

    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2, p1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    .line 627
    .local v1, time:Landroid/text/format/Time;
    :goto_1
    :try_start_0
    invoke-virtual {v1, p2}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/util/TimeFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 634
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    goto :goto_0

    .line 625
    .end local v1           #time:Landroid/text/format/Time;
    :cond_2
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    move-object v1, v2

    goto :goto_1

    .line 628
    .restart local v1       #time:Landroid/text/format/Time;
    :catch_0
    move-exception v0

    .line 629
    .local v0, e:Landroid/util/TimeFormatException;
    const-string v2, "CalendarProvider2"

    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 630
    const-string v2, "CalendarProvider2"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot parse RFC2445 date "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move-wide v2, v5

    .line 632
    goto :goto_0
.end method

.method private getAlarmManager()Landroid/app/AlarmManager;
    .locals 5

    .prologue
    const-string v2, "CalendarProvider2"

    .line 3646
    iget-object v2, p0, Lcom/android/providers/calendar/CalendarProvider2;->mAlarmLock:Ljava/lang/Object;

    monitor-enter v2

    .line 3647
    :try_start_0
    iget-object v3, p0, Lcom/android/providers/calendar/CalendarProvider2;->mAlarmManager:Landroid/app/AlarmManager;

    if-nez v3, :cond_2

    .line 3648
    invoke-virtual {p0}, Lcom/android/providers/calendar/CalendarProvider2;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 3649
    .local v0, context:Landroid/content/Context;
    if-nez v0, :cond_1

    .line 3650
    const-string v3, "CalendarProvider2"

    const/4 v4, 0x6

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3651
    const-string v3, "CalendarProvider2"

    const-string v4, "getAlarmManager() cannot get Context"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3653
    :cond_0
    const/4 v3, 0x0

    monitor-exit v2

    move-object v2, v3

    .line 3658
    .end local v0           #context:Landroid/content/Context;
    :goto_0
    return-object v2

    .line 3655
    .restart local v0       #context:Landroid/content/Context;
    :cond_1
    const-string v3, "alarm"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 3656
    .local v1, service:Ljava/lang/Object;
    check-cast v1, Landroid/app/AlarmManager;

    .end local v1           #service:Ljava/lang/Object;
    iput-object v1, p0, Lcom/android/providers/calendar/CalendarProvider2;->mAlarmManager:Landroid/app/AlarmManager;

    .line 3658
    .end local v0           #context:Landroid/content/Context;
    :cond_2
    iget-object v3, p0, Lcom/android/providers/calendar/CalendarProvider2;->mAlarmManager:Landroid/app/AlarmManager;

    monitor-exit v2

    move-object v2, v3

    goto :goto_0

    .line 3659
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public static declared-synchronized getAliasList(J)Ljava/util/List;
    .locals 6
    .parameter "accountId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4309
    const-class v3, Lcom/android/providers/calendar/CalendarProvider2;

    monitor-enter v3

    :try_start_0
    sget-object v4, Lcom/android/providers/calendar/CalendarProvider2;->sAliasCache:Ljava/util/Map;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4310
    .local v2, aliasList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v2, :cond_0

    move-object v4, v2

    .line 4325
    :goto_0
    monitor-exit v3

    return-object v4

    .line 4314
    :cond_0
    const-wide/16 v4, 0x0

    cmp-long v4, p0, v4

    if-lez v4, :cond_1

    .line 4315
    :try_start_1
    invoke-static {p0, p1}, Lcom/motorola/blur/service/email/api/ContentHelper;->getAccount(J)Lcom/motorola/blur/service/email/api/Account;

    move-result-object v0

    .line 4317
    .local v0, account:Lcom/motorola/blur/service/email/api/Account;
    if-eqz v0, :cond_1

    .line 4318
    invoke-virtual {v0}, Lcom/motorola/blur/service/email/api/Account;->getEmailAliases()Ljava/util/List;

    move-result-object v1

    .line 4319
    .local v1, addresses:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_1

    .line 4320
    sget-object v4, Lcom/android/providers/calendar/CalendarProvider2;->sAliasCache:Ljava/util/Map;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v4, v1

    .line 4321
    goto :goto_0

    .line 4325
    .end local v0           #account:Lcom/motorola/blur/service/email/api/Account;
    .end local v1           #addresses:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    goto :goto_0

    .line 4309
    .end local v2           #aliasList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v4

    monitor-exit v3

    throw v4
.end method

.method public static getEmailAliasSet(Landroid/database/sqlite/SQLiteDatabase;J)Ljava/util/Set;
    .locals 13
    .parameter "db"
    .parameter "eventId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "J)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4335
    const/4 v11, -0x1

    .line 4336
    .local v11, syncType:I
    const/4 v10, 0x0

    .line 4337
    .local v10, ownerEmail:Ljava/lang/String;
    const-wide/16 v8, -0x1

    .line 4339
    .local v8, accountId:J
    const/4 v0, 0x4

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "sync_type"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "calendar_sync_local_id"

    aput-object v1, v2, v0

    const/4 v0, 0x3

    const-string v1, "ownerAccount"

    aput-object v1, v2, v0

    .line 4345
    .local v2, projections:[Ljava/lang/String;
    const-string v1, "view_events"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    .end local p1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    .line 4348
    .local p2, cursor:Landroid/database/Cursor;
    if-eqz p2, :cond_3

    .line 4350
    :try_start_0
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p0

    .end local p0
    if-eqz p0, :cond_2

    .line 4351
    const/4 p0, 0x1

    invoke-interface {p2, p0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 4352
    .end local v11           #syncType:I
    .local v1, syncType:I
    const/4 p0, 0x2

    :try_start_1
    invoke-interface {p2, p0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-wide p0

    .line 4353
    .end local v8           #accountId:J
    .local p0, accountId:J
    const/4 v0, 0x3

    :try_start_2
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v0

    .line 4356
    .end local v10           #ownerEmail:Ljava/lang/String;
    .local v0, ownerEmail:Ljava/lang/String;
    :goto_0
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 4363
    :goto_1
    new-instance p2, Ljava/util/HashSet;

    .end local p2           #cursor:Landroid/database/Cursor;
    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    .line 4364
    .local p2, aliasSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 4366
    .end local v2           #projections:[Ljava/lang/String;
    invoke-static {p0, p1}, Lcom/android/providers/calendar/CalendarProvider2;->getAliasList(J)Ljava/util/List;

    move-result-object p0

    .line 4367
    .local p0, addresses:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .end local p0           #addresses:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local p1, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 4368
    .local p0, email:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .end local p0           #email:Ljava/lang/String;
    invoke-virtual {p2, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 4356
    .end local v0           #ownerEmail:Ljava/lang/String;
    .end local v1           #syncType:I
    .end local p1           #i$:Ljava/util/Iterator;
    .restart local v2       #projections:[Ljava/lang/String;
    .restart local v8       #accountId:J
    .restart local v10       #ownerEmail:Ljava/lang/String;
    .restart local v11       #syncType:I
    .local p2, cursor:Landroid/database/Cursor;
    :catchall_0
    move-exception p0

    move-object v1, p0

    move v0, v11

    .end local v11           #syncType:I
    .local v0, syncType:I
    move-wide p0, v8

    .end local v8           #accountId:J
    .local p0, accountId:J
    :goto_3
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    throw v1

    .line 4373
    .end local v2           #projections:[Ljava/lang/String;
    .end local v10           #ownerEmail:Ljava/lang/String;
    .end local p0           #accountId:J
    .local v0, ownerEmail:Ljava/lang/String;
    .restart local v1       #syncType:I
    .local p2, aliasSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 4374
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 4375
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4379
    :cond_1
    return-object p2

    .line 4356
    .end local v0           #ownerEmail:Ljava/lang/String;
    .restart local v2       #projections:[Ljava/lang/String;
    .restart local v8       #accountId:J
    .restart local v10       #ownerEmail:Ljava/lang/String;
    .local p2, cursor:Landroid/database/Cursor;
    :catchall_1
    move-exception p0

    move v0, v1

    .end local v1           #syncType:I
    .local v0, syncType:I
    move-object v1, p0

    move-wide p0, v8

    .end local v8           #accountId:J
    .restart local p0       #accountId:J
    goto :goto_3

    .end local v0           #syncType:I
    .restart local v1       #syncType:I
    :catchall_2
    move-exception v0

    move-object v12, v0

    move v0, v1

    .end local v1           #syncType:I
    .restart local v0       #syncType:I
    move-object v1, v12

    goto :goto_3

    .end local v0           #syncType:I
    .end local p0           #accountId:J
    .restart local v8       #accountId:J
    .restart local v11       #syncType:I
    :cond_2
    move-wide p0, v8

    .end local v8           #accountId:J
    .restart local p0       #accountId:J
    move-object v0, v10

    .end local v10           #ownerEmail:Ljava/lang/String;
    .local v0, ownerEmail:Ljava/lang/String;
    move v1, v11

    .end local v11           #syncType:I
    .restart local v1       #syncType:I
    goto :goto_0

    .end local v0           #ownerEmail:Ljava/lang/String;
    .end local v1           #syncType:I
    .restart local v8       #accountId:J
    .restart local v10       #ownerEmail:Ljava/lang/String;
    .restart local v11       #syncType:I
    .local p0, db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_3
    move-wide p0, v8

    .end local v8           #accountId:J
    .local p0, accountId:J
    move-object v0, v10

    .end local v10           #ownerEmail:Ljava/lang/String;
    .restart local v0       #ownerEmail:Ljava/lang/String;
    move v1, v11

    .end local v11           #syncType:I
    .restart local v1       #syncType:I
    goto :goto_1
.end method

.method private getEntries(Landroid/database/sqlite/SQLiteDatabase;JJ)Landroid/database/Cursor;
    .locals 11
    .parameter "db"
    .parameter "begin"
    .parameter "end"

    .prologue
    .line 1292
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 1293
    .local v0, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v1, "view_events"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1294
    sget-object v1, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1296
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    .line 1297
    .local v8, beginString:Ljava/lang/String;
    invoke-static/range {p4 .. p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    .line 1308
    .local v10, endString:Ljava/lang/String;
    const-string v1, "((dtstart <= ? AND (lastDate IS NULL OR lastDate >= ?)) OR (originalInstanceTime IS NOT NULL AND originalInstanceTime <= ? AND originalInstanceTime >= ?)) AND (sync_events != 0 OR sync_type = -1)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1311
    const/4 v1, 0x4

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v10, v4, v1

    const/4 v1, 0x1

    aput-object v8, v4, v1

    const/4 v1, 0x2

    aput-object v10, v4, v1

    const/4 v1, 0x3

    const-wide/32 v2, 0x240c8400

    sub-long v2, p2, v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    .line 1313
    .local v4, selectionArgs:[Ljava/lang/String;
    sget-object v2, Lcom/android/providers/calendar/CalendarProvider2;->EXPAND_COLUMNS:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1316
    .local v9, c:Landroid/database/Cursor;
    const-string v1, "CalendarProvider2"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1317
    const-string v1, "CalendarProvider2"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Instance expansion:  got "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " entries"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1319
    :cond_0
    return-object v9
.end method

.method private getOwner(J)Ljava/lang/String;
    .locals 9
    .parameter "calId"

    .prologue
    const/4 v8, 0x0

    const-string v2, "CalendarProvider2"

    .line 2221
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_1

    .line 2222
    const-string v0, "CalendarProvider2"

    const/4 v0, 0x6

    invoke-static {v2, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2223
    const-string v0, "CalendarProvider2"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Calendar Id is not valid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object v0, v8

    .line 2248
    :goto_0
    return-object v0

    .line 2228
    :cond_1
    const/4 v7, 0x0

    .line 2229
    .local v7, emailAddress:Ljava/lang/String;
    const/4 v6, 0x0

    .line 2231
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    sget-object v0, Landroid/provider/Calendar$Calendars;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "ownerAccount"

    aput-object v3, v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/calendar/CalendarProvider2;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2236
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_5

    .line 2237
    :cond_2
    const-string v0, "CalendarProvider2"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2238
    const-string v0, "CalendarProvider2"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t find "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in Calendars table"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2244
    :cond_3
    if-eqz v6, :cond_4

    .line 2245
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    move-object v0, v8

    goto :goto_0

    .line 2242
    :cond_5
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v7

    .line 2244
    if-eqz v6, :cond_6

    .line 2245
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_6
    move-object v0, v7

    .line 2248
    goto :goto_0

    .line 2244
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_7

    .line 2245
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v0
.end method

.method static getQueryParameter(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "uri"
    .parameter "parameter"

    .prologue
    const/4 v9, -0x1

    const/4 v8, 0x0

    .line 4241
    invoke-virtual {p0}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v3

    .line 4242
    .local v3, query:Ljava/lang/String;
    if-nez v3, :cond_0

    move-object v6, v8

    .line 4276
    :goto_0
    return-object v6

    .line 4246
    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    .line 4247
    .local v4, queryLength:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 4250
    .local v2, parameterLength:I
    const/4 v1, 0x0

    .line 4252
    .local v1, index:I
    :cond_1
    invoke-virtual {v3, p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 4253
    if-ne v1, v9, :cond_2

    move-object v6, v8

    .line 4254
    goto :goto_0

    .line 4257
    :cond_2
    add-int/2addr v1, v2

    .line 4259
    if-ne v4, v1, :cond_3

    move-object v6, v8

    .line 4260
    goto :goto_0

    .line 4263
    :cond_3
    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x3d

    if-ne v6, v7, :cond_1

    .line 4264
    add-int/lit8 v1, v1, 0x1

    .line 4269
    const/16 v6, 0x26

    invoke-virtual {v3, v6, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 4270
    .local v0, ampIndex:I
    if-ne v0, v9, :cond_4

    .line 4271
    invoke-virtual {v3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 4276
    .local v5, value:Ljava/lang/String;
    :goto_1
    invoke-static {v5}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 4273
    .end local v5           #value:Ljava/lang/String;
    :cond_4
    invoke-virtual {v3, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .restart local v5       #value:Ljava/lang/String;
    goto :goto_1
.end method

.method private getRelevantRecurrenceEntries(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;J)Landroid/database/Cursor;
    .locals 9
    .parameter "db"
    .parameter "recurrenceSyncId"
    .parameter "rowId"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v7, "CalendarProvider2"

    .line 2522
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 2524
    .local v0, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v1, "view_events"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 2525
    sget-object v1, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 2527
    if-nez p2, :cond_1

    .line 2528
    const-string v8, "_id =?"

    .line 2529
    .local v8, where:Ljava/lang/String;
    invoke-virtual {v0, v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2530
    new-array v4, v5, [Ljava/lang/String;

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v2

    .line 2536
    .local v4, selectionArgs:[Ljava/lang/String;
    :goto_0
    const-string v1, "CalendarProvider2"

    invoke-static {v7, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2537
    const-string v1, "CalendarProvider2"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Retrieving events to expand: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2540
    :cond_0
    sget-object v2, Lcom/android/providers/calendar/CalendarProvider2;->EXPAND_COLUMNS:[Ljava/lang/String;

    move-object v1, p1

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1

    .line 2532
    .end local v4           #selectionArgs:[Ljava/lang/String;
    .end local v8           #where:Ljava/lang/String;
    :cond_1
    const-string v8, "_sync_id = ? OR originalEvent = ?"

    .line 2533
    .restart local v8       #where:Ljava/lang/String;
    invoke-virtual {v0, v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2534
    new-array v4, v6, [Ljava/lang/String;

    aput-object p2, v4, v2

    aput-object p2, v4, v5

    .restart local v4       #selectionArgs:[Ljava/lang/String;
    goto :goto_0
.end method

.method private getSyncIdKey(Ljava/lang/String;J)Ljava/lang/String;
    .locals 2
    .parameter "syncId"
    .parameter "calendarId"

    .prologue
    .line 1332
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSyncType(J)I
    .locals 9
    .parameter "calId"

    .prologue
    const/4 v8, -0x2

    const-string v2, "CalendarProvider2"

    .line 2257
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 2258
    const-string v0, "CalendarProvider2"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Calendar Id is not valid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v8

    .line 2280
    :goto_0
    return v0

    .line 2262
    :cond_0
    const/4 v7, 0x0

    .line 2263
    .local v7, syncType:I
    const/4 v6, 0x0

    .line 2265
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    sget-object v0, Landroid/provider/Calendar$Calendars;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "sync_type"

    aput-object v3, v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/calendar/CalendarProvider2;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2270
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2271
    :cond_1
    const-string v0, "CalendarProvider2"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t find "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in Calendars table"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2276
    if-eqz v6, :cond_2

    .line 2277
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    move v0, v8

    goto :goto_0

    .line 2274
    :cond_3
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v7

    .line 2276
    if-eqz v6, :cond_4

    .line 2277
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    move v0, v7

    .line 2280
    goto :goto_0

    .line 2276
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_5

    .line 2277
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
.end method

.method private getSyncTypeFromEventId(Landroid/database/sqlite/SQLiteDatabase;J)J
    .locals 11
    .parameter "db"
    .parameter "id"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 2766
    const-wide/16 v9, -0x2

    .line 2767
    .local v9, sync_type:J
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v6

    const-string v0, "sync_type"

    aput-object v0, v2, v4

    .line 2772
    .local v2, projection:[Ljava/lang/String;
    const-string v1, "view_events"

    const-string v3, "_id=?"

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v6

    move-object v0, p1

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 2774
    .local v8, c:Landroid/database/Cursor;
    if-eqz v8, :cond_1

    .line 2776
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2777
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v9

    .line 2780
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 2784
    :cond_1
    return-wide v9

    .line 2780
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private handleChipInstanceQuery(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteQueryBuilder;JJ[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/database/Cursor;
    .locals 10
    .parameter "db"
    .parameter "qb"
    .parameter "rangeBegin"
    .parameter "rangeEnd"
    .parameter "projectionIn"
    .parameter "selection"
    .parameter "sort"
    .parameter "instancesTimezone"
    .parameter "isHomeTimezone"

    .prologue
    .line 1077
    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p3

    move-wide v4, p5

    move-object/from16 v8, p10

    move/from16 v9, p11

    invoke-direct/range {v0 .. v9}, Lcom/android/providers/calendar/CalendarProvider2;->acquireInstanceRange(Landroid/database/sqlite/SQLiteDatabase;JJZZLjava/lang/String;Z)V

    .line 1084
    const-string v0, "Instances INNER JOIN Events ON (Instances.event_id=Events._id) INNER JOIN Calendars ON (Events.calendar_id = Calendars._id) INNER JOIN ChipCalendars ON (Calendars._id = ChipCalendars.chip_calendar_id)"

    invoke-virtual {p2, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1088
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sInstancesProjectionMap:Ljava/util/HashMap;

    invoke-virtual {p2, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1089
    const-string v0, "begin <= "

    invoke-virtual {p2, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1090
    invoke-static/range {p5 .. p6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1091
    const-string v0, " AND end >= "

    invoke-virtual {p2, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1092
    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1093
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p2

    move-object v1, p1

    move-object/from16 v2, p7

    move-object/from16 v3, p8

    move-object/from16 v7, p9

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private handleEventDayQuery(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteQueryBuilder;II[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Landroid/database/Cursor;
    .locals 17
    .parameter "db"
    .parameter "qb"
    .parameter "begin"
    .parameter "end"
    .parameter "projection"
    .parameter "selection"
    .parameter "instancesTimezone"
    .parameter "isHomeTimezone"
    .parameter "motoVisibilityFlag"

    .prologue
    .line 1051
    const-string v2, "Instances INNER JOIN Events ON (Instances.event_id=Events._id) INNER JOIN Calendars ON (Events.calendar_id = Calendars._id)"

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1053
    sget-object v2, Lcom/android/providers/calendar/CalendarProvider2;->sInstancesProjectionMap:Ljava/util/HashMap;

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1056
    new-instance v16, Landroid/text/format/Time;

    move-object/from16 v0, v16

    move-object/from16 v1, p7

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 1057
    .local v16, time:Landroid/text/format/Time;
    move-object/from16 v0, v16

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->setJulianDay(I)J

    move-result-wide v4

    .line 1060
    .local v4, beginMs:J
    add-int/lit8 v2, p4, 0x1

    move-object/from16 v0, v16

    move v1, v2

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->setJulianDay(I)J

    move-result-wide v6

    .line 1062
    .local v6, endMs:J
    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v10, p7

    move/from16 v11, p8

    invoke-direct/range {v2 .. v11}, Lcom/android/providers/calendar/CalendarProvider2;->acquireInstanceRange(Landroid/database/sqlite/SQLiteDatabase;JJZZLjava/lang/String;Z)V

    .line 1064
    const-string v2, "startDay<=? AND endDay>=?"

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1065
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " AND Calendars.moto_visibility = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p9, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1066
    const/4 v2, 0x2

    new-array v12, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static/range {p4 .. p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v12, v2

    const/4 v2, 0x1

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v12, v2

    .line 1068
    .local v12, selectionArgs:[Ljava/lang/String;
    const-string v13, "startDay"

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v8, p2

    move-object/from16 v9, p1

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    invoke-virtual/range {v8 .. v15}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    return-object v2

    .line 1065
    .end local v12           #selectionArgs:[Ljava/lang/String;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private handleInstanceQuery(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteQueryBuilder;JJ[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZZ)Landroid/database/Cursor;
    .locals 19
    .parameter "db"
    .parameter "qb"
    .parameter "rangeBegin"
    .parameter "rangeEnd"
    .parameter "projection"
    .parameter "selection"
    .parameter "sort"
    .parameter "searchByDay"
    .parameter "forceExpansion"
    .parameter "instancesTimezone"
    .parameter "isHomeTimezone"
    .parameter "motoVisibilityFlag"

    .prologue
    .line 1017
    const-string v2, "Instances INNER JOIN Events ON (Instances.event_id=Events._id) INNER JOIN Calendars ON (Events.calendar_id = Calendars._id)"

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1019
    sget-object v2, Lcom/android/providers/calendar/CalendarProvider2;->sInstancesProjectionMap:Ljava/util/HashMap;

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1020
    if-eqz p10, :cond_0

    .line 1023
    new-instance v18, Landroid/text/format/Time;

    move-object/from16 v0, v18

    move-object/from16 v1, p12

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 1024
    .local v18, time:Landroid/text/format/Time;
    move-wide/from16 v0, p3

    long-to-int v0, v0

    move v2, v0

    move-object/from16 v0, v18

    move v1, v2

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->setJulianDay(I)J

    move-result-wide v4

    .line 1027
    .local v4, beginMs:J
    move-wide/from16 v0, p5

    long-to-int v0, v0

    move v2, v0

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, v18

    move v1, v2

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->setJulianDay(I)J

    move-result-wide v6

    .line 1029
    .local v6, endMs:J
    const/4 v8, 0x1

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v9, p11

    move-object/from16 v10, p12

    move/from16 v11, p13

    invoke-direct/range {v2 .. v11}, Lcom/android/providers/calendar/CalendarProvider2;->acquireInstanceRange(Landroid/database/sqlite/SQLiteDatabase;JJZZLjava/lang/String;Z)V

    .line 1032
    const-string v2, "startDay<=? AND endDay>=?"

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1040
    .end local v4           #beginMs:J
    .end local v6           #endMs:J
    .end local v18           #time:Landroid/text/format/Time;
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " AND Calendars.moto_visibility = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p14, :cond_1

    const/4 v3, 0x1

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1041
    const/4 v2, 0x2

    new-array v12, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static/range {p5 .. p6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v12, v2

    const/4 v2, 0x1

    invoke-static/range {p3 .. p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v12, v2

    .line 1043
    .local v12, selectionArgs:[Ljava/lang/String;
    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v8, p2

    move-object/from16 v9, p1

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v15, p9

    invoke-virtual/range {v8 .. v15}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    return-object v2

    .line 1035
    .end local v12           #selectionArgs:[Ljava/lang/String;
    :cond_0
    const/4 v14, 0x1

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-wide/from16 v10, p3

    move-wide/from16 v12, p5

    move/from16 v15, p11

    move-object/from16 v16, p12

    move/from16 v17, p13

    invoke-direct/range {v8 .. v17}, Lcom/android/providers/calendar/CalendarProvider2;->acquireInstanceRange(Landroid/database/sqlite/SQLiteDatabase;JJZZLjava/lang/String;Z)V

    .line 1038
    const-string v2, "begin<=? AND end>=?"

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1040
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private init(Landroid/content/Context;Lcom/android/providers/calendar/CalendarDatabaseHelper;)V
    .locals 4
    .parameter "context"
    .parameter "dbHelper"

    .prologue
    const-string v2, "CalendarProvider2"

    .line 415
    const-string v1, "CalendarProvider2"

    const/4 v1, 0x2

    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 416
    const-string v1, "CalendarProvider2"

    const-string v1, "content provider is being initialized"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    :cond_0
    new-instance v1, Lcom/android/providers/calendar/MetaData;

    invoke-direct {v1, p2}, Lcom/android/providers/calendar/MetaData;-><init>(Landroid/database/sqlite/SQLiteOpenHelper;)V

    iput-object v1, p0, Lcom/android/providers/calendar/CalendarProvider2;->mMetaData:Lcom/android/providers/calendar/MetaData;

    .line 420
    new-instance v1, Lcom/android/providers/calendar/CalendarCache;

    invoke-direct {v1, p2}, Lcom/android/providers/calendar/CalendarCache;-><init>(Landroid/database/sqlite/SQLiteOpenHelper;)V

    iput-object v1, p0, Lcom/android/providers/calendar/CalendarProvider2;->mCalendarCache:Lcom/android/providers/calendar/CalendarCache;

    .line 422
    invoke-virtual {p0}, Lcom/android/providers/calendar/CalendarProvider2;->updateTimezoneDependentFields()V

    .line 424
    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, p0, v2, v3}, Landroid/accounts/AccountManager;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z)V

    .line 427
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 428
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 429
    const-string v1, "android.intent.action.DEVICE_STORAGE_OK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 430
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 436
    iget-object v1, p0, Lcom/android/providers/calendar/CalendarProvider2;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 437
    return-void
.end method

.method private insertSelectionArg([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 5
    .parameter "selectionArgs"
    .parameter "arg"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 4288
    if-nez p1, :cond_0

    .line 4289
    new-array v2, v4, [Ljava/lang/String;

    aput-object p2, v2, v3

    .line 4295
    :goto_0
    return-object v2

    .line 4291
    :cond_0
    array-length v2, p1

    add-int/lit8 v0, v2, 0x1

    .line 4292
    .local v0, newLength:I
    new-array v1, v0, [Ljava/lang/String;

    .line 4293
    .local v1, newSelectionArgs:[Ljava/lang/String;
    aput-object p2, v1, v3

    .line 4294
    array-length v2, p1

    invoke-static {p1, v3, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v2, v1

    .line 4295
    goto :goto_0
.end method

.method private isHomeTimezone()Z
    .locals 2

    .prologue
    .line 686
    iget-object v1, p0, Lcom/android/providers/calendar/CalendarProvider2;->mCalendarCache:Lcom/android/providers/calendar/CalendarCache;

    invoke-virtual {v1}, Lcom/android/providers/calendar/CalendarCache;->readTimezoneType()Ljava/lang/String;

    move-result-object v0

    .line 687
    .local v0, type:Ljava/lang/String;
    const-string v1, "home"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private isLocalSameAsInstancesTimezone()Z
    .locals 2

    .prologue
    .line 550
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    .line 551
    .local v0, localTimezone:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/providers/calendar/CalendarProvider2;->mCalendarCache:Lcom/android/providers/calendar/CalendarCache;

    invoke-virtual {v1}, Lcom/android/providers/calendar/CalendarCache;->readTimezoneInstances()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    return v1
.end method

.method public static isRecurrenceEvent(Landroid/content/ContentValues;)Z
    .locals 1
    .parameter "values"

    .prologue
    .line 1773
    const-string v0, "rrule"

    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "rdate"

    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "originalEvent"

    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private modifyCalendarSubscription(JZ)V
    .locals 18
    .parameter "id"
    .parameter "syncEvents"

    .prologue
    .line 3558
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/CalendarProvider2;->mContext:Landroid/content/Context;

    move-object v3, v0

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-virtual {v0, v1}, Lcom/android/providers/calendar/CalendarProvider2;->getDatabaseHelper(Landroid/content/Context;)Lcom/android/providers/calendar/CalendarDatabaseHelper;

    move-result-object v15

    .line 3559
    .local v15, dbHelper:Lcom/android/providers/calendar/CalendarDatabaseHelper;
    if-nez v15, :cond_1

    .line 3618
    :cond_0
    :goto_0
    return-void

    .line 3563
    :cond_1
    sget-object v3, Landroid/provider/Calendar$Calendars;->CONTENT_URI:Landroid/net/Uri;

    move-object v0, v3

    move-wide/from16 v1, p1

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    const/4 v3, 0x5

    new-array v5, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v6, "_sync_account"

    aput-object v6, v5, v3

    const/4 v3, 0x1

    const-string v6, "_sync_account_type"

    aput-object v6, v5, v3

    const/4 v3, 0x2

    const-string v6, "url"

    aput-object v6, v5, v3

    const/4 v3, 0x3

    const-string v6, "sync_events"

    aput-object v6, v5, v3

    const/4 v3, 0x4

    const-string v6, "sync_type"

    aput-object v6, v5, v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/android/providers/calendar/CalendarProvider2;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 3570
    .local v14, cursor:Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 3571
    .local v9, account:Landroid/accounts/Account;
    const/4 v13, 0x0

    .line 3572
    .local v13, calendarUrl:Ljava/lang/String;
    const/16 v16, 0x0

    .line 3573
    .local v16, oldSyncEvents:Z
    const/16 v17, 0x0

    .line 3574
    .local v17, syncType:I
    if-eqz v14, :cond_3

    .line 3576
    :try_start_0
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3577
    const/4 v3, 0x0

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 3578
    .local v11, accountName:Ljava/lang/String;
    const/4 v3, 0x1

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 3579
    .local v12, accountType:Ljava/lang/String;
    new-instance v10, Landroid/accounts/Account;

    invoke-direct {v10, v11, v12}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3580
    .end local v9           #account:Landroid/accounts/Account;
    .local v10, account:Landroid/accounts/Account;
    const/4 v3, 0x2

    :try_start_1
    invoke-interface {v14, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 3581
    const/4 v3, 0x3

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x1

    move/from16 v16, v3

    .line 3582
    :goto_1
    const/4 v3, 0x4

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v17

    move-object v9, v10

    .line 3585
    .end local v10           #account:Landroid/accounts/Account;
    .end local v11           #accountName:Ljava/lang/String;
    .end local v12           #accountType:Ljava/lang/String;
    .restart local v9       #account:Landroid/accounts/Account;
    :cond_2
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 3590
    :cond_3
    const/4 v3, 0x1

    move/from16 v0, v17

    move v1, v3

    if-eq v0, v1, :cond_5

    if-nez v9, :cond_5

    .line 3592
    const-string v3, "CalendarProvider2"

    const/4 v4, 0x5

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3593
    const-string v3, "CalendarProvider2"

    const-string v4, "Cannot update subscription because account is empty -- should not happen."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3581
    .end local v9           #account:Landroid/accounts/Account;
    .restart local v10       #account:Landroid/accounts/Account;
    .restart local v11       #accountName:Ljava/lang/String;
    .restart local v12       #accountType:Ljava/lang/String;
    :cond_4
    const/4 v3, 0x0

    move/from16 v16, v3

    goto :goto_1

    .line 3585
    .end local v10           #account:Landroid/accounts/Account;
    .end local v11           #accountName:Ljava/lang/String;
    .end local v12           #accountType:Ljava/lang/String;
    .restart local v9       #account:Landroid/accounts/Account;
    :catchall_0
    move-exception v3

    :goto_2
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    throw v3

    .line 3599
    :cond_5
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 3602
    const/4 v13, 0x0

    .line 3605
    :cond_6
    move/from16 v0, v16

    move/from16 v1, p3

    if-eq v0, v1, :cond_0

    .line 3615
    const/4 v3, 0x1

    move/from16 v0, v17

    move v1, v3

    if-eq v0, v1, :cond_0

    .line 3616
    if-nez p3, :cond_7

    const/4 v3, 0x1

    :goto_3
    invoke-virtual {v15, v9, v3, v13}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->scheduleSync(Landroid/accounts/Account;ZLjava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    const/4 v3, 0x0

    goto :goto_3

    .line 3585
    .end local v9           #account:Landroid/accounts/Account;
    .restart local v10       #account:Landroid/accounts/Account;
    .restart local v11       #accountName:Ljava/lang/String;
    .restart local v12       #accountType:Ljava/lang/String;
    :catchall_1
    move-exception v3

    move-object v9, v10

    .end local v10           #account:Landroid/accounts/Account;
    .restart local v9       #account:Landroid/accounts/Account;
    goto :goto_2
.end method

.method private performInstanceExpansion(JJLjava/lang/String;Landroid/database/Cursor;)V
    .locals 79
    .parameter "begin"
    .parameter "end"
    .parameter "localTimezone"
    .parameter "entries"

    .prologue
    .line 1344
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/CalendarProvider2;->mContext:Landroid/content/Context;

    move-object v8, v0

    move-object/from16 v0, p0

    move-object v1, v8

    invoke-virtual {v0, v1}, Lcom/android/providers/calendar/CalendarProvider2;->getDatabaseHelper(Landroid/content/Context;)Lcom/android/providers/calendar/CalendarDatabaseHelper;

    move-result-object v32

    .line 1345
    .local v32, dbHelper:Lcom/android/providers/calendar/CalendarDatabaseHelper;
    if-nez v32, :cond_1

    .line 1697
    :cond_0
    return-void

    .line 1347
    :cond_1
    new-instance v5, Lcom/android/providers/calendar/RecurrenceProcessor;

    invoke-direct {v5}, Lcom/android/providers/calendar/RecurrenceProcessor;-><init>()V

    .line 1350
    .local v5, rp:Lcom/android/providers/calendar/RecurrenceProcessor;
    const-string v22, "ORIGINAL_EVENT_AND_CALENDAR"

    .line 1352
    .local v22, ORIGINAL_EVENT_AND_CALENDAR:Ljava/lang/String;
    const-string v8, "eventStatus"

    move-object/from16 v0, p6

    move-object v1, v8

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v74

    .line 1353
    .local v74, statusColumn:I
    const-string v8, "dtstart"

    move-object/from16 v0, p6

    move-object v1, v8

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v36

    .line 1354
    .local v36, dtstartColumn:I
    const-string v8, "dtend"

    move-object/from16 v0, p6

    move-object v1, v8

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v35

    .line 1355
    .local v35, dtendColumn:I
    const-string v8, "eventTimezone"

    move-object/from16 v0, p6

    move-object v1, v8

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v47

    .line 1356
    .local v47, eventTimezoneColumn:I
    const-string v8, "duration"

    move-object/from16 v0, p6

    move-object v1, v8

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v38

    .line 1357
    .local v38, durationColumn:I
    const-string v8, "rrule"

    move-object/from16 v0, p6

    move-object v1, v8

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v71

    .line 1358
    .local v71, rruleColumn:I
    const-string v8, "rdate"

    move-object/from16 v0, p6

    move-object v1, v8

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v69

    .line 1359
    .local v69, rdateColumn:I
    const-string v8, "exrule"

    move-object/from16 v0, p6

    move-object v1, v8

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v50

    .line 1360
    .local v50, exruleColumn:I
    const-string v8, "exdate"

    move-object/from16 v0, p6

    move-object v1, v8

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v48

    .line 1361
    .local v48, exdateColumn:I
    const-string v8, "allDay"

    move-object/from16 v0, p6

    move-object v1, v8

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v24

    .line 1362
    .local v24, allDayColumn:I
    const-string v8, "_id"

    move-object/from16 v0, p6

    move-object v1, v8

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v54

    .line 1363
    .local v54, idColumn:I
    const-string v8, "_sync_id"

    move-object/from16 v0, p6

    move-object v1, v8

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v76

    .line 1364
    .local v76, syncIdColumn:I
    const-string v8, "originalEvent"

    move-object/from16 v0, p6

    move-object v1, v8

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v60

    .line 1365
    .local v60, originalEventColumn:I
    const-string v8, "originalInstanceTime"

    move-object/from16 v0, p6

    move-object v1, v8

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v62

    .line 1366
    .local v62, originalInstanceTimeColumn:I
    const-string v8, "calendar_id"

    move-object/from16 v0, p6

    move-object v1, v8

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v30

    .line 1367
    .local v30, calendarIdColumn:I
    const-string v8, "deleted"

    move-object/from16 v0, p6

    move-object v1, v8

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v34

    .line 1370
    .local v34, deletedColumn:I
    new-instance v55, Lcom/android/providers/calendar/CalendarProvider2$EventInstancesMap;

    invoke-direct/range {v55 .. v55}, Lcom/android/providers/calendar/CalendarProvider2$EventInstancesMap;-><init>()V

    .line 1372
    .local v55, instancesMap:Lcom/android/providers/calendar/CalendarProvider2$EventInstancesMap;
    new-instance v37, Lcom/android/providers/calendar/Duration;

    invoke-direct/range {v37 .. v37}, Lcom/android/providers/calendar/Duration;-><init>()V

    .line 1373
    .local v37, duration:Lcom/android/providers/calendar/Duration;
    new-instance v6, Landroid/text/format/Time;

    invoke-direct {v6}, Landroid/text/format/Time;-><init>()V

    .line 1388
    .local v6, eventTime:Landroid/text/format/Time;
    :cond_2
    :goto_0
    invoke-interface/range {p6 .. p6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_19

    .line 1390
    const/4 v14, 0x0

    .line 1392
    .local v14, initialValues:Landroid/content/ContentValues;
    :try_start_0
    move-object/from16 v0, p6

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    if-eqz v8, :cond_7

    const/4 v8, 0x1

    move/from16 v23, v8

    .line 1394
    .local v23, allDay:Z
    :goto_1
    move-object/from16 v0, p6

    move/from16 v1, v47

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v46

    .line 1395
    .local v46, eventTimezone:Ljava/lang/String;
    if-nez v23, :cond_3

    invoke-static/range {v46 .. v46}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1399
    :cond_3
    const-string v46, "UTC"

    .line 1402
    :cond_4
    move-object/from16 v0, p6

    move/from16 v1, v36

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 1403
    .local v16, dtstartMillis:J
    move-object/from16 v0, p6

    move/from16 v1, v54

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v45

    .line 1405
    .local v45, eventId:Ljava/lang/Long;
    move-object/from16 v0, p6

    move/from16 v1, v38

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Lcom/android/providers/calendar/DateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/util/TimeFormatException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v41

    .line 1406
    .local v41, durationStr:Ljava/lang/String;
    if-eqz v41, :cond_5

    .line 1408
    :try_start_1
    move-object/from16 v0, v37

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/android/providers/calendar/Duration;->parse(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/android/providers/calendar/DateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/util/TimeFormatException; {:try_start_1 .. :try_end_1} :catch_3

    .line 1425
    :cond_5
    :goto_2
    :try_start_2
    move-object/from16 v0, p6

    move/from16 v1, v76

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v75

    .line 1426
    .local v75, syncId:Ljava/lang/String;
    move-object/from16 v0, p6

    move/from16 v1, v60

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v59

    .line 1428
    .local v59, originalEvent:Ljava/lang/String;
    const-wide/16 v63, -0x1

    .line 1429
    .local v63, originalInstanceTimeMillis:J
    move-object/from16 v0, p6

    move/from16 v1, v62

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v8

    if-nez v8, :cond_6

    .line 1430
    move-object/from16 v0, p6

    move/from16 v1, v62

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v63

    .line 1432
    :cond_6
    move-object/from16 v0, p6

    move/from16 v1, v74

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v73

    .line 1433
    .local v73, status:I
    move-object/from16 v0, p6

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    if-eqz v8, :cond_9

    const/4 v8, 0x1

    move/from16 v33, v8

    .line 1435
    .local v33, deleted:Z
    :goto_3
    move-object/from16 v0, p6

    move/from16 v1, v71

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v72

    .line 1436
    .local v72, rruleStr:Ljava/lang/String;
    move-object/from16 v0, p6

    move/from16 v1, v69

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v70

    .line 1437
    .local v70, rdateStr:Ljava/lang/String;
    move-object/from16 v0, p6

    move/from16 v1, v50

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v51

    .line 1438
    .local v51, exruleStr:Ljava/lang/String;
    move-object/from16 v0, p6

    move/from16 v1, v48

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v49

    .line 1439
    .local v49, exdateStr:Ljava/lang/String;
    move-object/from16 v0, p6

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v28

    .line 1440
    .local v28, calendarId:J
    move-object/from16 v0, p0

    move-object/from16 v1, v75

    move-wide/from16 v2, v28

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/calendar/CalendarProvider2;->getSyncIdKey(Ljava/lang/String;J)Ljava/lang/String;
    :try_end_2
    .catch Lcom/android/providers/calendar/DateException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/util/TimeFormatException; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v77

    .line 1442
    .local v77, syncIdKey:Ljava/lang/String;
    const/4 v7, 0x0

    .line 1444
    .local v7, recur:Landroid/pim/RecurrenceSet;
    :try_start_3
    new-instance v7, Landroid/pim/RecurrenceSet;

    .end local v7           #recur:Landroid/pim/RecurrenceSet;
    move-object v0, v7

    move-object/from16 v1, v72

    move-object/from16 v2, v70

    move-object/from16 v3, v51

    move-object/from16 v4, v49

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/pim/RecurrenceSet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/pim/EventRecurrence$InvalidFormatException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lcom/android/providers/calendar/DateException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/util/TimeFormatException; {:try_start_3 .. :try_end_3} :catch_3

    .line 1452
    .restart local v7       #recur:Landroid/pim/RecurrenceSet;
    if-eqz v7, :cond_11

    :try_start_4
    invoke-virtual {v7}, Landroid/pim/RecurrenceSet;->hasRecurrence()Z

    move-result v8

    if-eqz v8, :cond_11

    .line 1455
    const/4 v8, 0x2

    move/from16 v0, v73

    move v1, v8

    if-ne v0, v1, :cond_a

    .line 1457
    const-string v8, "CalendarProvider2"

    const/4 v9, 0x6

    invoke-static {v8, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1458
    const-string v8, "CalendarProvider2"

    const-string v9, "Found canceled recurring event in Events table.  Ignoring."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Lcom/android/providers/calendar/DateException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Landroid/util/TimeFormatException; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_0

    .line 1589
    .end local v7           #recur:Landroid/pim/RecurrenceSet;
    .end local v16           #dtstartMillis:J
    .end local v23           #allDay:Z
    .end local v28           #calendarId:J
    .end local v33           #deleted:Z
    .end local v41           #durationStr:Ljava/lang/String;
    .end local v45           #eventId:Ljava/lang/Long;
    .end local v46           #eventTimezone:Ljava/lang/String;
    .end local v49           #exdateStr:Ljava/lang/String;
    .end local v51           #exruleStr:Ljava/lang/String;
    .end local v59           #originalEvent:Ljava/lang/String;
    .end local v63           #originalInstanceTimeMillis:J
    .end local v70           #rdateStr:Ljava/lang/String;
    .end local v72           #rruleStr:Ljava/lang/String;
    .end local v73           #status:I
    .end local v75           #syncId:Ljava/lang/String;
    .end local v77           #syncIdKey:Ljava/lang/String;
    :catch_0
    move-exception v8

    move-object/from16 v42, v8

    .line 1590
    .local v42, e:Lcom/android/providers/calendar/DateException;
    :goto_4
    const-string v8, "CalendarProvider2"

    const/4 v9, 0x5

    invoke-static {v8, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1591
    const-string v8, "CalendarProvider2"

    const-string v9, "RecurrenceProcessor error "

    move-object v0, v8

    move-object v1, v9

    move-object/from16 v2, v42

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 1392
    .end local v42           #e:Lcom/android/providers/calendar/DateException;
    :cond_7
    const/4 v8, 0x0

    move/from16 v23, v8

    goto/16 :goto_1

    .line 1410
    .restart local v16       #dtstartMillis:J
    .restart local v23       #allDay:Z
    .restart local v41       #durationStr:Ljava/lang/String;
    .restart local v45       #eventId:Ljava/lang/Long;
    .restart local v46       #eventTimezone:Ljava/lang/String;
    :catch_1
    move-exception v42

    .line 1411
    .restart local v42       #e:Lcom/android/providers/calendar/DateException;
    :try_start_5
    const-string v8, "CalendarProvider2"

    const/4 v9, 0x5

    invoke-static {v8, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 1412
    const-string v8, "CalendarProvider2"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "error parsing duration for event "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v0, v9

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v0, v9

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v0, v8

    move-object v1, v9

    move-object/from16 v2, v42

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1415
    :cond_8
    const/4 v8, 0x1

    move v0, v8

    move-object/from16 v1, v37

    iput v0, v1, Lcom/android/providers/calendar/Duration;->sign:I

    .line 1416
    const/4 v8, 0x0

    move v0, v8

    move-object/from16 v1, v37

    iput v0, v1, Lcom/android/providers/calendar/Duration;->weeks:I

    .line 1417
    const/4 v8, 0x0

    move v0, v8

    move-object/from16 v1, v37

    iput v0, v1, Lcom/android/providers/calendar/Duration;->days:I

    .line 1418
    const/4 v8, 0x0

    move v0, v8

    move-object/from16 v1, v37

    iput v0, v1, Lcom/android/providers/calendar/Duration;->hours:I

    .line 1419
    const/4 v8, 0x0

    move v0, v8

    move-object/from16 v1, v37

    iput v0, v1, Lcom/android/providers/calendar/Duration;->minutes:I

    .line 1420
    const/4 v8, 0x0

    move v0, v8

    move-object/from16 v1, v37

    iput v0, v1, Lcom/android/providers/calendar/Duration;->seconds:I

    .line 1421
    const-string v41, "+P0S"

    goto/16 :goto_2

    .line 1433
    .end local v42           #e:Lcom/android/providers/calendar/DateException;
    .restart local v59       #originalEvent:Ljava/lang/String;
    .restart local v63       #originalInstanceTimeMillis:J
    .restart local v73       #status:I
    .restart local v75       #syncId:Ljava/lang/String;
    :cond_9
    const/4 v8, 0x0

    move/from16 v33, v8

    goto/16 :goto_3

    .line 1445
    .restart local v28       #calendarId:J
    .restart local v33       #deleted:Z
    .restart local v49       #exdateStr:Ljava/lang/String;
    .restart local v51       #exruleStr:Ljava/lang/String;
    .restart local v70       #rdateStr:Ljava/lang/String;
    .restart local v72       #rruleStr:Ljava/lang/String;
    .restart local v77       #syncIdKey:Ljava/lang/String;
    :catch_2
    move-exception v8

    move-object/from16 v42, v8

    .line 1446
    .local v42, e:Landroid/pim/EventRecurrence$InvalidFormatException;
    const-string v8, "CalendarProvider2"

    const/4 v9, 0x5

    invoke-static {v8, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1447
    const-string v8, "CalendarProvider2"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Could not parse RRULE recurrence string: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v0, v9

    move-object/from16 v1, v72

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v0, v8

    move-object v1, v9

    move-object/from16 v2, v42

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catch Lcom/android/providers/calendar/DateException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Landroid/util/TimeFormatException; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_0

    .line 1593
    .end local v16           #dtstartMillis:J
    .end local v23           #allDay:Z
    .end local v28           #calendarId:J
    .end local v33           #deleted:Z
    .end local v41           #durationStr:Ljava/lang/String;
    .end local v42           #e:Landroid/pim/EventRecurrence$InvalidFormatException;
    .end local v45           #eventId:Ljava/lang/Long;
    .end local v46           #eventTimezone:Ljava/lang/String;
    .end local v49           #exdateStr:Ljava/lang/String;
    .end local v51           #exruleStr:Ljava/lang/String;
    .end local v59           #originalEvent:Ljava/lang/String;
    .end local v63           #originalInstanceTimeMillis:J
    .end local v70           #rdateStr:Ljava/lang/String;
    .end local v72           #rruleStr:Ljava/lang/String;
    .end local v73           #status:I
    .end local v75           #syncId:Ljava/lang/String;
    .end local v77           #syncIdKey:Ljava/lang/String;
    :catch_3
    move-exception v8

    move-object/from16 v42, v8

    .line 1594
    .local v42, e:Landroid/util/TimeFormatException;
    :goto_5
    const-string v8, "CalendarProvider2"

    const/4 v9, 0x5

    invoke-static {v8, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1595
    const-string v8, "CalendarProvider2"

    const-string v9, "RecurrenceProcessor error "

    move-object v0, v8

    move-object v1, v9

    move-object/from16 v2, v42

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 1465
    .end local v42           #e:Landroid/util/TimeFormatException;
    .restart local v7       #recur:Landroid/pim/RecurrenceSet;
    .restart local v16       #dtstartMillis:J
    .restart local v23       #allDay:Z
    .restart local v28       #calendarId:J
    .restart local v33       #deleted:Z
    .restart local v41       #durationStr:Ljava/lang/String;
    .restart local v45       #eventId:Ljava/lang/Long;
    .restart local v46       #eventTimezone:Ljava/lang/String;
    .restart local v49       #exdateStr:Ljava/lang/String;
    .restart local v51       #exruleStr:Ljava/lang/String;
    .restart local v59       #originalEvent:Ljava/lang/String;
    .restart local v63       #originalInstanceTimeMillis:J
    .restart local v70       #rdateStr:Ljava/lang/String;
    .restart local v72       #rruleStr:Ljava/lang/String;
    .restart local v73       #status:I
    .restart local v75       #syncId:Ljava/lang/String;
    .restart local v77       #syncIdKey:Ljava/lang/String;
    :cond_a
    :try_start_6
    move-object/from16 v0, v46

    move-object v1, v6

    iput-object v0, v1, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 1466
    move-object v0, v6

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 1467
    move/from16 v0, v23

    move-object v1, v6

    iput-boolean v0, v1, Landroid/text/format/Time;->allDay:Z

    .line 1469
    if-nez v41, :cond_c

    .line 1471
    const-string v8, "CalendarProvider2"

    const/4 v9, 0x6

    invoke-static {v8, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 1472
    const-string v8, "CalendarProvider2"

    const-string v9, "Repeating event has no duration -- should not happen."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1475
    :cond_b
    if-eqz v23, :cond_d

    .line 1477
    const/4 v8, 0x1

    move v0, v8

    move-object/from16 v1, v37

    iput v0, v1, Lcom/android/providers/calendar/Duration;->sign:I

    .line 1478
    const/4 v8, 0x0

    move v0, v8

    move-object/from16 v1, v37

    iput v0, v1, Lcom/android/providers/calendar/Duration;->weeks:I

    .line 1479
    const/4 v8, 0x1

    move v0, v8

    move-object/from16 v1, v37

    iput v0, v1, Lcom/android/providers/calendar/Duration;->days:I

    .line 1480
    const/4 v8, 0x0

    move v0, v8

    move-object/from16 v1, v37

    iput v0, v1, Lcom/android/providers/calendar/Duration;->hours:I

    .line 1481
    const/4 v8, 0x0

    move v0, v8

    move-object/from16 v1, v37

    iput v0, v1, Lcom/android/providers/calendar/Duration;->minutes:I

    .line 1482
    const/4 v8, 0x0

    move v0, v8

    move-object/from16 v1, v37

    iput v0, v1, Lcom/android/providers/calendar/Duration;->seconds:I

    .line 1483
    const-string v41, "+P1D"

    :cond_c
    :goto_6
    move-wide/from16 v8, p1

    move-wide/from16 v10, p3

    .line 1504
    invoke-virtual/range {v5 .. v11}, Lcom/android/providers/calendar/RecurrenceProcessor;->expand(Landroid/text/format/Time;Landroid/pim/RecurrenceSet;JJ)[J

    move-result-object v31

    .line 1508
    .local v31, dates:[J
    if-eqz v23, :cond_f

    .line 1509
    const-string v8, "UTC"

    iput-object v8, v6, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 1514
    :goto_7
    invoke-virtual/range {v37 .. v37}, Lcom/android/providers/calendar/Duration;->getMillis()J

    move-result-wide v39

    .line 1515
    .local v39, durationMillis:J
    move-object/from16 v25, v31

    .local v25, arr$:[J
    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v56, v0
    :try_end_6
    .catch Lcom/android/providers/calendar/DateException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Landroid/util/TimeFormatException; {:try_start_6 .. :try_end_6} :catch_3

    .local v56, len$:I
    const/16 v52, 0x0

    .local v52, i$:I
    move-object/from16 v21, v14

    .end local v14           #initialValues:Landroid/content/ContentValues;
    .local v21, initialValues:Landroid/content/ContentValues;
    :goto_8
    move/from16 v0, v52

    move/from16 v1, v56

    if-ge v0, v1, :cond_10

    :try_start_7
    aget-wide v9, v25, v52

    .line 1516
    .local v9, date:J
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V
    :try_end_7
    .catch Lcom/android/providers/calendar/DateException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Landroid/util/TimeFormatException; {:try_start_7 .. :try_end_7} :catch_5

    .line 1517
    .end local v21           #initialValues:Landroid/content/ContentValues;
    .restart local v14       #initialValues:Landroid/content/ContentValues;
    :try_start_8
    const-string v8, "event_id"

    move-object v0, v14

    move-object v1, v8

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1519
    const-string v8, "begin"

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v14, v8, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1520
    add-long v11, v9, v39

    .line 1521
    .local v11, dtendMillis:J
    const-string v8, "end"

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v14, v8, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    move-object/from16 v8, p0

    move-object v13, v6

    .line 1523
    invoke-direct/range {v8 .. v14}, Lcom/android/providers/calendar/CalendarProvider2;->computeTimezoneDependentFields(JJLandroid/text/format/Time;Landroid/content/ContentValues;)V

    .line 1525
    move-object/from16 v0, v55

    move-object/from16 v1, v77

    move-object v2, v14

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/calendar/CalendarProvider2$EventInstancesMap;->add(Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 1515
    add-int/lit8 v52, v52, 0x1

    move-object/from16 v21, v14

    .end local v14           #initialValues:Landroid/content/ContentValues;
    .restart local v21       #initialValues:Landroid/content/ContentValues;
    goto :goto_8

    .line 1487
    .end local v9           #date:J
    .end local v11           #dtendMillis:J
    .end local v21           #initialValues:Landroid/content/ContentValues;
    .end local v25           #arr$:[J
    .end local v31           #dates:[J
    .end local v39           #durationMillis:J
    .end local v52           #i$:I
    .end local v56           #len$:I
    .restart local v14       #initialValues:Landroid/content/ContentValues;
    :cond_d
    const/4 v8, 0x1

    move v0, v8

    move-object/from16 v1, v37

    iput v0, v1, Lcom/android/providers/calendar/Duration;->sign:I

    .line 1488
    const/4 v8, 0x0

    move v0, v8

    move-object/from16 v1, v37

    iput v0, v1, Lcom/android/providers/calendar/Duration;->weeks:I

    .line 1489
    const/4 v8, 0x0

    move v0, v8

    move-object/from16 v1, v37

    iput v0, v1, Lcom/android/providers/calendar/Duration;->days:I

    .line 1490
    const/4 v8, 0x0

    move v0, v8

    move-object/from16 v1, v37

    iput v0, v1, Lcom/android/providers/calendar/Duration;->hours:I

    .line 1491
    const/4 v8, 0x0

    move v0, v8

    move-object/from16 v1, v37

    iput v0, v1, Lcom/android/providers/calendar/Duration;->minutes:I

    .line 1492
    move-object/from16 v0, p6

    move/from16 v1, v35

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v8

    if-nez v8, :cond_e

    .line 1493
    move-object/from16 v0, p6

    move/from16 v1, v35

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 1494
    .restart local v11       #dtendMillis:J
    sub-long v18, v11, v16

    const-wide/16 v20, 0x3e8

    div-long v18, v18, v20

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move v8, v0

    move v0, v8

    move-object/from16 v1, v37

    iput v0, v1, Lcom/android/providers/calendar/Duration;->seconds:I

    .line 1495
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "+P"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v37

    iget v0, v0, Lcom/android/providers/calendar/Duration;->seconds:I

    move v9, v0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "S"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    .line 1496
    goto/16 :goto_6

    .line 1497
    .end local v11           #dtendMillis:J
    :cond_e
    const/4 v8, 0x0

    move v0, v8

    move-object/from16 v1, v37

    iput v0, v1, Lcom/android/providers/calendar/Duration;->seconds:I

    .line 1498
    const-string v41, "+P0S"

    goto/16 :goto_6

    .line 1511
    .restart local v31       #dates:[J
    :cond_f
    move-object/from16 v0, p5

    move-object v1, v6

    iput-object v0, v1, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    goto/16 :goto_7

    .end local v14           #initialValues:Landroid/content/ContentValues;
    .restart local v21       #initialValues:Landroid/content/ContentValues;
    .restart local v25       #arr$:[J
    .restart local v39       #durationMillis:J
    .restart local v52       #i$:I
    .restart local v56       #len$:I
    :cond_10
    move-object/from16 v14, v21

    .line 1527
    .end local v21           #initialValues:Landroid/content/ContentValues;
    .restart local v14       #initialValues:Landroid/content/ContentValues;
    goto/16 :goto_0

    .line 1529
    .end local v25           #arr$:[J
    .end local v31           #dates:[J
    .end local v39           #durationMillis:J
    .end local v52           #i$:I
    .end local v56           #len$:I
    :cond_11
    new-instance v21, Landroid/content/ContentValues;

    invoke-direct/range {v21 .. v21}, Landroid/content/ContentValues;-><init>()V
    :try_end_8
    .catch Lcom/android/providers/calendar/DateException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Landroid/util/TimeFormatException; {:try_start_8 .. :try_end_8} :catch_3

    .line 1535
    .end local v14           #initialValues:Landroid/content/ContentValues;
    .restart local v21       #initialValues:Landroid/content/ContentValues;
    if-eqz v59, :cond_12

    const-wide/16 v18, -0x1

    cmp-long v8, v63, v18

    if-eqz v8, :cond_12

    .line 1539
    :try_start_9
    const-string v8, "ORIGINAL_EVENT_AND_CALENDAR"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    move-wide/from16 v2, v28

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/calendar/CalendarProvider2;->getSyncIdKey(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, v21

    move-object v1, v8

    move-object v2, v9

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1541
    const-string v8, "originalInstanceTime"

    invoke-static/range {v63 .. v64}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    move-object/from16 v0, v21

    move-object v1, v8

    move-object v2, v9

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1543
    const-string v8, "eventStatus"

    invoke-static/range {v73 .. v73}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    move-object/from16 v0, v21

    move-object v1, v8

    move-object v2, v9

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1546
    :cond_12
    move-wide/from16 v11, v16

    .line 1547
    .restart local v11       #dtendMillis:J
    if-nez v41, :cond_16

    .line 1548
    move-object/from16 v0, p6

    move/from16 v1, v35

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v8

    if-nez v8, :cond_13

    .line 1549
    move-object/from16 v0, p6

    move/from16 v1, v35

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 1560
    :cond_13
    :goto_9
    cmp-long v8, v11, p1

    if-ltz v8, :cond_14

    cmp-long v8, v16, p3

    if-lez v8, :cond_15

    .line 1561
    :cond_14
    if-eqz v59, :cond_17

    const-wide/16 v18, -0x1

    cmp-long v8, v63, v18

    if-eqz v8, :cond_17

    .line 1562
    const-string v8, "eventStatus"

    const/4 v9, 0x2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    move-object/from16 v0, v21

    move-object v1, v8

    move-object v2, v9

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1571
    :cond_15
    const-string v8, "event_id"

    move-object/from16 v0, v21

    move-object v1, v8

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1573
    const-string v8, "begin"

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    move-object/from16 v0, v21

    move-object v1, v8

    move-object v2, v9

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1574
    const-string v8, "end"

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    move-object/from16 v0, v21

    move-object v1, v8

    move-object v2, v9

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1577
    const-string v8, "deleted"

    invoke-static/range {v33 .. v33}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    move-object/from16 v0, v21

    move-object v1, v8

    move-object v2, v9

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1579
    if-eqz v23, :cond_18

    .line 1580
    const-string v8, "UTC"

    iput-object v8, v6, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    :goto_a
    move-object/from16 v15, p0

    move-wide/from16 v18, v11

    move-object/from16 v20, v6

    .line 1584
    invoke-direct/range {v15 .. v21}, Lcom/android/providers/calendar/CalendarProvider2;->computeTimezoneDependentFields(JJLandroid/text/format/Time;Landroid/content/ContentValues;)V

    .line 1587
    move-object/from16 v0, v55

    move-object/from16 v1, v77

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/calendar/CalendarProvider2$EventInstancesMap;->add(Ljava/lang/String;Landroid/content/ContentValues;)V

    move-object/from16 v14, v21

    .end local v21           #initialValues:Landroid/content/ContentValues;
    .restart local v14       #initialValues:Landroid/content/ContentValues;
    goto/16 :goto_0

    .line 1552
    .end local v14           #initialValues:Landroid/content/ContentValues;
    .restart local v21       #initialValues:Landroid/content/ContentValues;
    :cond_16
    move-object/from16 v0, v37

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/calendar/Duration;->addTo(J)J

    move-result-wide v11

    goto :goto_9

    .line 1564
    :cond_17
    const-string v8, "CalendarProvider2"

    const/4 v9, 0x5

    invoke-static {v8, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1565
    const-string v8, "CalendarProvider2"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unexpected event outside window: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v0, v9

    move-object/from16 v1, v75

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1589
    .end local v11           #dtendMillis:J
    :catch_4
    move-exception v8

    move-object/from16 v42, v8

    move-object/from16 v14, v21

    .end local v21           #initialValues:Landroid/content/ContentValues;
    .restart local v14       #initialValues:Landroid/content/ContentValues;
    goto/16 :goto_4

    .line 1582
    .end local v14           #initialValues:Landroid/content/ContentValues;
    .restart local v11       #dtendMillis:J
    .restart local v21       #initialValues:Landroid/content/ContentValues;
    :cond_18
    move-object/from16 v0, p5

    move-object v1, v6

    iput-object v0, v1, Landroid/text/format/Time;->timezone:Ljava/lang/String;
    :try_end_9
    .catch Lcom/android/providers/calendar/DateException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Landroid/util/TimeFormatException; {:try_start_9 .. :try_end_9} :catch_5

    goto :goto_a

    .line 1593
    .end local v11           #dtendMillis:J
    :catch_5
    move-exception v8

    move-object/from16 v42, v8

    move-object/from16 v14, v21

    .end local v21           #initialValues:Landroid/content/ContentValues;
    .restart local v14       #initialValues:Landroid/content/ContentValues;
    goto/16 :goto_5

    .line 1622
    .end local v7           #recur:Landroid/pim/RecurrenceSet;
    .end local v14           #initialValues:Landroid/content/ContentValues;
    .end local v16           #dtstartMillis:J
    .end local v23           #allDay:Z
    .end local v28           #calendarId:J
    .end local v33           #deleted:Z
    .end local v41           #durationStr:Ljava/lang/String;
    .end local v45           #eventId:Ljava/lang/Long;
    .end local v46           #eventTimezone:Ljava/lang/String;
    .end local v49           #exdateStr:Ljava/lang/String;
    .end local v51           #exruleStr:Ljava/lang/String;
    .end local v59           #originalEvent:Ljava/lang/String;
    .end local v63           #originalInstanceTimeMillis:J
    .end local v70           #rdateStr:Ljava/lang/String;
    .end local v72           #rruleStr:Ljava/lang/String;
    .end local v73           #status:I
    .end local v75           #syncId:Ljava/lang/String;
    .end local v77           #syncIdKey:Ljava/lang/String;
    :cond_19
    invoke-virtual/range {v55 .. v55}, Lcom/android/providers/calendar/CalendarProvider2$EventInstancesMap;->entrySet()Ljava/util/Set;

    move-result-object v44

    .line 1623
    .local v44, entrySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/providers/calendar/CalendarProvider2$InstancesList;>;>;"
    invoke-interface/range {v44 .. v44}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v52

    :cond_1a
    invoke-interface/range {v52 .. v52}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1d

    invoke-interface/range {v52 .. v52}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Ljava/util/Map$Entry;

    .line 1624
    .local v43, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/providers/calendar/CalendarProvider2$InstancesList;>;"
    invoke-interface/range {v43 .. v43}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v57

    check-cast v57, Lcom/android/providers/calendar/CalendarProvider2$InstancesList;

    .line 1625
    .local v57, list:Lcom/android/providers/calendar/CalendarProvider2$InstancesList;
    invoke-virtual/range {v57 .. v57}, Lcom/android/providers/calendar/CalendarProvider2$InstancesList;->iterator()Ljava/util/Iterator;

    move-result-object v53

    .local v53, i$:Ljava/util/Iterator;
    :cond_1b
    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1a

    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v78

    check-cast v78, Landroid/content/ContentValues;

    .line 1629
    .local v78, values:Landroid/content/ContentValues;
    const-string v8, "ORIGINAL_EVENT_AND_CALENDAR"

    move-object/from16 v0, v78

    move-object v1, v8

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1b

    .line 1633
    const-string v8, "ORIGINAL_EVENT_AND_CALENDAR"

    move-object/from16 v0, v78

    move-object v1, v8

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v61

    .line 1634
    .local v61, originalEventPlusCalendar:Ljava/lang/String;
    const-string v8, "originalInstanceTime"

    move-object/from16 v0, v78

    move-object v1, v8

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v66

    .line 1635
    .local v66, originalTime:J
    move-object/from16 v0, v55

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Lcom/android/providers/calendar/CalendarProvider2$EventInstancesMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v65

    check-cast v65, Lcom/android/providers/calendar/CalendarProvider2$InstancesList;

    .line 1636
    .local v65, originalList:Lcom/android/providers/calendar/CalendarProvider2$InstancesList;
    if-eqz v65, :cond_1b

    .line 1646
    invoke-virtual/range {v65 .. v65}, Lcom/android/providers/calendar/CalendarProvider2$InstancesList;->size()I

    move-result v8

    const/4 v9, 0x1

    sub-int v58, v8, v9

    .local v58, num:I
    :goto_b
    if-ltz v58, :cond_1b

    .line 1647
    move-object/from16 v0, v65

    move/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/providers/calendar/CalendarProvider2$InstancesList;->get(I)Ljava/lang/Object;

    move-result-object v68

    check-cast v68, Landroid/content/ContentValues;

    .line 1648
    .local v68, originalValues:Landroid/content/ContentValues;
    const-string v8, "begin"

    move-object/from16 v0, v68

    move-object v1, v8

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v26

    .line 1649
    .local v26, beginTime:J
    cmp-long v8, v26, v66

    if-nez v8, :cond_1c

    .line 1651
    move-object/from16 v0, v65

    move/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/providers/calendar/CalendarProvider2$InstancesList;->remove(I)Ljava/lang/Object;

    .line 1646
    :cond_1c
    add-int/lit8 v58, v58, -0x1

    goto :goto_b

    .line 1673
    .end local v26           #beginTime:J
    .end local v43           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/providers/calendar/CalendarProvider2$InstancesList;>;"
    .end local v53           #i$:Ljava/util/Iterator;
    .end local v57           #list:Lcom/android/providers/calendar/CalendarProvider2$InstancesList;
    .end local v58           #num:I
    .end local v61           #originalEventPlusCalendar:Ljava/lang/String;
    .end local v65           #originalList:Lcom/android/providers/calendar/CalendarProvider2$InstancesList;
    .end local v66           #originalTime:J
    .end local v68           #originalValues:Landroid/content/ContentValues;
    .end local v78           #values:Landroid/content/ContentValues;
    :cond_1d
    invoke-interface/range {v44 .. v44}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v52

    :cond_1e
    invoke-interface/range {v52 .. v52}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface/range {v52 .. v52}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Ljava/util/Map$Entry;

    .line 1674
    .restart local v43       #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/providers/calendar/CalendarProvider2$InstancesList;>;"
    invoke-interface/range {v43 .. v43}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v57

    check-cast v57, Lcom/android/providers/calendar/CalendarProvider2$InstancesList;

    .line 1675
    .restart local v57       #list:Lcom/android/providers/calendar/CalendarProvider2$InstancesList;
    invoke-virtual/range {v57 .. v57}, Lcom/android/providers/calendar/CalendarProvider2$InstancesList;->iterator()Ljava/util/Iterator;

    move-result-object v53

    .restart local v53       #i$:Ljava/util/Iterator;
    :cond_1f
    :goto_c
    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1e

    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v78

    check-cast v78, Landroid/content/ContentValues;

    .line 1679
    .restart local v78       #values:Landroid/content/ContentValues;
    const-string v8, "eventStatus"

    move-object/from16 v0, v78

    move-object v1, v8

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v73

    .line 1680
    .local v73, status:Ljava/lang/Integer;
    const-string v8, "deleted"

    move-object/from16 v0, v78

    move-object v1, v8

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_21

    const-string v8, "deleted"

    move-object/from16 v0, v78

    move-object v1, v8

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    move/from16 v33, v8

    .line 1682
    .restart local v33       #deleted:Z
    :goto_d
    if-eqz v73, :cond_20

    invoke-virtual/range {v73 .. v73}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v9, 0x2

    if-eq v8, v9, :cond_1f

    :cond_20
    if-nez v33, :cond_1f

    .line 1687
    const-string v8, "deleted"

    move-object/from16 v0, v78

    move-object v1, v8

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1690
    const-string v8, "ORIGINAL_EVENT_AND_CALENDAR"

    move-object/from16 v0, v78

    move-object v1, v8

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1691
    const-string v8, "originalInstanceTime"

    move-object/from16 v0, v78

    move-object v1, v8

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1692
    const-string v8, "eventStatus"

    move-object/from16 v0, v78

    move-object v1, v8

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1694
    move-object/from16 v0, v32

    move-object/from16 v1, v78

    invoke-virtual {v0, v1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->instancesReplace(Landroid/content/ContentValues;)J

    goto :goto_c

    .line 1680
    .end local v33           #deleted:Z
    :cond_21
    const/4 v8, 0x0

    move/from16 v33, v8

    goto :goto_d
.end method

.method private performTimeZoneDependentFieldsUpdate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 6
    .parameter "db"

    .prologue
    const/4 v5, 0x6

    const-string v4, "CalendarProvider2"

    .line 525
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/providers/calendar/CalendarProvider2;->doUpdateTimezoneDependentFields(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 526
    const-wide/16 v2, -0x1

    invoke-direct {p0, v2, v3}, Lcom/android/providers/calendar/CalendarProvider2;->triggerAppWidgetUpdate(J)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 544
    :cond_0
    :goto_0
    return-void

    .line 527
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 528
    .local v0, e:Landroid/database/SQLException;
    const-string v2, "CalendarProvider2"

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 529
    const-string v2, "CalendarProvider2"

    const-string v2, "doUpdateTimezoneDependentFields() failed"

    invoke-static {v4, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 531
    :cond_1
    instance-of v2, v0, Landroid/database/sqlite/SQLiteFullException;

    if-eqz v2, :cond_2

    .line 532
    invoke-virtual {p0}, Lcom/android/providers/calendar/CalendarProvider2;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/motorola/blur/util/os/StorageUtil;->sendStorageFullIntent(Landroid/content/Context;)V

    .line 537
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/android/providers/calendar/CalendarProvider2;->mMetaData:Lcom/android/providers/calendar/MetaData;

    invoke-virtual {v2}, Lcom/android/providers/calendar/MetaData;->clearInstanceRange()V
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 538
    :catch_1
    move-exception v2

    move-object v1, v2

    .line 539
    .local v1, e2:Landroid/database/SQLException;
    const-string v2, "CalendarProvider2"

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 540
    const-string v2, "CalendarProvider2"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clearInstanceRange() also failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private query(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteQueryBuilder;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 13
    .parameter "db"
    .parameter "qb"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"
    .parameter "groupBy"
    .parameter "limit"

    .prologue
    .line 963
    const-string v2, "CalendarProvider2"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 964
    const-string v2, "CalendarProvider2"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "query sql - projection: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {p3 .. p3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " selection: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " selectionArgs: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {p5 .. p5}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " sortOrder: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " groupBy: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " limit: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    :cond_0
    const/4 v8, 0x0

    move-object v2, p2

    move-object v3, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p7

    move-object/from16 v9, p6

    move-object/from16 v10, p8

    :try_start_0
    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 974
    .local v11, c:Landroid/database/Cursor;
    if-eqz v11, :cond_1

    .line 976
    invoke-virtual {p0}, Lcom/android/providers/calendar/CalendarProvider2;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/Calendar$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-interface {v11, v2, v3}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    :cond_1
    move-object v2, v11

    .line 991
    .end local v11           #c:Landroid/database/Cursor;
    :goto_0
    return-object v2

    .line 980
    :catch_0
    move-exception v2

    move-object v12, v2

    .line 981
    .local v12, e:Landroid/database/sqlite/SQLiteFullException;
    invoke-virtual {p0}, Lcom/android/providers/calendar/CalendarProvider2;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/motorola/blur/util/os/StorageUtil;->sendStorageFullIntent(Landroid/content/Context;)V

    .line 982
    const/4 v2, 0x0

    goto :goto_0

    .line 983
    .end local v12           #e:Landroid/database/sqlite/SQLiteFullException;
    :catch_1
    move-exception v2

    move-object v12, v2

    .line 985
    .local v12, e:Landroid/database/sqlite/SQLiteException;
    const-string v2, "CalendarProvider2"

    const-string v3, "SQLiteException: "

    invoke-static {v2, v3, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 986
    const/4 v2, 0x0

    goto :goto_0

    .line 987
    .end local v12           #e:Landroid/database/sqlite/SQLiteException;
    :catch_2
    move-exception v2

    move-object v12, v2

    .line 990
    .local v12, e:Ljava/lang/IllegalArgumentException;
    const-string v2, "CalendarProvider2"

    const-string v3, "Query cannot be completed due to error."

    invoke-static {v2, v3, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 991
    const/4 v2, 0x0

    goto :goto_0
.end method

.method static readBooleanQueryParameter(Landroid/net/Uri;Ljava/lang/String;Z)Z
    .locals 3
    .parameter "uri"
    .parameter "name"
    .parameter "defaultValue"

    .prologue
    .line 4230
    invoke-static {p0, p1}, Lcom/android/providers/calendar/CalendarProvider2;->getQueryParameter(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4231
    .local v0, flag:Ljava/lang/String;
    if-nez v0, :cond_0

    move v1, p2

    :goto_0
    return v1

    :cond_0
    const-string v1, "false"

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "0"

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private regenerateInstancesTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 22
    .parameter "db"

    .prologue
    .line 694
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    .line 695
    .local v19, now:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/CalendarProvider2;->mCalendarCache:Lcom/android/providers/calendar/CalendarCache;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/providers/calendar/CalendarCache;->readTimezoneInstances()Ljava/lang/String;

    move-result-object v15

    .line 696
    .local v15, instancesTimezone:Ljava/lang/String;
    new-instance v21, Landroid/text/format/Time;

    move-object/from16 v0, v21

    move-object v1, v15

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 697
    .local v21, time:Landroid/text/format/Time;
    move-object/from16 v0, v21

    move-wide/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 698
    const/4 v3, 0x1

    move v0, v3

    move-object/from16 v1, v21

    iput v0, v1, Landroid/text/format/Time;->monthDay:I

    .line 699
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, v21

    iput v0, v1, Landroid/text/format/Time;->hour:I

    .line 700
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, v21

    iput v0, v1, Landroid/text/format/Time;->minute:I

    .line 701
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, v21

    iput v0, v1, Landroid/text/format/Time;->second:I

    .line 703
    const/4 v3, 0x1

    move-object/from16 v0, v21

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v6

    .line 704
    .local v6, begin:J
    const-wide v3, 0x13f4a4800L

    add-long v8, v6, v3

    .line 706
    .local v8, end:J
    const/16 v18, 0x0

    .line 708
    .local v18, cursor:Landroid/database/Cursor;
    :try_start_0
    new-instance v5, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v5}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    const/4 v3, 0x1

    new-array v10, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v10, v3

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    invoke-direct/range {p0 .. p0}, Lcom/android/providers/calendar/CalendarProvider2;->isHomeTimezone()Z

    move-result v16

    const/16 v17, 0x1

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-direct/range {v3 .. v17}, Lcom/android/providers/calendar/CalendarProvider2;->handleInstanceQuery(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteQueryBuilder;JJ[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZZ)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v18

    .line 718
    if-eqz v18, :cond_0

    .line 719
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 723
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/providers/calendar/CalendarProvider2;->rescheduleMissedAlarms()V

    .line 724
    return-void

    .line 718
    :catchall_0
    move-exception v3

    if-eqz v18, :cond_1

    .line 719
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v3
.end method

.method private removeScheduledAlarmsLocked(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .parameter "db"

    .prologue
    const-string v1, "CalendarProvider2"

    .line 3964
    const-string v0, "CalendarProvider2"

    const/4 v0, 0x3

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3965
    const-string v0, "CalendarProvider2"

    const-string v0, "removing scheduled alarms"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3967
    :cond_0
    const-string v0, "CalendarAlerts"

    const-string v1, "state=0"

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3969
    return-void
.end method

.method private rescheduleMissedAlarms()V
    .locals 3

    .prologue
    .line 727
    invoke-direct {p0}, Lcom/android/providers/calendar/CalendarProvider2;->getAlarmManager()Landroid/app/AlarmManager;

    move-result-object v2

    .line 728
    .local v2, manager:Landroid/app/AlarmManager;
    if-eqz v2, :cond_0

    .line 729
    invoke-virtual {p0}, Lcom/android/providers/calendar/CalendarProvider2;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 730
    .local v0, context:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 731
    .local v1, cr:Landroid/content/ContentResolver;
    invoke-static {v1, v0, v2}, Landroid/provider/Calendar$CalendarAlerts;->rescheduleMissedAlarms(Landroid/content/ContentResolver;Landroid/content/Context;Landroid/app/AlarmManager;)V

    .line 733
    .end local v0           #context:Landroid/content/Context;
    .end local v1           #cr:Landroid/content/ContentResolver;
    :cond_0
    return-void
.end method

.method private runScheduleNextAlarm(Z)V
    .locals 3
    .parameter "removeAlarms"

    .prologue
    .line 3714
    invoke-virtual {p0}, Lcom/android/providers/calendar/CalendarProvider2;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 3715
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    if-nez v0, :cond_0

    .line 3731
    :goto_0
    return-void

    .line 3718
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3720
    if-eqz p1, :cond_1

    .line 3721
    :try_start_1
    invoke-direct {p0, v0}, Lcom/android/providers/calendar/CalendarProvider2;->removeScheduledAlarmsLocked(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3723
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/providers/calendar/CalendarProvider2;->scheduleNextAlarmLocked(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3724
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3726
    :try_start_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 3728
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 3729
    .local v1, e:Landroid/database/sqlite/SQLiteFullException;
    invoke-virtual {p0}, Lcom/android/providers/calendar/CalendarProvider2;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/motorola/blur/util/os/StorageUtil;->sendStorageFullIntent(Landroid/content/Context;)V

    goto :goto_0

    .line 3726
    .end local v1           #e:Landroid/database/sqlite/SQLiteFullException;
    :catchall_0
    move-exception v2

    :try_start_3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_3 .. :try_end_3} :catch_0
.end method

.method private scheduleNextAlarmLocked(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 55
    .parameter "db"

    .prologue
    .line 3760
    invoke-direct/range {p0 .. p0}, Lcom/android/providers/calendar/CalendarProvider2;->getAlarmManager()Landroid/app/AlarmManager;

    move-result-object v31

    .line 3761
    .local v31, alarmManager:Landroid/app/AlarmManager;
    if-nez v31, :cond_1

    .line 3762
    const-string v4, "CalendarProvider2"

    const/4 v5, 0x6

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3763
    const-string v4, "CalendarProvider2"

    const-string v5, "Failed to find the AlarmManager. Could not schedule the next alarm!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3945
    :cond_0
    :goto_0
    return-void

    .line 3768
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v35

    .line 3769
    .local v35, currentMillis:J
    const-wide/32 v4, 0x6ddd00

    sub-long v6, v35, v4

    .line 3770
    .local v6, start:J
    const-wide/32 v4, 0x5265c00

    add-long v8, v6, v4

    .line 3771
    .local v8, end:J
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/calendar/CalendarProvider2;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    .line 3772
    .local v14, cr:Landroid/content/ContentResolver;
    const-string v4, "CalendarProvider2"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3773
    new-instance v49, Landroid/text/format/Time;

    invoke-direct/range {v49 .. v49}, Landroid/text/format/Time;-><init>()V

    .line 3774
    .local v49, time:Landroid/text/format/Time;
    move-object/from16 v0, v49

    move-wide v1, v6

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 3775
    const-string v4, " %a, %b %d, %Y %I:%M%P"

    move-object/from16 v0, v49

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v48

    .line 3776
    .local v48, startTimeStr:Ljava/lang/String;
    const-string v4, "CalendarProvider2"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "runScheduleNextAlarm() start search: "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3785
    .end local v48           #startTimeStr:Ljava/lang/String;
    .end local v49           #time:Landroid/text/format/Time;
    :cond_2
    const/4 v4, 0x1

    move v0, v4

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v47, v0

    const/4 v4, 0x0

    const-wide/32 v10, 0x247a6100

    sub-long v10, v35, v10

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v47, v4

    .line 3789
    .local v47, selectArg:[Ljava/lang/String;
    const-string v4, "CalendarAlerts"

    const-string v5, "_id IN (SELECT ca._id FROM CalendarAlerts AS ca LEFT OUTER JOIN Instances USING (event_id, begin, end) LEFT OUTER JOIN Reminders AS r ON (ca.event_id=r.event_id AND ca.minutes=r.minutes) WHERE Instances.begin ISNULL OR ca.alarmTime<?   OR (r.minutes ISNULL AND ca.minutes<>0))"

    move-object/from16 v0, p1

    move-object v1, v4

    move-object v2, v5

    move-object/from16 v3, v47

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v45

    .line 3792
    .local v45, rowsDeleted:I
    move-wide/from16 v41, v8

    .line 3793
    .local v41, nextAlarmTime:J
    move-object v0, v14

    move-wide/from16 v1, v35

    invoke-static {v0, v1, v2}, Landroid/provider/Calendar$CalendarAlerts;->findNextAlarmTime(Landroid/content/ContentResolver;J)J

    move-result-wide v52

    .line 3794
    .local v52, tmpAlarmTime:J
    const-wide/16 v4, -0x1

    cmp-long v4, v52, v4

    if-eqz v4, :cond_3

    cmp-long v4, v52, v41

    if-gez v4, :cond_3

    .line 3795
    move-wide/from16 v41, v52

    .line 3819
    :cond_3
    const-string v43, "SELECT begin-(minutes*60000) AS myAlarmTime, Instances.event_id AS eventId, begin, end, title, allDay, method, minutes FROM Instances INNER JOIN Events ON (Events._id = Instances.event_id) INNER JOIN Reminders ON (Instances.event_id = Reminders.event_id) WHERE method=1 AND myAlarmTime>=CAST(? AS INT) AND myAlarmTime<=CAST(? AS INT) AND end>=? AND 0=(SELECT count(*) from CalendarAlerts CA where CA.event_id=Instances.event_id AND CA.begin=Instances.begin AND CA.alarmTime=myAlarmTime) ORDER BY myAlarmTime,begin,title"

    .line 3834
    .local v43, query:Ljava/lang/String;
    const/4 v4, 0x3

    move v0, v4

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v44, v0

    const/4 v4, 0x0

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v44, v4

    const/4 v4, 0x1

    invoke-static/range {v41 .. v42}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v44, v4

    const/4 v4, 0x2

    invoke-static/range {v35 .. v36}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v44, v4

    .line 3837
    .local v44, queryParams:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/CalendarProvider2;->mCalendarCache:Lcom/android/providers/calendar/CalendarCache;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/providers/calendar/CalendarCache;->readTimezoneInstances()Ljava/lang/String;

    move-result-object v12

    .line 3838
    .local v12, instancesTimezone:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/CalendarProvider2;->mCalendarCache:Lcom/android/providers/calendar/CalendarCache;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/providers/calendar/CalendarCache;->readTimezoneType()Ljava/lang/String;

    move-result-object v4

    const-string v5, "home"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    .line 3840
    .local v13, isHomeTimezone:Z
    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    invoke-direct/range {v4 .. v13}, Lcom/android/providers/calendar/CalendarProvider2;->acquireInstanceRangeLocked(Landroid/database/sqlite/SQLiteDatabase;JJZZLjava/lang/String;Z)V

    .line 3846
    const/16 v37, 0x0

    .line 3848
    .local v37, cursor:Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p1

    move-object/from16 v1, v43

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v37

    .line 3850
    const-string v4, "begin"

    move-object/from16 v0, v37

    move-object v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v34

    .line 3851
    .local v34, beginIndex:I
    const-string v4, "end"

    move-object/from16 v0, v37

    move-object v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v38

    .line 3852
    .local v38, endIndex:I
    const-string v4, "eventId"

    move-object/from16 v0, v37

    move-object v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v39

    .line 3853
    .local v39, eventIdIndex:I
    const-string v4, "myAlarmTime"

    move-object/from16 v0, v37

    move-object v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v32

    .line 3854
    .local v32, alarmTimeIndex:I
    const-string v4, "minutes"

    move-object/from16 v0, v37

    move-object v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v40

    .line 3856
    .local v40, minutesIndex:I
    const-string v4, "CalendarProvider2"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 3857
    new-instance v49, Landroid/text/format/Time;

    invoke-direct/range {v49 .. v49}, Landroid/text/format/Time;-><init>()V

    .line 3858
    .restart local v49       #time:Landroid/text/format/Time;
    move-object/from16 v0, v49

    move-wide/from16 v1, v41

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 3859
    const-string v4, " %a, %b %d, %Y %I:%M%P"

    move-object/from16 v0, v49

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 3860
    .local v33, alarmTimeStr:Ljava/lang/String;
    const-string v4, "CalendarProvider2"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cursor results: "

    .end local v6           #start:J
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {v37 .. v37}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " nextAlarmTime: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3864
    .end local v33           #alarmTimeStr:Ljava/lang/String;
    .end local v49           #time:Landroid/text/format/Time;
    :cond_4
    :goto_1
    invoke-interface/range {v37 .. v37}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 3872
    move-object/from16 v0, v37

    move/from16 v1, v32

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    .line 3873
    .local v19, alarmTime:J
    move-object/from16 v0, v37

    move/from16 v1, v39

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    .line 3874
    .local v15, eventId:J
    move-object/from16 v0, v37

    move/from16 v1, v40

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v30

    .line 3875
    .local v30, minutes:I
    move-object/from16 v0, v37

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    .line 3876
    .local v17, startTime:J
    invoke-interface/range {v37 .. v38}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v26

    .line 3878
    .local v26, endTime:J
    const-string v4, "CalendarProvider2"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 3879
    new-instance v49, Landroid/text/format/Time;

    invoke-direct/range {v49 .. v49}, Landroid/text/format/Time;-><init>()V

    .line 3880
    .restart local v49       #time:Landroid/text/format/Time;
    move-object/from16 v0, v49

    move-wide/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 3881
    const-string v4, " %a, %b %d, %Y %I:%M%P"

    move-object/from16 v0, v49

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v46

    .line 3882
    .local v46, schedTime:Ljava/lang/String;
    move-object/from16 v0, v49

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 3883
    const-string v4, " %a, %b %d, %Y %I:%M%P"

    move-object/from16 v0, v49

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v48

    .line 3885
    .restart local v48       #startTimeStr:Ljava/lang/String;
    const-string v4, "CalendarProvider2"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  looking at id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-wide v1, v15

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " alarm: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-wide/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3889
    .end local v46           #schedTime:Ljava/lang/String;
    .end local v48           #startTimeStr:Ljava/lang/String;
    .end local v49           #time:Landroid/text/format/Time;
    :cond_5
    cmp-long v4, v19, v41

    if-gez v4, :cond_8

    .line 3890
    move-wide/from16 v41, v19

    .line 3903
    :cond_6
    invoke-static/range {v14 .. v20}, Landroid/provider/Calendar$CalendarAlerts;->alarmExists(Landroid/content/ContentResolver;JJJ)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 3904
    const-string v4, "CalendarProvider2"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 3905
    const-string v4, "title"

    move-object/from16 v0, v37

    move-object v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v51

    .line 3906
    .local v51, titleIndex:I
    move-object/from16 v0, v37

    move/from16 v1, v51

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v50

    .line 3907
    .local v50, title:Ljava/lang/String;
    const-string v4, "CalendarProvider2"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  alarm exists for id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-wide v1, v15

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_1

    .line 3925
    .end local v15           #eventId:J
    .end local v17           #startTime:J
    .end local v19           #alarmTime:J
    .end local v26           #endTime:J
    .end local v30           #minutes:I
    .end local v32           #alarmTimeIndex:I
    .end local v34           #beginIndex:I
    .end local v38           #endIndex:I
    .end local v39           #eventIdIndex:I
    .end local v40           #minutesIndex:I
    .end local v50           #title:Ljava/lang/String;
    .end local v51           #titleIndex:I
    :catchall_0
    move-exception v4

    if-eqz v37, :cond_7

    .line 3926
    invoke-interface/range {v37 .. v37}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v4

    .line 3891
    .restart local v15       #eventId:J
    .restart local v17       #startTime:J
    .restart local v19       #alarmTime:J
    .restart local v26       #endTime:J
    .restart local v30       #minutes:I
    .restart local v32       #alarmTimeIndex:I
    .restart local v34       #beginIndex:I
    .restart local v38       #endIndex:I
    .restart local v39       #eventIdIndex:I
    .restart local v40       #minutesIndex:I
    :cond_8
    const-wide/32 v4, 0xea60

    add-long v4, v4, v41

    cmp-long v4, v19, v4

    if-lez v4, :cond_6

    .line 3895
    :try_start_1
    const-string v4, "CalendarProvider2"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 3896
    const-string v4, "CalendarProvider2"

    const-string v5, "This event alarm (and all later ones) will be scheduled later"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3925
    .end local v15           #eventId:J
    .end local v17           #startTime:J
    .end local v19           #alarmTime:J
    .end local v26           #endTime:J
    .end local v30           #minutes:I
    :cond_9
    if-eqz v37, :cond_a

    .line 3926
    invoke-interface/range {v37 .. v37}, Landroid/database/Cursor;->close()V

    .line 3931
    :cond_a
    if-lez v45, :cond_b

    .line 3932
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/calendar/CalendarProvider2;->getContext()Landroid/content/Context;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v31

    move-wide/from16 v2, v35

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Calendar$CalendarAlerts;->scheduleAlarm(Landroid/content/Context;Landroid/app/AlarmManager;J)V

    .line 3940
    :cond_b
    const-wide v4, 0x7fffffffffffffffL

    cmp-long v4, v41, v4

    if-eqz v4, :cond_e

    .line 3941
    const-wide/32 v4, 0xea60

    add-long v4, v4, v41

    move-object/from16 v0, p0

    move-wide v1, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/calendar/CalendarProvider2;->scheduleNextAlarmCheck(J)V

    goto/16 :goto_0

    .restart local v15       #eventId:J
    .restart local v17       #startTime:J
    .restart local v19       #alarmTime:J
    .restart local v26       #endTime:J
    .restart local v30       #minutes:I
    :cond_c
    move-object/from16 v21, v14

    move-wide/from16 v22, v15

    move-wide/from16 v24, v17

    move-wide/from16 v28, v19

    .line 3913
    :try_start_2
    invoke-static/range {v21 .. v30}, Landroid/provider/Calendar$CalendarAlerts;->insert(Landroid/content/ContentResolver;JJJJI)Landroid/net/Uri;

    move-result-object v54

    .line 3915
    .local v54, uri:Landroid/net/Uri;
    if-nez v54, :cond_d

    .line 3916
    const-string v4, "CalendarProvider2"

    const/4 v5, 0x6

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 3917
    const-string v4, "CalendarProvider2"

    const-string v5, "runScheduleNextAlarm() insert into CalendarAlerts table failed"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 3922
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/calendar/CalendarProvider2;->getContext()Landroid/content/Context;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v31

    move-wide/from16 v2, v19

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Calendar$CalendarAlerts;->scheduleAlarm(Landroid/content/Context;Landroid/app/AlarmManager;J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .line 3943
    .end local v15           #eventId:J
    .end local v17           #startTime:J
    .end local v19           #alarmTime:J
    .end local v26           #endTime:J
    .end local v30           #minutes:I
    .end local v54           #uri:Landroid/net/Uri;
    :cond_e
    const-wide/32 v4, 0x5265c00

    add-long v4, v4, v35

    move-object/from16 v0, p0

    move-wide v1, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/calendar/CalendarProvider2;->scheduleNextAlarmCheck(J)V

    goto/16 :goto_0
.end method

.method private setEventDirty(Landroid/database/sqlite/SQLiteDatabase;I)V
    .locals 4
    .parameter "db"
    .parameter "eventId"

    .prologue
    .line 2212
    const-string v0, "UPDATE Events SET _sync_dirty=1 where _id=?"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2213
    return-void
.end method

.method private declared-synchronized triggerAppWidgetUpdate(J)V
    .locals 2
    .parameter "changedEventId"

    .prologue
    .line 3638
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/providers/calendar/CalendarProvider2;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 3639
    .local v0, context:Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 3640
    iget-object v1, p0, Lcom/android/providers/calendar/CalendarProvider2;->mAppWidgetProvider:Lcom/android/providers/calendar/CalendarWidgetProvider;

    invoke-virtual {v1, v0, p1, p2}, Lcom/android/providers/calendar/CalendarWidgetProvider;->providerUpdated(Landroid/content/Context;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3642
    :cond_0
    monitor-exit p0

    return-void

    .line 3638
    .end local v0           #context:Landroid/content/Context;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private updateAttendeeStatusForSelf(Landroid/database/sqlite/SQLiteDatabase;JI)I
    .locals 9
    .parameter "db"
    .parameter "eventId"
    .parameter "selfStatus"

    .prologue
    const-string v8, "\'"

    .line 2382
    invoke-static {p1, p2, p3}, Lcom/android/providers/calendar/CalendarProvider2;->getEmailAliasSet(Landroid/database/sqlite/SQLiteDatabase;J)Ljava/util/Set;

    move-result-object v0

    .line 2383
    .local v0, emailAliasSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v6

    if-nez v6, :cond_0

    .line 2384
    const-string v6, "CalendarProvider2"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateSelfAttendeeStatus, email alias set empty, "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2385
    const/4 v6, 0x0

    .line 2405
    :goto_0
    return v6

    .line 2388
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2389
    .local v1, emailSetBuilder:Ljava/lang/StringBuilder;
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2390
    .local v4, s:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 2391
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_2

    const-string v6, ","

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2392
    :cond_2
    const-string v6, "\'"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 2396
    .end local v4           #s:Ljava/lang/String;
    :cond_3
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 2397
    .local v5, values:Landroid/content/ContentValues;
    const-string v6, "attendeeStatus"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2398
    const-string v6, "Attendees"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "event_id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " AND "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "attendeeEmail"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " IN ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {p1, v6, v5, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .local v3, rtVal:I
    move v6, v3

    .line 2405
    goto :goto_0
.end method

.method private updateEventAttendeeStatus(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)V
    .locals 13
    .parameter "db"
    .parameter "attendeeValues"

    .prologue
    const-string v12, "attendeeStatus"

    const-string v11, "attendeeRelationship"

    const-string v10, "attendeeEmail"

    const-string v9, "CalendarProvider2"

    .line 2320
    const-string v7, "event_id"

    invoke-virtual {p2, v7}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 2321
    .local v2, eventId:J
    const-wide/16 v7, 0x0

    cmp-long v7, v2, v7

    if-gtz v7, :cond_1

    .line 2322
    const-string v7, "CalendarProvider2"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateEventAttendeeStatus, invalid eventId, "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2372
    :cond_0
    :goto_0
    return-void

    .line 2327
    :cond_1
    const/4 v0, 0x0

    .line 2328
    .local v0, attendeeEmail:Ljava/lang/String;
    const-string v7, "attendeeEmail"

    invoke-virtual {p2, v10}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 2329
    const-string v7, "attendeeEmail"

    invoke-virtual {p2, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2331
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 2332
    const-string v7, "CalendarProvider2"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateEventAttendeeStatus, empty attendeeEmail, "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2340
    :cond_3
    invoke-static {p1, v2, v3}, Lcom/android/providers/calendar/CalendarProvider2;->getEmailAliasSet(Landroid/database/sqlite/SQLiteDatabase;J)Ljava/util/Set;

    move-result-object v1

    .line 2341
    .local v1, emailAliasSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v7

    if-nez v7, :cond_4

    .line 2342
    const-string v7, "CalendarProvider2"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateEventAttendeeStatus, attendee emailAliasSet empty, "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2349
    :cond_4
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2354
    const/4 v5, 0x0

    .line 2357
    .local v5, status:I
    const-string v7, "attendeeRelationship"

    invoke-virtual {p2, v11}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 2358
    const-string v7, "attendeeRelationship"

    invoke-virtual {p2, v11}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 2359
    .local v4, rel:I
    const/4 v7, 0x2

    if-ne v4, v7, :cond_5

    .line 2360
    const/4 v5, 0x1

    .line 2365
    .end local v4           #rel:I
    :cond_5
    const-string v7, "attendeeStatus"

    invoke-virtual {p2, v12}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 2366
    const-string v7, "attendeeStatus"

    invoke-virtual {p2, v12}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 2369
    :cond_6
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 2370
    .local v6, values:Landroid/content/ContentValues;
    const-string v7, "selfAttendeeStatus"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2371
    const-string v7, "Events"

    const-string v8, "_id=?"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {p1, v7, v6, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private updateEventRawTimesLocked(JLandroid/content/ContentValues;)V
    .locals 12
    .parameter "eventId"
    .parameter "values"

    .prologue
    .line 2708
    iget-object v10, p0, Lcom/android/providers/calendar/CalendarProvider2;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v10}, Lcom/android/providers/calendar/CalendarProvider2;->getDatabaseHelper(Landroid/content/Context;)Lcom/android/providers/calendar/CalendarDatabaseHelper;

    move-result-object v2

    .line 2709
    .local v2, dbHelper:Lcom/android/providers/calendar/CalendarDatabaseHelper;
    if-nez v2, :cond_0

    .line 2763
    :goto_0
    return-void

    .line 2711
    :cond_0
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 2713
    .local v7, rawValues:Landroid/content/ContentValues;
    const-string v10, "event_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2715
    const-string v10, "eventTimezone"

    invoke-virtual {p3, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 2717
    .local v9, timezone:Ljava/lang/String;
    const/4 v0, 0x0

    .line 2718
    .local v0, allDay:Z
    const-string v10, "allDay"

    invoke-virtual {p3, v10}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 2719
    .local v1, allDayInteger:Ljava/lang/Integer;
    if-eqz v1, :cond_1

    .line 2720
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-eqz v10, :cond_9

    const/4 v10, 0x1

    move v0, v10

    .line 2723
    :cond_1
    :goto_1
    if-nez v0, :cond_2

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 2725
    :cond_2
    const-string v9, "UTC"

    .line 2728
    :cond_3
    new-instance v8, Landroid/text/format/Time;

    invoke-direct {v8, v9}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 2729
    .local v8, time:Landroid/text/format/Time;
    iput-boolean v0, v8, Landroid/text/format/Time;->allDay:Z

    .line 2730
    const-string v10, "dtstart"

    invoke-virtual {p3, v10}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    .line 2731
    .local v4, dtstartMillis:Ljava/lang/Long;
    if-eqz v4, :cond_4

    .line 2732
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Landroid/text/format/Time;->set(J)V

    .line 2733
    const-string v10, "dtstart2445"

    invoke-virtual {v8}, Landroid/text/format/Time;->format2445()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2736
    :cond_4
    const-string v10, "dtend"

    invoke-virtual {p3, v10}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    .line 2737
    .local v3, dtendMillis:Ljava/lang/Long;
    if-eqz v3, :cond_5

    .line 2738
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Landroid/text/format/Time;->set(J)V

    .line 2739
    const-string v10, "dtend2445"

    invoke-virtual {v8}, Landroid/text/format/Time;->format2445()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2742
    :cond_5
    const-string v10, "originalInstanceTime"

    invoke-virtual {p3, v10}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    .line 2743
    .local v6, originalInstanceMillis:Ljava/lang/Long;
    if-eqz v6, :cond_7

    .line 2747
    const-string v10, "originalAllDay"

    invoke-virtual {p3, v10}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 2748
    if-eqz v1, :cond_6

    .line 2749
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-eqz v10, :cond_a

    const/4 v10, 0x1

    :goto_2
    iput-boolean v10, v8, Landroid/text/format/Time;->allDay:Z

    .line 2751
    :cond_6
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Landroid/text/format/Time;->set(J)V

    .line 2752
    const-string v10, "originalInstanceTime2445"

    invoke-virtual {v8}, Landroid/text/format/Time;->format2445()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2755
    :cond_7
    const-string v10, "lastDate"

    invoke-virtual {p3, v10}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    .line 2756
    .local v5, lastDateMillis:Ljava/lang/Long;
    if-eqz v5, :cond_8

    .line 2757
    iput-boolean v0, v8, Landroid/text/format/Time;->allDay:Z

    .line 2758
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Landroid/text/format/Time;->set(J)V

    .line 2759
    const-string v10, "lastDate2445"

    invoke-virtual {v8}, Landroid/text/format/Time;->format2445()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2762
    :cond_8
    invoke-virtual {v2, v7}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->eventsRawTimesReplace(Landroid/content/ContentValues;)J

    goto/16 :goto_0

    .line 2720
    .end local v3           #dtendMillis:Ljava/lang/Long;
    .end local v4           #dtstartMillis:Ljava/lang/Long;
    .end local v5           #lastDateMillis:Ljava/lang/Long;
    .end local v6           #originalInstanceMillis:Ljava/lang/Long;
    .end local v8           #time:Landroid/text/format/Time;
    :cond_9
    const/4 v10, 0x0

    move v0, v10

    goto/16 :goto_1

    .line 2749
    .restart local v3       #dtendMillis:Ljava/lang/Long;
    .restart local v4       #dtstartMillis:Ljava/lang/Long;
    .restart local v6       #originalInstanceMillis:Ljava/lang/Long;
    .restart local v8       #time:Landroid/text/format/Time;
    :cond_a
    const/4 v10, 0x0

    goto :goto_2
.end method

.method private updateEventsStartEndFromEventRawTimesLocked(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 9
    .parameter "db"

    .prologue
    const-string v0, "CalendarProvider2"

    .line 593
    const-string v0, "SELECT event_id, dtstart2445, dtend2445, eventTimezone FROM EventsRawTimes, Events WHERE event_id = Events._id"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 595
    .local v7, cursor:Landroid/database/Cursor;
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 596
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 597
    .local v2, eventId:J
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 598
    .local v5, dtStart2445:Ljava/lang/String;
    const/4 v0, 0x2

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 599
    .local v6, dtEnd2445:Ljava/lang/String;
    const/4 v0, 0x3

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 600
    .local v4, eventTimezone:Ljava/lang/String;
    if-nez v5, :cond_1

    if-nez v6, :cond_1

    .line 601
    const-string v0, "CalendarProvider2"

    const/4 v1, 0x6

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 602
    const-string v0, "CalendarProvider2"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Event "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, " has dtStart2445 and dtEnd2445 null "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, "at the same time in EventsRawTimes!"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 613
    .end local v2           #eventId:J
    .end local v4           #eventTimezone:Ljava/lang/String;
    .end local v5           #dtStart2445:Ljava/lang/String;
    .end local v6           #dtEnd2445:Ljava/lang/String;
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 614
    const/4 v7, 0x0

    throw v0

    .restart local v2       #eventId:J
    .restart local v4       #eventTimezone:Ljava/lang/String;
    .restart local v5       #dtStart2445:Ljava/lang/String;
    .restart local v6       #dtEnd2445:Ljava/lang/String;
    :cond_1
    move-object v0, p0

    move-object v1, p1

    .line 607
    :try_start_1
    invoke-direct/range {v0 .. v6}, Lcom/android/providers/calendar/CalendarProvider2;->updateEventsStartEndLocked(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 613
    .end local v2           #eventId:J
    .end local v4           #eventTimezone:Ljava/lang/String;
    .end local v5           #dtStart2445:Ljava/lang/String;
    .end local v6           #dtEnd2445:Ljava/lang/String;
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 614
    const/4 v7, 0x0

    .line 616
    return-void
.end method

.method private updateEventsStartEndLocked(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "db"
    .parameter "eventId"
    .parameter "timezone"
    .parameter "dtStart2445"
    .parameter "dtEnd2445"

    .prologue
    const-string v7, "CalendarProvider2"

    .line 639
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 640
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "dtstart"

    invoke-direct {p0, p4, p5}, Lcom/android/providers/calendar/CalendarProvider2;->get2445ToMillis(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 641
    const-string v2, "dtend"

    invoke-direct {p0, p4, p6}, Lcom/android/providers/calendar/CalendarProvider2;->get2445ToMillis(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 643
    const-string v2, "Events"

    const-string v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {p1, v2, v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 645
    .local v0, result:I
    if-nez v0, :cond_0

    .line 646
    const-string v2, "CalendarProvider2"

    const/4 v2, 0x2

    invoke-static {v7, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 647
    const-string v2, "CalendarProvider2"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not update Events table with values "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    :cond_0
    return-void
.end method

.method private updateInTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 18
    .parameter "db"
    .parameter "table"
    .parameter "values"
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 3132
    sget-object v7, Lcom/android/providers/calendar/CalendarProvider2;->ID_PROJECTION:[Ljava/lang/String;

    const/4 v10, 0x0

    move-object/from16 v5, p0

    move-object/from16 v6, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-virtual/range {v5 .. v10}, Lcom/android/providers/calendar/CalendarProvider2;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 3133
    .local v11, c:Landroid/database/Cursor;
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 3134
    .local v13, dirtyValues:Landroid/content/ContentValues;
    const-string v5, "_sync_dirty"

    const-string v6, "1"

    invoke-virtual {v13, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3135
    const/4 v12, 0x0

    .line 3137
    .local v12, count:I
    :goto_0
    :try_start_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3138
    const/4 v5, 0x0

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 3139
    .local v16, id:J
    const/4 v5, 0x1

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 3140
    .local v14, event_id:J
    const-string v5, "_id=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object v3, v5

    move-object v4, v6

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3141
    const-string v5, "Events"

    const-string v6, "_id=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    move-object/from16 v0, p1

    move-object v1, v5

    move-object v2, v13

    move-object v3, v6

    move-object v4, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3142
    add-int/lit8 v12, v12, 0x1

    .line 3143
    goto :goto_0

    .line 3145
    .end local v14           #event_id:J
    .end local v16           #id:J
    :cond_0
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 3147
    return v12

    .line 3145
    :catchall_0
    move-exception v5

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v5
.end method

.method private updateInstancesLocked(Landroid/content/ContentValues;JZLandroid/database/sqlite/SQLiteDatabase;)V
    .locals 22
    .parameter "values"
    .parameter "rowId"
    .parameter "newEvent"
    .parameter "db"

    .prologue
    .line 2421
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/CalendarProvider2;->mContext:Landroid/content/Context;

    move-object v5, v0

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/providers/calendar/CalendarProvider2;->getDatabaseHelper(Landroid/content/Context;)Lcom/android/providers/calendar/CalendarDatabaseHelper;

    move-result-object v15

    .line 2422
    .local v15, dbHelper:Lcom/android/providers/calendar/CalendarDatabaseHelper;
    if-nez v15, :cond_1

    .line 2506
    :cond_0
    :goto_0
    return-void

    .line 2425
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/CalendarProvider2;->mMetaData:Lcom/android/providers/calendar/MetaData;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/providers/calendar/MetaData;->getFieldsLocked()Lcom/android/providers/calendar/MetaData$Fields;

    move-result-object v18

    .line 2426
    .local v18, fields:Lcom/android/providers/calendar/MetaData$Fields;
    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/android/providers/calendar/MetaData$Fields;->maxInstance:J

    move-wide v5, v0

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_0

    .line 2430
    const-string v5, "dtstart"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v17

    .line 2431
    .local v17, dtstartMillis:Ljava/lang/Long;
    if-nez v17, :cond_3

    .line 2432
    if-eqz p4, :cond_2

    .line 2434
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "DTSTART missing."

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2436
    :cond_2
    const-string v5, "CalendarProvider2"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2437
    const-string v5, "CalendarProvider2"

    const-string v6, "Missing DTSTART.  No need to update instance."

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2442
    :cond_3
    const-string v5, "lastDate"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v20

    .line 2443
    .local v20, lastDateMillis:Ljava/lang/Long;
    const-string v5, "originalInstanceTime"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v21

    .line 2445
    .local v21, originalInstanceTime:Ljava/lang/Long;
    if-nez p4, :cond_4

    .line 2450
    const-string v5, "Instances"

    const-string v6, "event_id=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    move-object/from16 v0, p5

    move-object v1, v5

    move-object v2, v6

    move-object v3, v7

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2453
    :cond_4
    invoke-static/range {p1 .. p1}, Lcom/android/providers/calendar/CalendarProvider2;->isRecurrenceEvent(Landroid/content/ContentValues;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 2456
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/android/providers/calendar/MetaData$Fields;->maxInstance:J

    move-wide v7, v0

    cmp-long v5, v5, v7

    if-gtz v5, :cond_7

    if-eqz v20, :cond_5

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/android/providers/calendar/MetaData$Fields;->minInstance:J

    move-wide v7, v0

    cmp-long v5, v5, v7

    if-ltz v5, :cond_7

    :cond_5
    const/4 v5, 0x1

    move/from16 v19, v5

    .line 2461
    .local v19, insideWindow:Z
    :goto_1
    if-eqz v21, :cond_8

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/android/providers/calendar/MetaData$Fields;->maxInstance:J

    move-wide v7, v0

    cmp-long v5, v5, v7

    if-gtz v5, :cond_8

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/android/providers/calendar/MetaData$Fields;->minInstance:J

    move-wide v7, v0

    const-wide/32 v9, 0x240c8400

    sub-long/2addr v7, v9

    cmp-long v5, v5, v7

    if-ltz v5, :cond_8

    const/4 v5, 0x1

    move v12, v5

    .line 2464
    .local v12, affectsWindow:Z
    :goto_2
    if-nez v19, :cond_6

    if-eqz v12, :cond_0

    .line 2465
    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move-object/from16 v4, p5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/providers/calendar/CalendarProvider2;->updateRecurrenceInstancesLocked(Landroid/content/ContentValues;JLandroid/database/sqlite/SQLiteDatabase;)V

    goto/16 :goto_0

    .line 2456
    .end local v12           #affectsWindow:Z
    .end local v19           #insideWindow:Z
    :cond_7
    const/4 v5, 0x0

    move/from16 v19, v5

    goto :goto_1

    .line 2461
    .restart local v19       #insideWindow:Z
    :cond_8
    const/4 v5, 0x0

    move v12, v5

    goto :goto_2

    .line 2473
    .end local v19           #insideWindow:Z
    :cond_9
    const-string v5, "dtend"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v16

    .line 2474
    .local v16, dtendMillis:Ljava/lang/Long;
    if-nez v16, :cond_a

    .line 2475
    move-object/from16 v16, v17

    .line 2483
    :cond_a
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/android/providers/calendar/MetaData$Fields;->maxInstance:J

    move-wide v7, v0

    cmp-long v5, v5, v7

    if-gtz v5, :cond_0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/android/providers/calendar/MetaData$Fields;->minInstance:J

    move-wide v7, v0

    cmp-long v5, v5, v7

    if-ltz v5, :cond_0

    .line 2484
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 2485
    .local v11, instanceValues:Landroid/content/ContentValues;
    const-string v5, "event_id"

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v11, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2486
    const-string v5, "begin"

    move-object v0, v11

    move-object v1, v5

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2487
    const-string v5, "end"

    move-object v0, v11

    move-object v1, v5

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2489
    const/4 v13, 0x0

    .line 2490
    .local v13, allDay:Z
    const-string v5, "allDay"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v14

    .line 2491
    .local v14, allDayInteger:Ljava/lang/Integer;
    if-eqz v14, :cond_b

    .line 2492
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eqz v5, :cond_c

    const/4 v5, 0x1

    move v13, v5

    .line 2496
    :cond_b
    :goto_3
    new-instance v10, Landroid/text/format/Time;

    invoke-direct {v10}, Landroid/text/format/Time;-><init>()V

    .line 2497
    .local v10, local:Landroid/text/format/Time;
    if-eqz v13, :cond_d

    .line 2498
    const-string v5, "UTC"

    iput-object v5, v10, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 2503
    :goto_4
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v11}, Lcom/android/providers/calendar/CalendarProvider2;->computeTimezoneDependentFields(JJLandroid/text/format/Time;Landroid/content/ContentValues;)V

    .line 2504
    invoke-virtual {v15, v11}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->instancesInsert(Landroid/content/ContentValues;)J

    goto/16 :goto_0

    .line 2492
    .end local v10           #local:Landroid/text/format/Time;
    :cond_c
    const/4 v5, 0x0

    move v13, v5

    goto :goto_3

    .line 2500
    .restart local v10       #local:Landroid/text/format/Time;
    :cond_d
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/providers/calendar/MetaData$Fields;->timezone:Ljava/lang/String;

    move-object v5, v0

    iput-object v5, v10, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    goto :goto_4
.end method

.method private updateLastDate(Landroid/content/ContentValues;)Landroid/content/ContentValues;
    .locals 7
    .parameter "values"

    .prologue
    const-string v3, "lastDate"

    const-string v6, "CalendarProvider2"

    .line 2687
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/providers/calendar/CalendarProvider2;->calculateLastDate(Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 2688
    .local v1, last:J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-ltz v3, :cond_2

    .line 2689
    const-string v3, "lastDate"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2694
    :cond_0
    :goto_0
    const-string v3, "CalendarProvider2"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2695
    const-string v3, "CalendarProvider2"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "calculateLastDate returns "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move-object v3, p1

    .line 2703
    .end local v1           #last:J
    :goto_1
    return-object v3

    .line 2690
    .restart local v1       #last:J
    :cond_2
    const-wide/16 v3, -0x1

    cmp-long v3, v1, v3

    if-nez v3, :cond_0

    .line 2692
    const-string v3, "lastDate"

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/android/providers/calendar/DateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2698
    .end local v1           #last:J
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 2700
    .local v0, e:Lcom/android/providers/calendar/DateException;
    const-string v3, "CalendarProvider2"

    const/4 v3, 0x6

    invoke-static {v6, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2701
    const-string v3, "CalendarProvider2"

    const-string v3, "Could not calculate last date."

    invoke-static {v6, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2703
    :cond_3
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private updateRecurrenceInstancesLocked(Landroid/content/ContentValues;JLandroid/database/sqlite/SQLiteDatabase;)V
    .locals 11
    .parameter "values"
    .parameter "rowId"
    .parameter "db"

    .prologue
    .line 2556
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarProvider2;->mMetaData:Lcom/android/providers/calendar/MetaData;

    invoke-virtual {v0}, Lcom/android/providers/calendar/MetaData;->getFieldsLocked()Lcom/android/providers/calendar/MetaData$Fields;

    move-result-object v7

    .line 2557
    .local v7, fields:Lcom/android/providers/calendar/MetaData$Fields;
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarProvider2;->mCalendarCache:Lcom/android/providers/calendar/CalendarCache;

    invoke-virtual {v0}, Lcom/android/providers/calendar/CalendarCache;->readTimezoneInstances()Ljava/lang/String;

    move-result-object v5

    .line 2558
    .local v5, instancesTimezone:Ljava/lang/String;
    const-string v0, "originalEvent"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2560
    .local v8, originalEvent:Ljava/lang/String;
    if-eqz v8, :cond_1

    .line 2561
    move-object v9, v8

    .line 2571
    .local v9, recurrenceSyncId:Ljava/lang/String;
    :goto_0
    if-nez v9, :cond_2

    .line 2574
    const-string v10, "_id IN (SELECT Instances._id as _id FROM Instances INNER JOIN Events ON (Events._id = Instances.event_id) WHERE Events._id =?)"

    .line 2578
    .local v10, where:Ljava/lang/String;
    const-string v0, "Instances"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p4, v0, v10, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2592
    :goto_1
    invoke-direct {p0, p4, v9, p2, p3}, Lcom/android/providers/calendar/CalendarProvider2;->getRelevantRecurrenceEntries(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;J)Landroid/database/Cursor;

    move-result-object v6

    .line 2594
    .local v6, entries:Landroid/database/Cursor;
    :try_start_0
    iget-wide v1, v7, Lcom/android/providers/calendar/MetaData$Fields;->minInstance:J

    iget-wide v3, v7, Lcom/android/providers/calendar/MetaData$Fields;->maxInstance:J

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/providers/calendar/CalendarProvider2;->performInstanceExpansion(JJLjava/lang/String;Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2597
    if-eqz v6, :cond_0

    .line 2598
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2601
    :cond_0
    return-void

    .line 2564
    .end local v6           #entries:Landroid/database/Cursor;
    .end local v9           #recurrenceSyncId:Ljava/lang/String;
    .end local v10           #where:Ljava/lang/String;
    :cond_1
    const-string v0, "SELECT _sync_id FROM Events WHERE _id=?"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p4, v0, v1}, Landroid/database/DatabaseUtils;->stringForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .restart local v9       #recurrenceSyncId:Ljava/lang/String;
    goto :goto_0

    .line 2583
    :cond_2
    const-string v10, "_id IN (SELECT Instances._id as _id FROM Instances INNER JOIN Events ON (Events._id = Instances.event_id) WHERE Events._sync_id =? OR Events.originalEvent =?)"

    .line 2588
    .restart local v10       #where:Ljava/lang/String;
    const-string v0, "Instances"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v9, v1, v2

    const/4 v2, 0x1

    aput-object v9, v1, v2

    invoke-virtual {p4, v0, v10, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1

    .line 2597
    .restart local v6       #entries:Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 2598
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method private updateTimezoneDatabaseVersion(Ljava/lang/String;)V
    .locals 3
    .parameter "timeZoneDatabaseVersion"

    .prologue
    const-string v2, "CalendarProvider2"

    .line 654
    :try_start_0
    iget-object v1, p0, Lcom/android/providers/calendar/CalendarProvider2;->mCalendarCache:Lcom/android/providers/calendar/CalendarCache;

    invoke-virtual {v1, p1}, Lcom/android/providers/calendar/CalendarCache;->writeTimezoneDatabaseVersion(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/android/providers/calendar/CalendarCache$CacheException; {:try_start_0 .. :try_end_0} :catch_0

    .line 660
    :cond_0
    :goto_0
    return-void

    .line 655
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 656
    .local v0, e:Lcom/android/providers/calendar/CalendarCache$CacheException;
    const-string v1, "CalendarProvider2"

    const/4 v1, 0x6

    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 657
    const-string v1, "CalendarProvider2"

    const-string v1, "Could not write timezone database version in the cache"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private validateEventData(Landroid/content/ContentValues;)V
    .locals 12
    .parameter "values"

    .prologue
    const/4 v10, 0x3

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v11, "duration"

    const-string v9, "CalendarProvider2"

    .line 2155
    const-string v6, "dtend"

    invoke-virtual {p1, v6}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    if-eqz v6, :cond_4

    move v0, v8

    .line 2156
    .local v0, hasDtend:Z
    :goto_0
    const-string v6, "duration"

    invoke-virtual {p1, v11}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    move v1, v8

    .line 2157
    .local v1, hasDuration:Z
    :goto_1
    const-string v6, "rrule"

    invoke-virtual {p1, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    move v5, v8

    .line 2158
    .local v5, hasRrule:Z
    :goto_2
    const-string v6, "rdate"

    invoke-virtual {p1, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_7

    move v4, v8

    .line 2159
    .local v4, hasRdate:Z
    :goto_3
    const-string v6, "originalEvent"

    invoke-virtual {p1, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_8

    move v2, v8

    .line 2160
    .local v2, hasOriginalEvent:Z
    :goto_4
    const-string v6, "originalInstanceTime"

    invoke-virtual {p1, v6}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    if-eqz v6, :cond_9

    move v3, v8

    .line 2161
    .local v3, hasOriginalInstanceTime:Z
    :goto_5
    if-nez v5, :cond_0

    if-eqz v4, :cond_a

    .line 2170
    :cond_0
    if-nez v0, :cond_1

    if-eqz v1, :cond_1

    if-nez v2, :cond_1

    if-eqz v3, :cond_3

    .line 2171
    :cond_1
    const-string v6, "CalendarProvider2"

    invoke-static {v9, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2172
    const-string v6, "CalendarProvider2"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid values for recurrence: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2174
    :cond_2
    const-string v6, "dtend"

    invoke-virtual {p1, v6}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 2175
    const-string v6, "originalEvent"

    invoke-virtual {p1, v6}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 2176
    const-string v6, "originalInstanceTime"

    invoke-virtual {p1, v6}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 2209
    :cond_3
    :goto_6
    return-void

    .end local v0           #hasDtend:Z
    .end local v1           #hasDuration:Z
    .end local v2           #hasOriginalEvent:Z
    .end local v3           #hasOriginalInstanceTime:Z
    .end local v4           #hasRdate:Z
    .end local v5           #hasRrule:Z
    :cond_4
    move v0, v7

    .line 2155
    goto :goto_0

    .restart local v0       #hasDtend:Z
    :cond_5
    move v1, v7

    .line 2156
    goto :goto_1

    .restart local v1       #hasDuration:Z
    :cond_6
    move v5, v7

    .line 2157
    goto :goto_2

    .restart local v5       #hasRrule:Z
    :cond_7
    move v4, v7

    .line 2158
    goto :goto_3

    .restart local v4       #hasRdate:Z
    :cond_8
    move v2, v7

    .line 2159
    goto :goto_4

    .restart local v2       #hasOriginalEvent:Z
    :cond_9
    move v3, v7

    .line 2160
    goto :goto_5

    .line 2178
    .restart local v3       #hasOriginalInstanceTime:Z
    :cond_a
    if-nez v2, :cond_b

    if-eqz v3, :cond_e

    .line 2187
    :cond_b
    if-eqz v0, :cond_c

    if-nez v1, :cond_c

    if-eqz v2, :cond_c

    if-nez v3, :cond_3

    .line 2188
    :cond_c
    const-string v6, "CalendarProvider2"

    invoke-static {v9, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 2189
    const-string v6, "CalendarProvider2"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid values for recurrence exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2191
    :cond_d
    const-string v6, "duration"

    invoke-virtual {p1, v11}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    goto :goto_6

    .line 2202
    :cond_e
    if-eqz v0, :cond_f

    if-eqz v1, :cond_3

    .line 2203
    :cond_f
    const-string v6, "CalendarProvider2"

    invoke-static {v9, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 2204
    const-string v6, "CalendarProvider2"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid values for event: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2206
    :cond_10
    const-string v6, "duration"

    invoke-virtual {p1, v11}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    goto :goto_6
.end method


# virtual methods
.method calculateLastDate(Landroid/content/ContentValues;)J
    .locals 20
    .parameter "values"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/providers/calendar/DateException;
        }
    .end annotation

    .prologue
    .line 2607
    const-string v17, "dtstart"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_2

    .line 2608
    const-string v17, "dtend"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_0

    const-string v17, "rrule"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_0

    const-string v17, "duration"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_0

    const-string v17, "eventTimezone"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_0

    const-string v17, "rdate"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_0

    const-string v17, "exrule"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_0

    const-string v17, "exdate"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 2614
    :cond_0
    new-instance v17, Ljava/lang/RuntimeException;

    const-string v18, "DTSTART field missing from event"

    invoke-direct/range {v17 .. v18}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 2617
    :cond_1
    const-wide/16 v17, -0x2

    .line 2676
    :goto_0
    return-wide v17

    .line 2619
    :cond_2
    const-string v17, "dtstart"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 2630
    .local v5, dtstartMillis:J
    const-string v17, "dtend"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    .line 2631
    .local v3, dtEnd:Ljava/lang/Long;
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    cmp-long v17, v17, v5

    if-lez v17, :cond_4

    .line 2632
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    sub-long v8, v17, v5

    .line 2643
    .local v8, durationMillis:J
    :goto_1
    const/4 v14, 0x0

    .line 2645
    .local v14, recur:Landroid/pim/RecurrenceSet;
    :try_start_0
    new-instance v14, Landroid/pim/RecurrenceSet;

    .end local v14           #recur:Landroid/pim/RecurrenceSet;
    move-object v0, v14

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/pim/RecurrenceSet;-><init>(Landroid/content/ContentValues;)V
    :try_end_0
    .catch Landroid/pim/EventRecurrence$InvalidFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2654
    .restart local v14       #recur:Landroid/pim/RecurrenceSet;
    if-eqz v14, :cond_3

    invoke-virtual {v14}, Landroid/pim/RecurrenceSet;->hasRecurrence()Z

    move-result v17

    if-nez v17, :cond_7

    .line 2655
    :cond_3
    add-long v17, v5, v8

    goto :goto_0

    .line 2635
    .end local v8           #durationMillis:J
    .end local v14           #recur:Landroid/pim/RecurrenceSet;
    :cond_4
    new-instance v7, Lcom/android/providers/calendar/Duration;

    invoke-direct {v7}, Lcom/android/providers/calendar/Duration;-><init>()V

    .line 2636
    .local v7, duration:Lcom/android/providers/calendar/Duration;
    const-string v17, "duration"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 2637
    .local v10, durationStr:Ljava/lang/String;
    if-eqz v10, :cond_5

    .line 2638
    invoke-virtual {v7, v10}, Lcom/android/providers/calendar/Duration;->parse(Ljava/lang/String;)V

    .line 2640
    :cond_5
    const-wide/16 v17, 0x0

    move-object v0, v7

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/calendar/Duration;->addTo(J)J

    move-result-wide v8

    .restart local v8       #durationMillis:J
    goto :goto_1

    .line 2646
    .end local v7           #duration:Lcom/android/providers/calendar/Duration;
    .end local v10           #durationStr:Ljava/lang/String;
    :catch_0
    move-exception v17

    move-object/from16 v11, v17

    .line 2647
    .local v11, e:Landroid/pim/EventRecurrence$InvalidFormatException;
    const-string v17, "CalendarProvider2"

    const/16 v18, 0x5

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 2648
    const-string v17, "CalendarProvider2"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Could not parse RRULE recurrence string: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "rrule"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object v2, v11

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2651
    :cond_6
    const-wide/16 v17, -0x1

    goto/16 :goto_0

    .line 2660
    .end local v11           #e:Landroid/pim/EventRecurrence$InvalidFormatException;
    .restart local v14       #recur:Landroid/pim/RecurrenceSet;
    :cond_7
    const-string v17, "eventTimezone"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 2662
    .local v16, tz:Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 2664
    const-string v16, "UTC"

    .line 2666
    :cond_8
    new-instance v4, Landroid/text/format/Time;

    move-object v0, v4

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 2668
    .local v4, dtstartLocal:Landroid/text/format/Time;
    invoke-virtual {v4, v5, v6}, Landroid/text/format/Time;->set(J)V

    .line 2670
    new-instance v15, Lcom/android/providers/calendar/RecurrenceProcessor;

    invoke-direct {v15}, Lcom/android/providers/calendar/RecurrenceProcessor;-><init>()V

    .line 2671
    .local v15, rp:Lcom/android/providers/calendar/RecurrenceProcessor;
    invoke-virtual {v15, v4, v14}, Lcom/android/providers/calendar/RecurrenceProcessor;->getLastOccurence(Landroid/text/format/Time;Landroid/pim/RecurrenceSet;)J

    move-result-wide v12

    .line 2672
    .local v12, lastMillis:J
    const-wide/16 v17, -0x1

    cmp-long v17, v12, v17

    if-nez v17, :cond_9

    move-wide/from16 v17, v12

    .line 2673
    goto/16 :goto_0

    .line 2676
    :cond_9
    add-long v17, v12, v8

    goto/16 :goto_0
.end method

.method protected deleteInTransaction(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 23
    .parameter "db"
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 2789
    const-string v4, "CalendarProvider2"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2790
    const-string v4, "CalendarProvider2"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "deleteInTransaction: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2793
    :cond_0
    if-nez p1, :cond_1

    const/4 v4, 0x0

    .line 2975
    .end local p2
    :goto_0
    return v4

    .line 2795
    .restart local p2
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/CalendarProvider2;->mContext:Landroid/content/Context;

    move-object v4, v0

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/android/providers/calendar/CalendarProvider2;->getDatabaseHelper(Landroid/content/Context;)Lcom/android/providers/calendar/CalendarDatabaseHelper;

    move-result-object v16

    .line 2796
    .local v16, dbHelper:Lcom/android/providers/calendar/CalendarDatabaseHelper;
    if-nez v16, :cond_2

    const/4 v4, 0x0

    goto :goto_0

    .line 2799
    :cond_2
    const-string v4, "caller_is_syncadapter"

    const/4 v5, 0x0

    move-object/from16 v0, p2

    move-object v1, v4

    move v2, v5

    invoke-static {v0, v1, v2}, Lcom/android/providers/calendar/CalendarProvider2;->readBooleanQueryParameter(Landroid/net/Uri;Ljava/lang/String;Z)Z

    move-result v14

    .line 2801
    .local v14, callerIsSyncAdapter:Z
    sget-object v4, Lcom/android/providers/calendar/CalendarProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    move-object v0, v4

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v18

    .line 2802
    .local v18, match:I
    const/16 v20, 0x0

    .line 2805
    .local v20, selectionSb:Ljava/lang/StringBuilder;
    packed-switch v18, :pswitch_data_0

    .line 2971
    :pswitch_0
    :try_start_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown URL "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2973
    .end local p2
    :catch_0
    move-exception v4

    move-object/from16 v17, v4

    .line 2974
    .local v17, e:Landroid/database/sqlite/SQLiteFullException;
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/calendar/CalendarProvider2;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/motorola/blur/util/os/StorageUtil;->sendStorageFullIntent(Landroid/content/Context;)V

    .line 2975
    const/4 v4, 0x0

    goto :goto_0

    .line 2807
    .end local v17           #e:Landroid/database/sqlite/SQLiteFullException;
    .restart local p2
    :pswitch_1
    :try_start_1
    invoke-virtual/range {v16 .. v16}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->getSyncState()Lcom/android/internal/content/SyncStateContentProviderHelper;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/content/SyncStateContentProviderHelper;->delete(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    goto :goto_0

    .line 2810
    :pswitch_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id=?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez p3, :cond_3

    const-string v5, ""

    :goto_2
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 2813
    .local v22, selectionWithId:Ljava/lang/String;
    invoke-static/range {p2 .. p2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object v2, v4

    invoke-direct {v0, v1, v2}, Lcom/android/providers/calendar/CalendarProvider2;->insertSelectionArg([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    .line 2815
    invoke-virtual/range {v16 .. v16}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->getSyncState()Lcom/android/internal/content/SyncStateContentProviderHelper;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p1

    move-object/from16 v2, v22

    move-object/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/content/SyncStateContentProviderHelper;->delete(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    goto/16 :goto_0

    .line 2810
    .end local v22           #selectionWithId:Ljava/lang/String;
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " AND ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 2820
    :pswitch_3
    const/16 v19, 0x0

    .line 2821
    .local v19, result:I
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/providers/calendar/CalendarProvider2;->appendAccountToSelection(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 2824
    const-string v5, "Events"

    sget-object v6, Lcom/android/providers/calendar/CalendarProvider2;->ID_ONLY_PROJECTION:[Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v4, p1

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v15

    .line 2828
    .local v15, cursor:Landroid/database/Cursor;
    :goto_3
    :try_start_2
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2829
    const/4 v4, 0x0

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 2830
    .local v6, id:J
    const/4 v9, 0x1

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move v8, v14

    invoke-direct/range {v4 .. v9}, Lcom/android/providers/calendar/CalendarProvider2;->deleteEventInternal(Landroid/database/sqlite/SQLiteDatabase;JZZ)I

    move-result v4

    add-int v19, v19, v4

    .line 2831
    goto :goto_3

    .line 2832
    .end local v6           #id:J
    :cond_4
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/android/providers/calendar/CalendarProvider2;->scheduleNextAlarm(Z)V

    .line 2833
    const-wide/16 v4, -0x1

    move-object/from16 v0, p0

    move-wide v1, v4

    invoke-direct {v0, v1, v2}, Lcom/android/providers/calendar/CalendarProvider2;->triggerAppWidgetUpdate(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2835
    :try_start_3
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 2836
    const/4 v15, 0x0

    move/from16 v4, v19

    .line 2838
    goto/16 :goto_0

    .line 2835
    :catchall_0
    move-exception v4

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 2836
    const/4 v15, 0x0

    throw v4

    .line 2842
    .end local v15           #cursor:Landroid/database/Cursor;
    .end local v19           #result:I
    :pswitch_4
    invoke-static/range {p2 .. p2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v6

    .line 2843
    .restart local v6       #id:J
    if-eqz p3, :cond_5

    .line 2844
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CalendarProvider2 doesn\'t support selection based deletion for type "

    .end local v6           #id:J
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2848
    .restart local v6       #id:J
    :cond_5
    const/4 v9, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move v8, v14

    invoke-direct/range {v4 .. v9}, Lcom/android/providers/calendar/CalendarProvider2;->deleteEventInternal(Landroid/database/sqlite/SQLiteDatabase;JZZ)I

    move-result v4

    goto/16 :goto_0

    .line 2852
    .end local v6           #id:J
    :pswitch_5
    if-eqz v14, :cond_6

    .line 2853
    const-string v4, "Attendees"

    move-object/from16 v0, p1

    move-object v1, v4

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    goto/16 :goto_0

    .line 2855
    :cond_6
    const-string v10, "Attendees"

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    invoke-direct/range {v8 .. v13}, Lcom/android/providers/calendar/CalendarProvider2;->deleteFromTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    goto/16 :goto_0

    .line 2860
    :pswitch_6
    if-eqz p3, :cond_7

    .line 2861
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Selection not permitted for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2863
    :cond_7
    if-eqz v14, :cond_8

    .line 2864
    invoke-static/range {p2 .. p2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v6

    .line 2865
    .restart local v6       #id:J
    const-string v4, "Attendees"

    const-string v5, "_id=?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    .end local v6           #id:J
    aput-object v6, v8, v9

    move-object/from16 v0, p1

    move-object v1, v4

    move-object v2, v5

    move-object v3, v8

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    goto/16 :goto_0

    .line 2867
    :cond_8
    const-string v10, "Attendees"

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v11, p2

    invoke-direct/range {v8 .. v13}, Lcom/android/providers/calendar/CalendarProvider2;->deleteFromTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    goto/16 :goto_0

    .line 2873
    :pswitch_7
    if-eqz v14, :cond_9

    .line 2874
    const-string v4, "Reminders"

    move-object/from16 v0, p1

    move-object v1, v4

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    goto/16 :goto_0

    .line 2876
    :cond_9
    const-string v10, "Reminders"

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    invoke-direct/range {v8 .. v13}, Lcom/android/providers/calendar/CalendarProvider2;->deleteFromTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    goto/16 :goto_0

    .line 2881
    :pswitch_8
    if-eqz p3, :cond_a

    .line 2882
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Selection not permitted for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2884
    :cond_a
    if-eqz v14, :cond_b

    .line 2885
    invoke-static/range {p2 .. p2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v6

    .line 2886
    .restart local v6       #id:J
    const-string v4, "Reminders"

    const-string v5, "_id=?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    .end local v6           #id:J
    aput-object v6, v8, v9

    move-object/from16 v0, p1

    move-object v1, v4

    move-object v2, v5

    move-object v3, v8

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    goto/16 :goto_0

    .line 2888
    :cond_b
    const-string v10, "Reminders"

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v11, p2

    invoke-direct/range {v8 .. v13}, Lcom/android/providers/calendar/CalendarProvider2;->deleteFromTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    goto/16 :goto_0

    .line 2894
    :pswitch_9
    if-eqz v14, :cond_c

    .line 2895
    const-string v4, "ExtendedProperties"

    move-object/from16 v0, p1

    move-object v1, v4

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    goto/16 :goto_0

    .line 2897
    :cond_c
    const-string v10, "ExtendedProperties"

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    invoke-direct/range {v8 .. v13}, Lcom/android/providers/calendar/CalendarProvider2;->deleteFromTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    goto/16 :goto_0

    .line 2902
    :pswitch_a
    if-eqz p3, :cond_d

    .line 2903
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Selection not permitted for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2905
    :cond_d
    if-eqz v14, :cond_e

    .line 2906
    invoke-static/range {p2 .. p2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v6

    .line 2907
    .restart local v6       #id:J
    const-string v4, "ExtendedProperties"

    const-string v5, "_id=?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    .end local v6           #id:J
    aput-object v6, v8, v9

    move-object/from16 v0, p1

    move-object v1, v4

    move-object v2, v5

    move-object v3, v8

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    goto/16 :goto_0

    .line 2910
    :cond_e
    const-string v10, "ExtendedProperties"

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v11, p2

    invoke-direct/range {v8 .. v13}, Lcom/android/providers/calendar/CalendarProvider2;->deleteFromTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    goto/16 :goto_0

    .line 2916
    :pswitch_b
    if-eqz v14, :cond_f

    .line 2917
    const-string v4, "CalendarAlerts"

    move-object/from16 v0, p1

    move-object v1, v4

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    goto/16 :goto_0

    .line 2919
    :cond_f
    const-string v10, "CalendarAlerts"

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    invoke-direct/range {v8 .. v13}, Lcom/android/providers/calendar/CalendarProvider2;->deleteFromTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    goto/16 :goto_0

    .line 2924
    :pswitch_c
    if-eqz p3, :cond_10

    .line 2925
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Selection not permitted for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2929
    :cond_10
    invoke-static/range {p2 .. p2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v6

    .line 2930
    .restart local v6       #id:J
    const-string v4, "CalendarAlerts"

    const-string v5, "_id=?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    .end local v6           #id:J
    aput-object v6, v8, v9

    move-object/from16 v0, p1

    move-object v1, v4

    move-object v2, v5

    move-object v3, v8

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    goto/16 :goto_0

    .line 2933
    :pswitch_d
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot delete that URL: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2935
    :pswitch_e
    new-instance v21, Ljava/lang/StringBuilder;

    const-string v4, "_id="

    move-object/from16 v0, v21

    move-object v1, v4

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_3 .. :try_end_3} :catch_0

    .line 2936
    .end local v20           #selectionSb:Ljava/lang/StringBuilder;
    .local v21, selectionSb:Ljava/lang/StringBuilder;
    :try_start_4
    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, v21

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2937
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_11

    .line 2938
    const-string v4, " AND ("

    move-object/from16 v0, v21

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2939
    move-object/from16 v0, v21

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2940
    const/16 v4, 0x29

    move-object/from16 v0, v21

    move v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2942
    :cond_11
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_4 .. :try_end_4} :catch_1

    move-result-object p3

    move-object/from16 v20, v21

    .line 2945
    .end local v21           #selectionSb:Ljava/lang/StringBuilder;
    .restart local v20       #selectionSb:Ljava/lang/StringBuilder;
    :pswitch_f
    :try_start_5
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/providers/calendar/CalendarProvider2;->appendAccountToSelection(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 2946
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/providers/calendar/CalendarProvider2;->deleteMatchingCalendars(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)I

    move-result v4

    goto/16 :goto_0

    .line 2951
    :pswitch_10
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    const-string v5, "Cannot delete that URL"

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2953
    :pswitch_11
    const-string v4, "ChipCalendars"

    move-object/from16 v0, p1

    move-object v1, v4

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v19

    .restart local v19       #result:I
    move/from16 v4, v19

    .line 2954
    goto/16 :goto_0

    .line 2957
    .end local v19           #result:I
    :pswitch_12
    new-instance v21, Ljava/lang/StringBuilder;

    const-string v4, "_id="

    move-object/from16 v0, v21

    move-object v1, v4

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_5 .. :try_end_5} :catch_0

    .line 2958
    .end local v20           #selectionSb:Ljava/lang/StringBuilder;
    .restart local v21       #selectionSb:Ljava/lang/StringBuilder;
    :try_start_6
    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    .end local p2
    check-cast p2, Ljava/lang/String;

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2959
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_12

    .line 2960
    const-string v4, " AND ("

    move-object/from16 v0, v21

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2961
    move-object/from16 v0, v21

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2962
    const/16 v4, 0x29

    move-object/from16 v0, v21

    move v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2964
    :cond_12
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_6 .. :try_end_6} :catch_1

    move-result-object p3

    move-object/from16 v20, v21

    .line 2967
    .end local v21           #selectionSb:Ljava/lang/StringBuilder;
    .restart local v20       #selectionSb:Ljava/lang/StringBuilder;
    :pswitch_13
    :try_start_7
    const-string v4, "ConferenceCallInfo"

    move-object/from16 v0, p1

    move-object v1, v4

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_7
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_7 .. :try_end_7} :catch_0

    move-result v19

    .restart local v19       #result:I
    move/from16 v4, v19

    .line 2968
    goto/16 :goto_0

    .line 2973
    .end local v19           #result:I
    .end local v20           #selectionSb:Ljava/lang/StringBuilder;
    .restart local v21       #selectionSb:Ljava/lang/StringBuilder;
    :catch_1
    move-exception v4

    move-object/from16 v17, v4

    move-object/from16 v20, v21

    .end local v21           #selectionSb:Ljava/lang/StringBuilder;
    .restart local v20       #selectionSb:Ljava/lang/StringBuilder;
    goto/16 :goto_1

    .line 2805
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_10
        :pswitch_d
        :pswitch_f
        :pswitch_e
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_0
        :pswitch_10
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_10
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_10
        :pswitch_11
        :pswitch_0
        :pswitch_13
        :pswitch_12
    .end packed-switch
.end method

.method protected doProcessEventRawTimes(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "db"
    .parameter "localTimezone"
    .parameter "timeZoneDatabaseVersion"

    .prologue
    .line 579
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 581
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/CalendarProvider2;->updateEventsStartEndFromEventRawTimesLocked(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 582
    invoke-direct {p0, p3}, Lcom/android/providers/calendar/CalendarProvider2;->updateTimezoneDatabaseVersion(Ljava/lang/String;)V

    .line 583
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarProvider2;->mCalendarCache:Lcom/android/providers/calendar/CalendarCache;

    invoke-virtual {v0, p2}, Lcom/android/providers/calendar/CalendarCache;->writeTimezoneInstances(Ljava/lang/String;)V

    .line 584
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/CalendarProvider2;->regenerateInstancesTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 586
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 588
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 590
    return-void

    .line 588
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method protected doUpdateTimezoneDependentFields(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .parameter "db"

    .prologue
    .line 559
    iget-object v2, p0, Lcom/android/providers/calendar/CalendarProvider2;->mCalendarCache:Lcom/android/providers/calendar/CalendarCache;

    invoke-virtual {v2}, Lcom/android/providers/calendar/CalendarCache;->readTimezoneType()Ljava/lang/String;

    move-result-object v1

    .line 561
    .local v1, timezoneType:Ljava/lang/String;
    const-string v2, "home"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 576
    :cond_0
    :goto_0
    return-void

    .line 565
    :cond_1
    invoke-virtual {p0}, Lcom/android/providers/calendar/CalendarProvider2;->isSameTimezoneDatabaseVersion()Z

    move-result v2

    if-nez v2, :cond_2

    .line 566
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    .line 567
    .local v0, localTimezone:Ljava/lang/String;
    invoke-static {}, Landroid/util/TimeUtils;->getTimeZoneDatabaseVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v0, v2}, Lcom/android/providers/calendar/CalendarProvider2;->doProcessEventRawTimes(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    .end local v0           #localTimezone:Ljava/lang/String;
    :cond_2
    invoke-direct {p0}, Lcom/android/providers/calendar/CalendarProvider2;->isLocalSameAsInstancesTimezone()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 574
    invoke-direct {p0}, Lcom/android/providers/calendar/CalendarProvider2;->rescheduleMissedAlarms()V

    goto :goto_0
.end method

.method protected getDatabaseHelper(Landroid/content/Context;)Lcom/android/providers/calendar/CalendarDatabaseHelper;
    .locals 3
    .parameter "context"

    .prologue
    .line 441
    invoke-static {p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/android/providers/calendar/CalendarDatabaseHelper;

    move-result-object v0

    .line 443
    .local v0, dbHelper:Lcom/android/providers/calendar/CalendarDatabaseHelper;
    if-eqz v0, :cond_1

    .line 444
    sget-object v1, Lcom/android/providers/calendar/CalendarProvider2;->sInitLock:Ljava/lang/Object;

    monitor-enter v1

    .line 445
    :try_start_0
    sget-boolean v2, Lcom/android/providers/calendar/CalendarProvider2;->sInitialized:Z

    if-nez v2, :cond_0

    .line 446
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/providers/calendar/CalendarProvider2;->sInitialized:Z

    .line 447
    invoke-direct {p0, p1, v0}, Lcom/android/providers/calendar/CalendarProvider2;->init(Landroid/content/Context;Lcom/android/providers/calendar/CalendarDatabaseHelper;)V

    .line 449
    :cond_0
    monitor-exit v1

    .line 452
    :cond_1
    return-object v0

    .line 449
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method protected getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 4

    .prologue
    const-string v3, "CalendarProvider2"

    .line 473
    iget-object v2, p0, Lcom/android/providers/calendar/CalendarProvider2;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2}, Lcom/android/providers/calendar/CalendarProvider2;->getDatabaseHelper(Landroid/content/Context;)Lcom/android/providers/calendar/CalendarDatabaseHelper;

    move-result-object v1

    .line 474
    .local v1, dbHelper:Lcom/android/providers/calendar/CalendarDatabaseHelper;
    if-nez v1, :cond_0

    .line 475
    const-string v2, "CalendarProvider2"

    const-string v2, "no db helper instance"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    const/4 v2, 0x0

    .line 484
    :goto_0
    return-object v2

    .line 479
    :cond_0
    invoke-virtual {v1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 480
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    if-nez v0, :cond_1

    .line 481
    const-string v2, "CalendarProvider2"

    const-string v2, "no db instance"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move-object v2, v0

    .line 484
    goto :goto_0
.end method

.method protected getTimezoneDatabaseVersion()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const-string v3, "CalendarProvider2"

    .line 675
    iget-object v1, p0, Lcom/android/providers/calendar/CalendarProvider2;->mCalendarCache:Lcom/android/providers/calendar/CalendarCache;

    invoke-virtual {v1}, Lcom/android/providers/calendar/CalendarCache;->readTimezoneDatabaseVersion()Ljava/lang/String;

    move-result-object v0

    .line 676
    .local v0, timezoneDatabaseVersion:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 677
    const-string v1, ""

    .line 682
    :goto_0
    return-object v1

    .line 679
    :cond_0
    const-string v1, "CalendarProvider2"

    const/4 v1, 0x4

    invoke-static {v3, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 680
    const-string v1, "CalendarProvider2"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "timezoneDatabaseVersion = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move-object v1, v0

    .line 682
    goto :goto_0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 4
    .parameter "url"

    .prologue
    .line 1735
    sget-object v1, Lcom/android/providers/calendar/CalendarProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 1736
    .local v0, match:I
    packed-switch v0, :pswitch_data_0

    .line 1768
    :pswitch_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown URL "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1738
    :pswitch_1
    const-string v1, "vnd.android.cursor.dir/event"

    .line 1766
    :goto_0
    return-object v1

    .line 1740
    :pswitch_2
    const-string v1, "vnd.android.cursor.item/event"

    goto :goto_0

    .line 1742
    :pswitch_3
    const-string v1, "vnd.android.cursor.dir/reminder"

    goto :goto_0

    .line 1744
    :pswitch_4
    const-string v1, "vnd.android.cursor.item/reminder"

    goto :goto_0

    .line 1746
    :pswitch_5
    const-string v1, "vnd.android.cursor.dir/calendar-alert"

    goto :goto_0

    .line 1748
    :pswitch_6
    const-string v1, "vnd.android.cursor.dir/calendar-alert-by-instance"

    goto :goto_0

    .line 1750
    :pswitch_7
    const-string v1, "vnd.android.cursor.item/calendar-alert"

    goto :goto_0

    .line 1754
    :pswitch_8
    const-string v1, "vnd.android.cursor.dir/event-instance"

    goto :goto_0

    .line 1756
    :pswitch_9
    const-string v1, "time/epoch"

    goto :goto_0

    .line 1758
    :pswitch_a
    const-string v1, "vnd.android.cursor.dir/property"

    goto :goto_0

    .line 1760
    :pswitch_b
    const-string v1, "vnd.android.cursor.dir/chipcalendars"

    goto :goto_0

    .line 1762
    :pswitch_c
    const-string v1, "vnd.android.cursor.dir/chipselected"

    goto :goto_0

    .line 1764
    :pswitch_d
    const-string v1, "vnd.android.cursor.dir/conference-call-info"

    goto :goto_0

    .line 1766
    :pswitch_e
    const-string v1, "vnd.android.cursor.item/conference-call-info"

    goto :goto_0

    .line 1736
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_7
        :pswitch_6
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method

.method protected getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 4

    .prologue
    const-string v3, "CalendarProvider2"

    .line 457
    iget-object v2, p0, Lcom/android/providers/calendar/CalendarProvider2;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2}, Lcom/android/providers/calendar/CalendarProvider2;->getDatabaseHelper(Landroid/content/Context;)Lcom/android/providers/calendar/CalendarDatabaseHelper;

    move-result-object v1

    .line 458
    .local v1, dbHelper:Lcom/android/providers/calendar/CalendarDatabaseHelper;
    if-nez v1, :cond_0

    .line 459
    const-string v2, "CalendarProvider2"

    const-string v2, "no db helper instance"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    const/4 v2, 0x0

    .line 468
    :goto_0
    return-object v2

    .line 463
    :cond_0
    invoke-virtual {v1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 464
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    if-nez v0, :cond_1

    .line 465
    const-string v2, "CalendarProvider2"

    const-string v2, "no db instance"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move-object v2, v0

    .line 468
    goto :goto_0
.end method

.method protected insertInTransaction(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 30
    .parameter "db"
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 1913
    const-string v5, "CalendarProvider2"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1914
    const-string v5, "CalendarProvider2"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "insertInTransaction: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1917
    :cond_0
    if-nez p1, :cond_1

    const/4 v5, 0x0

    .line 2142
    :goto_0
    return-object v5

    .line 1919
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/CalendarProvider2;->mContext:Landroid/content/Context;

    move-object v5, v0

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/providers/calendar/CalendarProvider2;->getDatabaseHelper(Landroid/content/Context;)Lcom/android/providers/calendar/CalendarDatabaseHelper;

    move-result-object v16

    .line 1920
    .local v16, dbHelper:Lcom/android/providers/calendar/CalendarDatabaseHelper;
    if-nez v16, :cond_2

    const/4 v5, 0x0

    goto :goto_0

    .line 1922
    :cond_2
    const-string v5, "caller_is_syncadapter"

    const/4 v6, 0x0

    move-object/from16 v0, p2

    move-object v1, v5

    move v2, v6

    invoke-static {v0, v1, v2}, Lcom/android/providers/calendar/CalendarProvider2;->readBooleanQueryParameter(Landroid/net/Uri;Ljava/lang/String;Z)Z

    move-result v15

    .line 1925
    .local v15, callerIsSyncAdapter:Z
    const-string v5, "moto_visibility"

    const/4 v6, 0x1

    move-object/from16 v0, p2

    move-object v1, v5

    move v2, v6

    invoke-static {v0, v1, v2}, Lcom/android/providers/calendar/CalendarProvider2;->readBooleanQueryParameter(Landroid/net/Uri;Ljava/lang/String;Z)Z

    move-result v22

    .line 1928
    .local v22, kMotoVisibilityFlag:Z
    sget-object v5, Lcom/android/providers/calendar/CalendarProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v23

    .line 1929
    .local v23, match:I
    const-wide/16 v7, 0x0

    .line 1932
    .local v7, id:J
    packed-switch v23, :pswitch_data_0

    .line 2132
    :pswitch_0
    :try_start_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unknown URL "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2140
    :catch_0
    move-exception v5

    move-object/from16 v17, v5

    .line 2141
    .local v17, e:Landroid/database/sqlite/SQLiteFullException;
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/calendar/CalendarProvider2;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/motorola/blur/util/os/StorageUtil;->sendStorageFullIntent(Landroid/content/Context;)V

    .line 2142
    const/4 v5, 0x0

    goto :goto_0

    .line 1934
    .end local v17           #e:Landroid/database/sqlite/SQLiteFullException;
    :pswitch_1
    :try_start_1
    invoke-virtual/range {v16 .. v16}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->getSyncState()Lcom/android/internal/content/SyncStateContentProviderHelper;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/content/SyncStateContentProviderHelper;->insert(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)J

    move-result-wide v7

    .line 2135
    :cond_3
    :goto_1
    const-wide/16 v9, 0x0

    cmp-long v5, v7, v9

    if-gez v5, :cond_1b

    .line 2136
    const/4 v5, 0x0

    goto :goto_0

    .line 1937
    :pswitch_2
    if-nez v15, :cond_6

    .line 1938
    const-string v5, "_sync_dirty"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, p3

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1939
    const-string v5, "description"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "description_dirty"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 1941
    const-string v5, "description_dirty"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, p3

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1943
    :cond_4
    const-string v5, "exrule"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string v5, "exdate"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    :cond_5
    const-string v5, "exceptions_dirty"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 1945
    const-string v5, "exceptions_dirty"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, p3

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1949
    :cond_6
    const-string v5, "dtstart"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 1950
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "DTSTART field missing from event"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1953
    :cond_7
    new-instance v6, Landroid/content/ContentValues;

    move-object v0, v6

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 1954
    .local v6, updatedValues:Landroid/content/ContentValues;
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-direct {v0, v1}, Lcom/android/providers/calendar/CalendarProvider2;->validateEventData(Landroid/content/ContentValues;)V

    .line 1956
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-direct {v0, v1}, Lcom/android/providers/calendar/CalendarProvider2;->updateLastDate(Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v6

    .line 1957
    if-nez v6, :cond_8

    .line 1958
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Could not insert event."

    .end local v6           #updatedValues:Landroid/content/ContentValues;
    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1961
    .restart local v6       #updatedValues:Landroid/content/ContentValues;
    :cond_8
    const/16 v25, 0x0

    .line 1962
    .local v25, owner:Ljava/lang/String;
    const-string v5, "calendar_id"

    invoke-virtual {v6, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    const-string v5, "organizer"

    invoke-virtual {v6, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 1964
    const-string v5, "calendar_id"

    invoke-virtual {v6, v5}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    move-object/from16 v0, p0

    move-wide v1, v9

    invoke-direct {v0, v1, v2}, Lcom/android/providers/calendar/CalendarProvider2;->getOwner(J)Ljava/lang/String;

    move-result-object v25

    .line 1969
    if-eqz v25, :cond_9

    .line 1970
    const-string v5, "organizer"

    move-object v0, v6

    move-object v1, v5

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1973
    :cond_9
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lcom/android/providers/calendar/CalendarProvider2;->fixAllDayTime(Landroid/net/Uri;Landroid/content/ContentValues;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 1974
    const-string v5, "CalendarProvider2"

    const/4 v9, 0x5

    invoke-static {v5, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 1975
    const-string v5, "CalendarProvider2"

    const-string v9, "insertInTransaction: allDay is true but sec, min, hour were not 0."

    invoke-static {v5, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1983
    :cond_a
    const-string v5, "dtstamp"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_b

    .line 1984
    const-string v5, "dtstamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v6, v5, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1985
    :cond_b
    const-string v5, "uid"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_c

    .line 1986
    const-string v5, "uid"

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v5, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1988
    :cond_c
    const-string v5, "eventStatus"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_d

    .line 1989
    const-string v5, "eventStatus"

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v5, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1991
    :cond_d
    move-object/from16 v0, v16

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->eventsInsert(Landroid/content/ContentValues;)J

    move-result-wide v7

    .line 1992
    const-wide/16 v9, -0x1

    cmp-long v5, v7, v9

    if-eqz v5, :cond_3

    .line 1993
    move-object/from16 v0, p0

    move-wide v1, v7

    move-object v3, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/calendar/CalendarProvider2;->updateEventRawTimesLocked(JLandroid/content/ContentValues;)V

    .line 1994
    const/4 v9, 0x1

    move-object/from16 v5, p0

    move-object/from16 v10, p1

    invoke-direct/range {v5 .. v10}, Lcom/android/providers/calendar/CalendarProvider2;->updateInstancesLocked(Landroid/content/ContentValues;JZLandroid/database/sqlite/SQLiteDatabase;)V

    .line 1998
    const-string v5, "selfAttendeeStatus"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 2000
    const-string v5, "selfAttendeeStatus"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v27

    .line 2001
    .local v27, status:Ljava/lang/Integer;
    if-eqz v27, :cond_f

    .line 2002
    if-nez v25, :cond_e

    .line 2003
    const-string v5, "calendar_id"

    invoke-virtual {v6, v5}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    move-object/from16 v0, p0

    move-wide v1, v9

    invoke-direct {v0, v1, v2}, Lcom/android/providers/calendar/CalendarProvider2;->getOwner(J)Ljava/lang/String;

    move-result-object v25

    .line 2005
    :cond_e
    const-string v5, "calendar_id"

    invoke-virtual {v6, v5}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    move-object/from16 v0, p0

    move-wide v1, v9

    invoke-direct {v0, v1, v2}, Lcom/android/providers/calendar/CalendarProvider2;->getSyncType(J)I

    move-result v29

    .line 2006
    .local v29, syncType:I
    if-nez v29, :cond_f

    .line 2007
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move-object/from16 v0, p0

    move-wide v1, v7

    move v3, v5

    move-object/from16 v4, v25

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/providers/calendar/CalendarProvider2;->createAttendeeEntry(JILjava/lang/String;)V

    .line 2013
    .end local v27           #status:Ljava/lang/Integer;
    .end local v29           #syncType:I
    :cond_f
    const-string v5, "eventTimezone"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_10

    if-nez v15, :cond_10

    .line 2014
    const-string v5, "eventTimezone"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 2016
    .local v24, originalTimezone:Ljava/lang/String;
    new-instance v21, Landroid/content/ContentValues;

    invoke-direct/range {v21 .. v21}, Landroid/content/ContentValues;-><init>()V

    .line 2017
    .local v21, expropsValues:Landroid/content/ContentValues;
    const-string v5, "event_id"

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .end local v6           #updatedValues:Landroid/content/ContentValues;
    move-object/from16 v0, v21

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2018
    const-string v5, "name"

    const-string v6, "CalendarSyncAdapter#originalTimezone"

    move-object/from16 v0, v21

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2020
    const-string v5, "value"

    move-object/from16 v0, v21

    move-object v1, v5

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2023
    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->extendedPropertiesInsert(Landroid/content/ContentValues;)J

    move-result-wide v19

    .line 2024
    .local v19, exPropId:J
    const-wide/16 v9, -0x1

    cmp-long v5, v19, v9

    if-nez v5, :cond_11

    .line 2025
    const-string v5, "CalendarProvider2"

    const/4 v6, 0x6

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 2026
    const-string v5, "CalendarProvider2"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cannot add the original Timezone in the ExtendedProperties table for Event: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2043
    .end local v19           #exPropId:J
    .end local v21           #expropsValues:Landroid/content/ContentValues;
    .end local v24           #originalTimezone:Ljava/lang/String;
    :cond_10
    :goto_2
    move-object/from16 v0, p0

    move-wide v1, v7

    invoke-direct {v0, v1, v2}, Lcom/android/providers/calendar/CalendarProvider2;->triggerAppWidgetUpdate(J)V

    goto/16 :goto_1

    .line 2031
    .restart local v19       #exPropId:J
    .restart local v21       #expropsValues:Landroid/content/ContentValues;
    .restart local v24       #originalTimezone:Ljava/lang/String;
    :cond_11
    new-instance v18, Landroid/content/ContentValues;

    invoke-direct/range {v18 .. v18}, Landroid/content/ContentValues;-><init>()V

    .line 2032
    .local v18, eventValues:Landroid/content/ContentValues;
    const-string v5, "hasExtendedProperties"

    const-string v6, "1"

    move-object/from16 v0, v18

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2033
    const-string v5, "Events"

    const-string v6, "_id=?"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    move-object/from16 v0, p1

    move-object v1, v5

    move-object/from16 v2, v18

    move-object v3, v6

    move-object v4, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v26

    .line 2035
    .local v26, result:I
    if-gtz v26, :cond_10

    .line 2036
    const-string v5, "CalendarProvider2"

    const/4 v6, 0x6

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 2037
    const-string v5, "CalendarProvider2"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cannot update hasExtendedProperties column for Event: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 2047
    .end local v18           #eventValues:Landroid/content/ContentValues;
    .end local v19           #exPropId:J
    .end local v21           #expropsValues:Landroid/content/ContentValues;
    .end local v24           #originalTimezone:Ljava/lang/String;
    .end local v25           #owner:Ljava/lang/String;
    .end local v26           #result:I
    :pswitch_3
    const-string v5, "moto_visibility"

    invoke-static/range {v22 .. v22}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    move-object/from16 v0, p3

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2048
    const-string v5, "sync_events"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v28

    .line 2049
    .local v28, syncEvents:Ljava/lang/Integer;
    if-eqz v28, :cond_12

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_12

    .line 2050
    const-string v5, "_sync_account"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 2051
    .local v12, accountName:Ljava/lang/String;
    const-string v5, "_sync_account_type"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 2053
    .local v13, accountType:Ljava/lang/String;
    new-instance v11, Landroid/accounts/Account;

    invoke-direct {v11, v12, v13}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2054
    .local v11, account:Landroid/accounts/Account;
    const-string v5, "url"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 2055
    .local v14, calendarUrl:Ljava/lang/String;
    const/4 v5, 0x0

    move-object/from16 v0, v16

    move-object v1, v11

    move v2, v5

    move-object v3, v14

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->scheduleSync(Landroid/accounts/Account;ZLjava/lang/String;)V

    .line 2058
    .end local v11           #account:Landroid/accounts/Account;
    .end local v12           #accountName:Ljava/lang/String;
    .end local v13           #accountType:Ljava/lang/String;
    .end local v14           #calendarUrl:Ljava/lang/String;
    :cond_12
    const-string v5, "conference_call_enabled"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 2059
    const-string v5, "conference_call_enabled"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 2061
    :cond_13
    const-string v5, "conference_call_enabled"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, p3

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2063
    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->calendarsInsert(Landroid/content/ContentValues;)J

    move-result-wide v7

    .line 2064
    goto/16 :goto_1

    .line 2066
    .end local v28           #syncEvents:Ljava/lang/Integer;
    :pswitch_4
    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->chipCalendarsInserter(Landroid/content/ContentValues;)J

    move-result-wide v7

    .line 2067
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "content://calendar/chipcalendars/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    goto/16 :goto_0

    .line 2070
    :pswitch_5
    const-string v5, "event_id"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_14

    .line 2071
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Attendees values must contain an event_id"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2074
    :cond_14
    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->attendeesInsert(Landroid/content/ContentValues;)J

    move-result-wide v7

    .line 2075
    if-nez v15, :cond_15

    .line 2076
    const-string v5, "event_id"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/providers/calendar/CalendarProvider2;->setEventDirty(Landroid/database/sqlite/SQLiteDatabase;I)V

    .line 2080
    :cond_15
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/providers/calendar/CalendarProvider2;->updateEventAttendeeStatus(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)V

    goto/16 :goto_1

    .line 2083
    :pswitch_6
    const-string v5, "event_id"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_16

    .line 2084
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Reminders values must contain an event_id"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2087
    :cond_16
    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->remindersInsert(Landroid/content/ContentValues;)J

    move-result-wide v7

    .line 2088
    if-nez v15, :cond_17

    .line 2089
    const-string v5, "event_id"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/providers/calendar/CalendarProvider2;->setEventDirty(Landroid/database/sqlite/SQLiteDatabase;I)V

    .line 2093
    :cond_17
    const-string v5, "CalendarProvider2"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 2094
    const-string v5, "CalendarProvider2"

    const-string v6, "insertInternal() changing reminder"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2096
    :cond_18
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/providers/calendar/CalendarProvider2;->scheduleNextAlarm(Z)V

    goto/16 :goto_1

    .line 2099
    :pswitch_7
    const-string v5, "event_id"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_19

    .line 2100
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "CalendarAlerts values must contain an event_id"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2103
    :cond_19
    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->calendarAlertsInsert(Landroid/content/ContentValues;)J

    move-result-wide v7

    .line 2106
    goto/16 :goto_1

    .line 2108
    :pswitch_8
    const-string v5, "event_id"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1a

    .line 2109
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "ExtendedProperties values must contain an event_id"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2112
    :cond_1a
    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->extendedPropertiesInsert(Landroid/content/ContentValues;)J

    move-result-wide v7

    .line 2113
    if-nez v15, :cond_3

    .line 2114
    const-string v5, "event_id"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/providers/calendar/CalendarProvider2;->setEventDirty(Landroid/database/sqlite/SQLiteDatabase;I)V

    goto/16 :goto_1

    .line 2127
    :pswitch_9
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cannot insert into that URL: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2129
    :pswitch_a
    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->confCallInfoInserter(Landroid/content/ContentValues;)J

    move-result-wide v7

    .line 2130
    goto/16 :goto_1

    .line 2139
    :cond_1b
    move-object/from16 v0, p2

    move-wide v1, v7

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v5

    goto/16 :goto_0

    .line 1932
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_3
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_9
        :pswitch_8
        :pswitch_9
        :pswitch_7
        :pswitch_9
        :pswitch_0
        :pswitch_9
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_4
        :pswitch_0
        :pswitch_a
        :pswitch_9
    .end packed-switch
.end method

.method protected isSameTimezoneDatabaseVersion()Z
    .locals 2

    .prologue
    .line 666
    iget-object v1, p0, Lcom/android/providers/calendar/CalendarProvider2;->mCalendarCache:Lcom/android/providers/calendar/CalendarCache;

    invoke-virtual {v1}, Lcom/android/providers/calendar/CalendarCache;->readTimezoneDatabaseVersion()Ljava/lang/String;

    move-result-object v0

    .line 667
    .local v0, timezoneDatabaseVersion:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 668
    const/4 v1, 0x0

    .line 670
    :goto_0
    return v1

    :cond_0
    invoke-static {}, Landroid/util/TimeUtils;->getTimeZoneDatabaseVersion()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    goto :goto_0
.end method

.method protected notifyChange()V
    .locals 4

    .prologue
    .line 751
    invoke-virtual {p0}, Lcom/android/providers/calendar/CalendarProvider2;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Calendar;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 753
    return-void
.end method

.method public onAccountsUpdated([Landroid/accounts/Account;)V
    .locals 3
    .parameter "accounts"

    .prologue
    .line 4219
    iget-object v2, p0, Lcom/android/providers/calendar/CalendarProvider2;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2}, Lcom/android/providers/calendar/CalendarProvider2;->getDatabaseHelper(Landroid/content/Context;)Lcom/android/providers/calendar/CalendarDatabaseHelper;

    move-result-object v1

    .line 4220
    .local v1, dbHelper:Lcom/android/providers/calendar/CalendarDatabaseHelper;
    if-nez v1, :cond_1

    .line 4226
    :cond_0
    :goto_0
    return-void

    .line 4222
    :cond_1
    invoke-virtual {v1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 4223
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    if-eqz v0, :cond_0

    .line 4225
    invoke-virtual {v1, v0, p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->doAccountsUpdate(Landroid/database/sqlite/SQLiteDatabase;[Landroid/accounts/Account;)V

    goto :goto_0
.end method

.method public onCreate()Z
    .locals 1

    .prologue
    .line 489
    invoke-super {p0}, Lcom/android/providers/calendar/SQLiteContentProvider;->onCreate()Z

    .line 490
    invoke-virtual {p0}, Lcom/android/providers/calendar/CalendarProvider2;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/calendar/CalendarProvider2;->mContext:Landroid/content/Context;

    .line 494
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 35
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 758
    const-string v3, "CalendarProvider2"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 759
    const-string v3, "CalendarProvider2"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "query uri - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/CalendarProvider2;->mContext:Landroid/content/Context;

    move-object v3, v0

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-virtual {v0, v1}, Lcom/android/providers/calendar/CalendarProvider2;->getDatabaseHelper(Landroid/content/Context;)Lcom/android/providers/calendar/CalendarDatabaseHelper;

    move-result-object v32

    .line 763
    .local v32, dbHelper:Lcom/android/providers/calendar/CalendarDatabaseHelper;
    if-nez v32, :cond_1

    const/4 v3, 0x0

    .line 956
    .end local p1
    .end local p5
    :goto_0
    return-object v3

    .line 765
    .restart local p1
    .restart local p5
    :cond_1
    invoke-virtual/range {v32 .. v32}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 766
    .local v4, db:Landroid/database/sqlite/SQLiteDatabase;
    if-nez v4, :cond_2

    const/4 v3, 0x0

    goto :goto_0

    .line 768
    :cond_2
    new-instance v5, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v5}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 769
    .local v5, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    const/16 v30, 0x0

    .line 770
    .local v30, groupBy:Ljava/lang/String;
    const/16 v31, 0x0

    .line 773
    .local v31, limit:Ljava/lang/String;
    const-string v3, "moto_visibility"

    const/4 v6, 0x1

    move-object/from16 v0, p1

    move-object v1, v3

    move v2, v6

    invoke-static {v0, v1, v2}, Lcom/android/providers/calendar/CalendarProvider2;->readBooleanQueryParameter(Landroid/net/Uri;Ljava/lang/String;Z)Z

    move-result v17

    .line 776
    .local v17, kMotoVisibilityFlag:Z
    sget-object v3, Lcom/android/providers/calendar/CalendarProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    move-object v0, v3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v33

    .line 777
    .local v33, match:I
    packed-switch v33, :pswitch_data_0

    .line 952
    :pswitch_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    .end local v4           #db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown URL "

    .end local v5           #qb:Landroid/database/sqlite/SQLiteQueryBuilder;
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

    .line 779
    .restart local v4       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v5       #qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    :pswitch_1
    invoke-virtual/range {v32 .. v32}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->getSyncState()Lcom/android/internal/content/SyncStateContentProviderHelper;

    move-result-object v3

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    invoke-virtual/range {v3 .. v8}, Lcom/android/internal/content/SyncStateContentProviderHelper;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .end local v5           #qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    move-result-object v3

    goto :goto_0

    .line 783
    .restart local v5       #qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    :pswitch_2
    const-string v3, "view_events"

    invoke-virtual {v5, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 784
    sget-object v3, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 785
    move-object/from16 v0, p0

    move-object v1, v5

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/providers/calendar/CalendarProvider2;->appendAccountFromParameter(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;)V

    .line 786
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " AND moto_visibility = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v17, :cond_3

    const/4 v6, 0x1

    :goto_1
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .end local p1
    :goto_2
    move-object/from16 v23, p0

    move-object/from16 v24, v4

    move-object/from16 v25, v5

    move-object/from16 v26, p2

    move-object/from16 v27, p3

    move-object/from16 v28, p4

    move-object/from16 v29, p5

    .line 956
    invoke-direct/range {v23 .. v31}, Lcom/android/providers/calendar/CalendarProvider2;->query(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteQueryBuilder;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    goto/16 :goto_0

    .line 786
    .restart local p1
    :cond_3
    const/4 v6, 0x0

    goto :goto_1

    .line 789
    :pswitch_3
    const-string v3, "view_events"

    invoke-virtual {v5, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 790
    sget-object v3, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 791
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v6, 0x1

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/providers/calendar/CalendarProvider2;->insertSelectionArg([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    .line 792
    const-string v3, "_id=?"

    invoke-virtual {v5, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 793
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " AND moto_visibility = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v17, :cond_4

    const/4 v6, 0x1

    :goto_3
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_4
    const/4 v6, 0x0

    goto :goto_3

    .line 797
    .restart local p1
    :pswitch_4
    const-string v3, "view_events"

    invoke-virtual {v5, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 798
    sget-object v3, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 799
    move-object/from16 v0, p0

    move-object v1, v5

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/providers/calendar/CalendarProvider2;->appendAccountFromParameter(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;)V

    .line 800
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " AND moto_visibility = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v17, :cond_5

    const/4 v6, 0x1

    :goto_4
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_5
    const/4 v6, 0x0

    goto :goto_4

    .line 803
    :pswitch_5
    const-string v3, "view_events"

    invoke-virtual {v5, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 804
    sget-object v3, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 805
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v6, 0x1

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/providers/calendar/CalendarProvider2;->insertSelectionArg([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    .line 806
    const-string v3, "_id=?"

    invoke-virtual {v5, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 807
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " AND moto_visibility = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v17, :cond_6

    const/4 v6, 0x1

    :goto_5
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_6
    const/4 v6, 0x0

    goto :goto_5

    .line 811
    .restart local p1
    :pswitch_6
    const-string v3, "Calendars"

    invoke-virtual {v5, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 812
    move-object/from16 v0, p0

    move-object v1, v5

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/providers/calendar/CalendarProvider2;->appendAccountFromParameter(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;)V

    .line 813
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " AND moto_visibility = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v17, :cond_7

    const/4 v6, 0x1

    :goto_6
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_7
    const/4 v6, 0x0

    goto :goto_6

    .line 816
    :pswitch_7
    const-string v3, "Calendars"

    invoke-virtual {v5, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 817
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v6, 0x1

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/providers/calendar/CalendarProvider2;->insertSelectionArg([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    .line 818
    const-string v3, "_id=?"

    invoke-virtual {v5, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 819
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " AND moto_visibility = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v17, :cond_8

    const/4 v6, 0x1

    :goto_7
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_8
    const/4 v6, 0x0

    goto :goto_7

    .line 826
    .restart local p1
    :pswitch_8
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v6, 0x2

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v6

    .line 832
    .local v6, begin:J
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v8, 0x3

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v8

    .line 837
    .local v8, end:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/CalendarProvider2;->mCalendarCache:Lcom/android/providers/calendar/CalendarCache;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/providers/calendar/CalendarCache;->readTimezoneInstances()Ljava/lang/String;

    move-result-object v15

    .line 838
    .local v15, instancesTimezone:Ljava/lang/String;
    const/16 v3, 0x10

    move/from16 v0, v33

    move v1, v3

    if-ne v0, v1, :cond_9

    const/4 v3, 0x1

    move v13, v3

    :goto_8
    const/4 v14, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/android/providers/calendar/CalendarProvider2;->isHomeTimezone()Z

    move-result v16

    move-object/from16 v3, p0

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p5

    invoke-direct/range {v3 .. v17}, Lcom/android/providers/calendar/CalendarProvider2;->handleInstanceQuery(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteQueryBuilder;JJ[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZZ)Landroid/database/Cursor;

    move-result-object v3

    goto/16 :goto_0

    .line 827
    .end local v6           #begin:J
    .end local v8           #end:J
    .end local v15           #instancesTimezone:Ljava/lang/String;
    :catch_0
    move-exception v3

    move-object/from16 v34, v3

    .line 828
    .local v34, nfe:Ljava/lang/NumberFormatException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    .end local v4           #db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot parse begin "

    .end local v5           #qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x2

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 833
    .end local v34           #nfe:Ljava/lang/NumberFormatException;
    .restart local v4       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v5       #qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    .restart local v6       #begin:J
    .restart local p0
    :catch_1
    move-exception v3

    move-object/from16 v34, v3

    .line 834
    .restart local v34       #nfe:Ljava/lang/NumberFormatException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    .end local v4           #db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot parse end "

    .end local v5           #qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x3

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .end local v6           #begin:J
    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 838
    .end local v34           #nfe:Ljava/lang/NumberFormatException;
    .restart local v4       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v5       #qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    .restart local v6       #begin:J
    .restart local v8       #end:J
    .restart local v15       #instancesTimezone:Ljava/lang/String;
    .restart local p0
    :cond_9
    const/4 v3, 0x0

    move v13, v3

    goto :goto_8

    .line 847
    .end local v6           #begin:J
    .end local v8           #end:J
    .end local v15           #instancesTimezone:Ljava/lang/String;
    :pswitch_9
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v6, 0x2

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    .end local p5
    check-cast p5, Ljava/lang/String;

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v21

    .line 853
    .local v21, startDay:I
    :try_start_3
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v6, 0x3

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    move-result v22

    .line 858
    .local v22, endDay:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/CalendarProvider2;->mCalendarCache:Lcom/android/providers/calendar/CalendarCache;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/providers/calendar/CalendarCache;->readTimezoneInstances()Ljava/lang/String;

    move-result-object v15

    .line 859
    .restart local v15       #instancesTimezone:Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/android/providers/calendar/CalendarProvider2;->isHomeTimezone()Z

    move-result v26

    move-object/from16 v18, p0

    move-object/from16 v19, v4

    move-object/from16 v20, v5

    move-object/from16 v23, p2

    move-object/from16 v24, p3

    move-object/from16 v25, v15

    move/from16 v27, v17

    invoke-direct/range {v18 .. v27}, Lcom/android/providers/calendar/CalendarProvider2;->handleEventDayQuery(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteQueryBuilder;II[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Landroid/database/Cursor;

    move-result-object v3

    goto/16 :goto_0

    .line 848
    .end local v15           #instancesTimezone:Ljava/lang/String;
    .end local v21           #startDay:I
    .end local v22           #endDay:I
    :catch_2
    move-exception v3

    move-object/from16 v34, v3

    .line 849
    .restart local v34       #nfe:Ljava/lang/NumberFormatException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    .end local v4           #db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot parse start day "

    .end local v5           #qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x2

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 854
    .end local v34           #nfe:Ljava/lang/NumberFormatException;
    .restart local v4       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v5       #qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    .restart local v21       #startDay:I
    .restart local p0
    :catch_3
    move-exception v3

    move-object/from16 v34, v3

    .line 855
    .restart local v34       #nfe:Ljava/lang/NumberFormatException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    .end local v4           #db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot parse end day "

    .end local v5           #qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x3

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 863
    .end local v21           #startDay:I
    .end local v34           #nfe:Ljava/lang/NumberFormatException;
    .restart local v4       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v5       #qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    .restart local p0
    .restart local p5
    :pswitch_a
    const-string v3, "Attendees, Events"

    invoke-virtual {v5, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 864
    sget-object v3, Lcom/android/providers/calendar/CalendarProvider2;->sAttendeesProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 865
    const-string v3, "Events._id=Attendees.event_id"

    invoke-virtual {v5, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 866
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " AND moto_visibility = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v17, :cond_a

    const/4 v6, 0x1

    :goto_9
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_a
    const/4 v6, 0x0

    goto :goto_9

    .line 869
    :pswitch_b
    const-string v3, "Attendees, Events"

    invoke-virtual {v5, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 870
    sget-object v3, Lcom/android/providers/calendar/CalendarProvider2;->sAttendeesProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 871
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v6, 0x1

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/providers/calendar/CalendarProvider2;->insertSelectionArg([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    .line 872
    const-string v3, "Attendees._id=?  AND Events._id=Attendees.event_id"

    invoke-virtual {v5, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 873
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " AND moto_visibility = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v17, :cond_b

    const/4 v6, 0x1

    :goto_a
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_b
    const/4 v6, 0x0

    goto :goto_a

    .line 876
    .restart local p1
    :pswitch_c
    const-string v3, "Reminders"

    invoke-virtual {v5, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 877
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Reminders.moto_visibility = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v17, :cond_c

    const/4 v6, 0x1

    :goto_b
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_c
    const/4 v6, 0x0

    goto :goto_b

    .line 880
    :pswitch_d
    const-string v3, "Reminders, Events"

    invoke-virtual {v5, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 881
    sget-object v3, Lcom/android/providers/calendar/CalendarProvider2;->sRemindersProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 882
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object v2, v3

    invoke-direct {v0, v1, v2}, Lcom/android/providers/calendar/CalendarProvider2;->insertSelectionArg([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    .line 883
    const-string v3, "Reminders._id=? AND Events._id=Reminders.event_id"

    invoke-virtual {v5, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 884
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " AND Reminders.moto_visibility = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v17, :cond_d

    const/4 v6, 0x1

    :goto_c
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_d
    const/4 v6, 0x0

    goto :goto_c

    .line 887
    :pswitch_e
    const-string v3, "CalendarAlerts, view_events"

    invoke-virtual {v5, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 888
    sget-object v3, Lcom/android/providers/calendar/CalendarProvider2;->sCalendarAlertsProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 889
    const-string v3, "view_events._id=CalendarAlerts.event_id"

    invoke-virtual {v5, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 891
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " AND moto_visibility = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v17, :cond_e

    const/4 v6, 0x1

    :goto_d
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_e
    const/4 v6, 0x0

    goto :goto_d

    .line 894
    :pswitch_f
    const-string v3, "CalendarAlerts, view_events"

    invoke-virtual {v5, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 895
    sget-object v3, Lcom/android/providers/calendar/CalendarProvider2;->sCalendarAlertsProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 896
    const-string v3, "view_events._id=CalendarAlerts.event_id"

    invoke-virtual {v5, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 898
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " AND moto_visibility = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v17, :cond_f

    const/4 v6, 0x1

    :goto_e
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 899
    const-string v30, "event_id,begin"

    .line 900
    goto/16 :goto_2

    .line 898
    :cond_f
    const/4 v6, 0x0

    goto :goto_e

    .line 902
    :pswitch_10
    const-string v3, "CalendarAlerts, view_events"

    invoke-virtual {v5, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 903
    sget-object v3, Lcom/android/providers/calendar/CalendarProvider2;->sCalendarAlertsProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 904
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object v2, v3

    invoke-direct {v0, v1, v2}, Lcom/android/providers/calendar/CalendarProvider2;->insertSelectionArg([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    .line 905
    const-string v3, "view_events._id=CalendarAlerts.event_id AND CalendarAlerts._id=?"

    invoke-virtual {v5, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 907
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " AND moto_visibility = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v17, :cond_10

    const/4 v6, 0x1

    :goto_f
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_10
    const/4 v6, 0x0

    goto :goto_f

    .line 910
    :pswitch_11
    const-string v3, "ExtendedProperties"

    invoke-virtual {v5, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 911
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ExtendedProperties.moto_visibility = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v17, :cond_11

    const/4 v6, 0x1

    :goto_10
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_11
    const/4 v6, 0x0

    goto :goto_10

    .line 914
    :pswitch_12
    const-string v3, "ExtendedProperties"

    invoke-virtual {v5, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 915
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v6, 0x1

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/providers/calendar/CalendarProvider2;->insertSelectionArg([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    .line 916
    const-string v3, "ExtendedProperties._id=?"

    invoke-virtual {v5, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 917
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " AND ExtendedProperties.moto_visibility = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v17, :cond_12

    const/4 v6, 0x1

    :goto_11
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_12
    const/4 v6, 0x0

    goto :goto_11

    .line 920
    .restart local p1
    :pswitch_13
    const-string v3, "CalendarCache"

    invoke-virtual {v5, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 921
    sget-object v3, Lcom/android/providers/calendar/CalendarProvider2;->sCalendarCacheProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    goto/16 :goto_2

    .line 924
    :pswitch_14
    const-string v3, "ChipCalendars"

    invoke-virtual {v5, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 928
    :pswitch_15
    :try_start_4
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v6, 0x1

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_4

    move-result-wide v6

    .line 934
    .restart local v6       #begin:J
    :try_start_5
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v8, 0x2

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_5

    move-result-wide v8

    .line 939
    .restart local v8       #end:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/CalendarProvider2;->mCalendarCache:Lcom/android/providers/calendar/CalendarCache;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/providers/calendar/CalendarCache;->readTimezoneInstances()Ljava/lang/String;

    move-result-object v15

    .line 940
    .restart local v15       #instancesTimezone:Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/android/providers/calendar/CalendarProvider2;->isHomeTimezone()Z

    move-result v14

    move-object/from16 v3, p0

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p5

    move-object v13, v15

    invoke-direct/range {v3 .. v14}, Lcom/android/providers/calendar/CalendarProvider2;->handleChipInstanceQuery(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteQueryBuilder;JJ[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/database/Cursor;

    move-result-object v3

    goto/16 :goto_0

    .line 929
    .end local v6           #begin:J
    .end local v8           #end:J
    .end local v15           #instancesTimezone:Ljava/lang/String;
    :catch_4
    move-exception v3

    move-object/from16 v34, v3

    .line 930
    .restart local v34       #nfe:Ljava/lang/NumberFormatException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    .end local v4           #db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot parse begin "

    .end local v5           #qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 935
    .end local v34           #nfe:Ljava/lang/NumberFormatException;
    .restart local v4       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v5       #qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    .restart local v6       #begin:J
    .restart local p0
    :catch_5
    move-exception v3

    move-object/from16 v34, v3

    .line 936
    .restart local v34       #nfe:Ljava/lang/NumberFormatException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    .end local v4           #db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot parse end "

    .end local v5           #qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x2

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .end local v6           #begin:J
    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 944
    .end local v34           #nfe:Ljava/lang/NumberFormatException;
    .restart local v4       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v5       #qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    .restart local p0
    :pswitch_16
    const-string v3, "ConferenceCallInfo"

    invoke-virtual {v5, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 947
    :pswitch_17
    const-string v3, "ConferenceCallInfo"

    invoke-virtual {v5, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 948
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v6, 0x1

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/providers/calendar/CalendarProvider2;->insertSelectionArg([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    .line 949
    const-string v3, "_id=?"

    invoke-virtual {v5, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 777
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_8
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_11
        :pswitch_12
        :pswitch_e
        :pswitch_10
        :pswitch_f
        :pswitch_8
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
    .end packed-switch
.end method

.method scheduleNextAlarm(Z)V
    .locals 3
    .parameter "removeAlarms"

    .prologue
    const/4 v2, 0x1

    .line 3696
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarProvider2;->mAlarmLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3697
    :try_start_0
    sget-object v1, Lcom/android/providers/calendar/CalendarProvider2;->mAlarmScheduler:Lcom/android/providers/calendar/CalendarProvider2$AlarmScheduler;

    if-nez v1, :cond_0

    .line 3698
    new-instance v1, Lcom/android/providers/calendar/CalendarProvider2$AlarmScheduler;

    invoke-direct {v1, p0, p1}, Lcom/android/providers/calendar/CalendarProvider2$AlarmScheduler;-><init>(Lcom/android/providers/calendar/CalendarProvider2;Z)V

    sput-object v1, Lcom/android/providers/calendar/CalendarProvider2;->mAlarmScheduler:Lcom/android/providers/calendar/CalendarProvider2$AlarmScheduler;

    .line 3699
    sget-object v1, Lcom/android/providers/calendar/CalendarProvider2;->mAlarmScheduler:Lcom/android/providers/calendar/CalendarProvider2$AlarmScheduler;

    invoke-virtual {v1}, Lcom/android/providers/calendar/CalendarProvider2$AlarmScheduler;->start()V

    .line 3706
    :goto_0
    monitor-exit v0

    .line 3707
    return-void

    .line 3701
    :cond_0
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/providers/calendar/CalendarProvider2;->mRerunAlarmScheduler:Z

    .line 3704
    sget-boolean v1, Lcom/android/providers/calendar/CalendarProvider2;->mRemoveAlarmsOnRerun:Z

    if-nez v1, :cond_1

    if-eqz p1, :cond_2

    :cond_1
    move v1, v2

    :goto_1
    sput-boolean v1, Lcom/android/providers/calendar/CalendarProvider2;->mRemoveAlarmsOnRerun:Z

    goto :goto_0

    .line 3706
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 3704
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method scheduleNextAlarmCheck(J)V
    .locals 10
    .parameter "triggerTime"

    .prologue
    const/4 v9, 0x0

    const-string v8, "CalendarProvider2"

    .line 3663
    invoke-direct {p0}, Lcom/android/providers/calendar/CalendarProvider2;->getAlarmManager()Landroid/app/AlarmManager;

    move-result-object v2

    .line 3664
    .local v2, manager:Landroid/app/AlarmManager;
    if-nez v2, :cond_1

    .line 3665
    const-string v6, "CalendarProvider2"

    const/4 v6, 0x6

    invoke-static {v8, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 3666
    const-string v6, "CalendarProvider2"

    const-string v6, "scheduleNextAlarmCheck() cannot get AlarmManager"

    invoke-static {v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3690
    :cond_0
    :goto_0
    return-void

    .line 3670
    :cond_1
    invoke-virtual {p0}, Lcom/android/providers/calendar/CalendarProvider2;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 3671
    .local v0, context:Landroid/content/Context;
    new-instance v1, Landroid/content/Intent;

    const-string v6, "com.android.providers.calendar.SCHEDULE_ALARM"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3672
    .local v1, intent:Landroid/content/Intent;
    const-class v6, Lcom/android/providers/calendar/CalendarReceiver;

    invoke-virtual {v1, v0, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 3673
    const/high16 v6, 0x2000

    invoke-static {v0, v9, v1, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 3675
    .local v3, pending:Landroid/app/PendingIntent;
    if-eqz v3, :cond_2

    .line 3677
    invoke-virtual {v2, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 3679
    :cond_2
    const/high16 v6, 0x1000

    invoke-static {v0, v9, v1, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 3682
    const-string v6, "CalendarProvider2"

    const/4 v6, 0x3

    invoke-static {v8, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 3683
    new-instance v4, Landroid/text/format/Time;

    invoke-direct {v4}, Landroid/text/format/Time;-><init>()V

    .line 3684
    .local v4, time:Landroid/text/format/Time;
    invoke-virtual {v4, p1, p2}, Landroid/text/format/Time;->set(J)V

    .line 3685
    const-string v6, " %a, %b %d, %Y %I:%M%P"

    invoke-virtual {v4, v6}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3686
    .local v5, timeStr:Ljava/lang/String;
    const-string v6, "CalendarProvider2"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "scheduleNextAlarmCheck at: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3689
    .end local v4           #time:Landroid/text/format/Time;
    .end local v5           #timeStr:Ljava/lang/String;
    :cond_3
    invoke-virtual {v2, v9, p1, p2, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method protected updateInTransaction(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 34
    .parameter "db"
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 3176
    const-string v5, "CalendarProvider2"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3177
    const-string v5, "CalendarProvider2"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateInTransaction: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3180
    :cond_0
    if-nez p1, :cond_1

    const/4 v5, 0x0

    .line 3521
    .end local p2
    :goto_0
    return v5

    .line 3182
    .restart local p2
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/CalendarProvider2;->mContext:Landroid/content/Context;

    move-object v5, v0

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/providers/calendar/CalendarProvider2;->getDatabaseHelper(Landroid/content/Context;)Lcom/android/providers/calendar/CalendarDatabaseHelper;

    move-result-object v19

    .line 3183
    .local v19, dbHelper:Lcom/android/providers/calendar/CalendarDatabaseHelper;
    if-nez v19, :cond_2

    const/4 v5, 0x0

    goto :goto_0

    .line 3185
    :cond_2
    const/16 v18, 0x0

    .line 3187
    .local v18, count:I
    sget-object v5, Lcom/android/providers/calendar/CalendarProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v23

    .line 3189
    .local v23, match:I
    const-string v5, "caller_is_syncadapter"

    const/4 v6, 0x0

    move-object/from16 v0, p2

    move-object v1, v5

    move v2, v6

    invoke-static {v0, v1, v2}, Lcom/android/providers/calendar/CalendarProvider2;->readBooleanQueryParameter(Landroid/net/Uri;Ljava/lang/String;Z)Z

    move-result v17

    .line 3197
    .local v17, callerIsSyncAdapter:Z
    packed-switch v23, :pswitch_data_0

    .line 3517
    :pswitch_0
    :try_start_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown URL "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3519
    .end local p2
    :catch_0
    move-exception v5

    move-object/from16 v20, v5

    .line 3520
    .local v20, e:Landroid/database/sqlite/SQLiteFullException;
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/calendar/CalendarProvider2;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/motorola/blur/util/os/StorageUtil;->sendStorageFullIntent(Landroid/content/Context;)V

    .line 3521
    const/4 v5, 0x0

    goto :goto_0

    .line 3199
    .end local v20           #e:Landroid/database/sqlite/SQLiteFullException;
    .restart local p2
    :pswitch_1
    :try_start_1
    invoke-virtual/range {v19 .. v19}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->getSyncState()Lcom/android/internal/content/SyncStateContentProviderHelper;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2}, Lcom/android/providers/calendar/CalendarProvider2;->appendAccountToSelection(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v0, v5

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object v3, v6

    move-object/from16 v4, p5

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/content/SyncStateContentProviderHelper;->update(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    goto :goto_0

    .line 3203
    :pswitch_2
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2}, Lcom/android/providers/calendar/CalendarProvider2;->appendAccountToSelection(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 3204
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id=?"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez p4, :cond_3

    const-string v6, ""

    :goto_1
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    .line 3207
    .local v28, selectionWithId:Ljava/lang/String;
    invoke-static/range {p2 .. p2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/providers/calendar/CalendarProvider2;->insertSelectionArg([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p5

    .line 3209
    invoke-virtual/range {v19 .. v19}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->getSyncState()Lcom/android/internal/content/SyncStateContentProviderHelper;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, v28

    move-object/from16 v4, p5

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/content/SyncStateContentProviderHelper;->update(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    goto/16 :goto_0

    .line 3204
    .end local v28           #selectionWithId:Ljava/lang/String;
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " AND ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 3214
    :pswitch_3
    if-eqz p4, :cond_4

    .line 3215
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Selection not permitted for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 3217
    :cond_4
    invoke-static/range {p2 .. p2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v7

    .line 3218
    .local v7, id:J
    const-string v5, "sync_events"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v30

    .line 3219
    .local v30, syncEvents:Ljava/lang/Integer;
    if-eqz v30, :cond_5

    .line 3220
    invoke-virtual/range {v30 .. v30}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_7

    const/4 v5, 0x1

    :goto_2
    move-object/from16 v0, p0

    move-wide v1, v7

    move v3, v5

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/calendar/CalendarProvider2;->modifyCalendarSubscription(JZ)V

    .line 3223
    :cond_5
    const-string v5, "Calendars"

    const-string v6, "_id=?"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    .end local v7           #id:J
    aput-object v7, v9, v10

    move-object/from16 v0, p1

    move-object v1, v5

    move-object/from16 v2, p3

    move-object v3, v6

    move-object v4, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v25

    .line 3227
    .local v25, result:I
    const-string v5, "selected"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v26

    .line 3228
    .local v26, selected:Ljava/lang/Integer;
    if-eqz v26, :cond_6

    .line 3229
    const-wide/16 v9, -0x1

    move-object/from16 v0, p0

    move-wide v1, v9

    invoke-direct {v0, v1, v2}, Lcom/android/providers/calendar/CalendarProvider2;->triggerAppWidgetUpdate(J)V

    :cond_6
    move/from16 v5, v25

    .line 3232
    goto/16 :goto_0

    .line 3220
    .end local v25           #result:I
    .end local v26           #selected:Ljava/lang/Integer;
    .restart local v7       #id:J
    :cond_7
    const/4 v5, 0x0

    goto :goto_2

    .line 3237
    .end local v7           #id:J
    .end local v30           #syncEvents:Ljava/lang/Integer;
    :pswitch_4
    const-wide/16 v7, 0x0

    .line 3238
    .restart local v7       #id:J
    const/4 v5, 0x2

    move/from16 v0, v23

    move v1, v5

    if-ne v0, v1, :cond_c

    .line 3239
    invoke-static/range {p2 .. p2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v7

    .line 3259
    :goto_3
    if-nez v17, :cond_b

    .line 3261
    const-string v5, "_sync_dirty"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 3262
    const-string v5, "_sync_dirty"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, p3

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3264
    :cond_8
    const-string v5, "description"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    const-string v5, "description_dirty"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 3266
    const-string v5, "description_dirty"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, p3

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3268
    :cond_9
    const-string v5, "exrule"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_a

    const-string v5, "exdate"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    :cond_a
    const-string v5, "exceptions_dirty"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_b

    .line 3270
    const-string v5, "exceptions_dirty"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, p3

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3274
    :cond_b
    const-string v5, "htmlUri"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_10

    if-nez v17, :cond_10

    .line 3275
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Updating htmlUri in Events table is not allowed."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 3240
    :cond_c
    if-eqz v17, :cond_f

    .line 3241
    if-eqz p4, :cond_d

    const-string v5, "_id="

    move-object/from16 v0, p4

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 3244
    const/4 v5, 0x4

    move-object/from16 v0, p4

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    goto/16 :goto_3

    .line 3248
    :cond_d
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/providers/calendar/CalendarProvider2;->fixAllDayTime(Landroid/net/Uri;Landroid/content/ContentValues;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 3249
    const-string v5, "CalendarProvider2"

    const/4 v6, 0x5

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 3250
    const-string v5, "CalendarProvider2"

    const-string v6, "updateInTransaction: Caller is sync adapter. allDay is true but sec, min, hour were not 0."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3254
    :cond_e
    const-string v5, "Events"

    move-object/from16 v0, p1

    move-object v1, v5

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    goto/16 :goto_0

    .line 3257
    :cond_f
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown URL "

    .end local v7           #id:J
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 3279
    .restart local v7       #id:J
    :cond_10
    new-instance v6, Landroid/content/ContentValues;

    move-object v0, v6

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 3281
    .local v6, updatedValues:Landroid/content/ContentValues;
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-direct {v0, v1}, Lcom/android/providers/calendar/CalendarProvider2;->updateLastDate(Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v6

    .line 3282
    if-nez v6, :cond_12

    .line 3283
    const-string v5, "CalendarProvider2"

    const/4 v6, 0x5

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .end local v6           #updatedValues:Landroid/content/ContentValues;
    move-result v5

    if-eqz v5, :cond_11

    .line 3284
    const-string v5, "CalendarProvider2"

    const-string v6, "Could not update event."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3286
    :cond_11
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 3290
    .restart local v6       #updatedValues:Landroid/content/ContentValues;
    :cond_12
    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v9, 0x1

    if-ne v5, v9, :cond_19

    .line 3291
    move-object/from16 v0, p2

    move-wide v1, v7

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v16

    .line 3295
    .local v16, allDayUri:Landroid/net/Uri;
    :goto_4
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lcom/android/providers/calendar/CalendarProvider2;->fixAllDayTime(Landroid/net/Uri;Landroid/content/ContentValues;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 3296
    const-string v5, "CalendarProvider2"

    const/4 v9, 0x5

    invoke-static {v5, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 3297
    const-string v5, "CalendarProvider2"

    const-string v9, "updateInTransaction: allDay is true but sec, min, hour were not 0."

    invoke-static {v5, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3302
    :cond_13
    const-string v5, "Events"

    const-string v9, "_id=?"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    move-object/from16 v0, p1

    move-object v1, v5

    move-object v2, v6

    move-object v3, v9

    move-object v4, v10

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v25

    .line 3304
    .restart local v25       #result:I
    if-lez v25, :cond_18

    .line 3305
    move-object/from16 v0, p0

    move-wide v1, v7

    move-object v3, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/calendar/CalendarProvider2;->updateEventRawTimesLocked(JLandroid/content/ContentValues;)V

    .line 3306
    const/4 v9, 0x0

    move-object/from16 v5, p0

    move-object/from16 v10, p1

    invoke-direct/range {v5 .. v10}, Lcom/android/providers/calendar/CalendarProvider2;->updateInstancesLocked(Landroid/content/ContentValues;JZLandroid/database/sqlite/SQLiteDatabase;)V

    .line 3308
    const-string v5, "dtstart"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 3311
    const-string v5, "CalendarProvider2"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .end local v6           #updatedValues:Landroid/content/ContentValues;
    move-result v5

    if-eqz v5, :cond_14

    .line 3312
    const-string v5, "CalendarProvider2"

    const-string v6, "updateInternal() changing event"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3314
    :cond_14
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/providers/calendar/CalendarProvider2;->scheduleNextAlarm(Z)V

    .line 3316
    :cond_15
    const-string v5, "selfAttendeeStatus"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_17

    .line 3319
    const-string v5, "CalendarProvider2"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 3320
    const-string v5, "CalendarProvider2"

    const-string v6, "updateInternal() changing selfAttendeeStatus event"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3322
    :cond_16
    const-string v5, "selfAttendeeStatus"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v29

    .line 3323
    .local v29, status:I
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide v2, v7

    move/from16 v4, v29

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/providers/calendar/CalendarProvider2;->updateAttendeeStatusForSelf(Landroid/database/sqlite/SQLiteDatabase;JI)I

    .line 3326
    .end local v29           #status:I
    :cond_17
    move-object/from16 v0, p0

    move-wide v1, v7

    invoke-direct {v0, v1, v2}, Lcom/android/providers/calendar/CalendarProvider2;->triggerAppWidgetUpdate(J)V

    :cond_18
    move/from16 v5, v25

    .line 3328
    goto/16 :goto_0

    .line 3293
    .end local v16           #allDayUri:Landroid/net/Uri;
    .end local v25           #result:I
    .restart local v6       #updatedValues:Landroid/content/ContentValues;
    :cond_19
    move-object/from16 v16, p2

    .restart local v16       #allDayUri:Landroid/net/Uri;
    goto/16 :goto_4

    .line 3331
    .end local v6           #updatedValues:Landroid/content/ContentValues;
    .end local v7           #id:J
    .end local v16           #allDayUri:Landroid/net/Uri;
    :pswitch_5
    if-eqz p4, :cond_1a

    .line 3332
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Selection not permitted for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 3335
    :cond_1a
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/providers/calendar/CalendarProvider2;->updateEventAttendeeStatus(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)V

    .line 3337
    if-eqz v17, :cond_1b

    .line 3338
    invoke-static/range {p2 .. p2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v7

    .line 3339
    .restart local v7       #id:J
    const-string v5, "Attendees"

    const-string v6, "_id=?"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    .end local v7           #id:J
    aput-object v7, v9, v10

    move-object/from16 v0, p1

    move-object v1, v5

    move-object/from16 v2, p3

    move-object v3, v6

    move-object v4, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    goto/16 :goto_0

    .line 3342
    :cond_1b
    const-string v11, "Attendees"

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v12, p3

    move-object/from16 v13, p2

    invoke-direct/range {v9 .. v15}, Lcom/android/providers/calendar/CalendarProvider2;->updateInTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    goto/16 :goto_0

    .line 3347
    :pswitch_6
    if-eqz p4, :cond_1c

    .line 3348
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Selection not permitted for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 3352
    :cond_1c
    invoke-static/range {p2 .. p2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v7

    .line 3353
    .restart local v7       #id:J
    const-string v5, "CalendarAlerts"

    const-string v6, "_id=?"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    .end local v7           #id:J
    aput-object v7, v9, v10

    move-object/from16 v0, p1

    move-object v1, v5

    move-object/from16 v2, p3

    move-object v3, v6

    move-object v4, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    goto/16 :goto_0

    .line 3359
    :pswitch_7
    const-string v5, "CalendarAlerts"

    move-object/from16 v0, p1

    move-object v1, v5

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    goto/16 :goto_0

    .line 3362
    :pswitch_8
    if-eqz v17, :cond_1e

    .line 3363
    const-string v5, "Reminders"

    move-object/from16 v0, p1

    move-object v1, v5

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v18

    .line 3367
    :goto_5
    if-lez v18, :cond_1d

    .line 3368
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/providers/calendar/CalendarProvider2;->scheduleNextAlarm(Z)V

    :cond_1d
    move/from16 v5, v18

    .line 3370
    goto/16 :goto_0

    .line 3365
    :cond_1e
    const-string v11, "Reminders"

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v12, p3

    move-object/from16 v13, p2

    move-object/from16 v14, p4

    move-object/from16 v15, p5

    invoke-direct/range {v9 .. v15}, Lcom/android/providers/calendar/CalendarProvider2;->updateInTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v18

    goto :goto_5

    .line 3372
    :pswitch_9
    if-eqz p4, :cond_1f

    .line 3373
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Selection not permitted for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 3375
    :cond_1f
    if-eqz v17, :cond_21

    .line 3376
    invoke-static/range {p2 .. p2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v7

    .line 3377
    .restart local v7       #id:J
    const-string v5, "Reminders"

    const-string v6, "_id=?"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    .end local v7           #id:J
    aput-object v7, v9, v10

    move-object/from16 v0, p1

    move-object v1, v5

    move-object/from16 v2, p3

    move-object v3, v6

    move-object v4, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v18

    .line 3386
    :goto_6
    const-string v5, "CalendarProvider2"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_20

    .line 3387
    const-string v5, "CalendarProvider2"

    const-string v6, "updateInternal() changing reminder"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3389
    :cond_20
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/providers/calendar/CalendarProvider2;->scheduleNextAlarm(Z)V

    move/from16 v5, v18

    .line 3390
    goto/16 :goto_0

    .line 3380
    :cond_21
    const-string v11, "Reminders"

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v12, p3

    move-object/from16 v13, p2

    invoke-direct/range {v9 .. v15}, Lcom/android/providers/calendar/CalendarProvider2;->updateInTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v18

    goto :goto_6

    .line 3393
    :pswitch_a
    if-eqz v17, :cond_22

    .line 3394
    const-string v5, "ExtendedProperties"

    move-object/from16 v0, p1

    move-object v1, v5

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v18

    :goto_7
    move/from16 v5, v18

    .line 3398
    goto/16 :goto_0

    .line 3396
    :cond_22
    const-string v11, "ExtendedProperties"

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v12, p3

    move-object/from16 v13, p2

    move-object/from16 v14, p4

    move-object/from16 v15, p5

    invoke-direct/range {v9 .. v15}, Lcom/android/providers/calendar/CalendarProvider2;->updateInTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v18

    goto :goto_7

    .line 3400
    :pswitch_b
    if-eqz p4, :cond_23

    .line 3401
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Selection not permitted for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 3403
    :cond_23
    if-eqz v17, :cond_24

    .line 3404
    invoke-static/range {p2 .. p2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v7

    .line 3405
    .restart local v7       #id:J
    const-string v5, "ExtendedProperties"

    const-string v6, "_id=?"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    .end local v7           #id:J
    aput-object v7, v9, v10

    move-object/from16 v0, p1

    move-object v1, v5

    move-object/from16 v2, p3

    move-object v3, v6

    move-object v4, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    goto/16 :goto_0

    .line 3408
    :cond_24
    const-string v11, "ExtendedProperties"

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v12, p3

    move-object/from16 v13, p2

    invoke-direct/range {v9 .. v15}, Lcom/android/providers/calendar/CalendarProvider2;->updateInTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    goto/16 :goto_0

    .line 3415
    :pswitch_c
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/providers/calendar/CalendarProvider2;->scheduleNextAlarm(Z)V

    .line 3416
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 3419
    :pswitch_d
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/providers/calendar/CalendarProvider2;->scheduleNextAlarm(Z)V

    .line 3420
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 3424
    :pswitch_e
    if-nez p4, :cond_25

    .line 3425
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Selection cannot be null for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 3427
    :cond_25
    const-string v5, "key=?"

    move-object/from16 v0, p4

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_26

    .line 3428
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Selection should be key=? for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 3431
    :cond_26
    invoke-static/range {p5 .. p5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v21

    .line 3433
    .local v21, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v5, "timezoneInstancesPrevious"

    move-object/from16 v0, v21

    move-object v1, v5

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_27

    .line 3434
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid selection key: timezoneInstancesPrevious for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 3439
    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/CalendarProvider2;->mCalendarCache:Lcom/android/providers/calendar/CalendarCache;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/providers/calendar/CalendarCache;->readTimezoneInstances()Ljava/lang/String;

    move-result-object v32

    .line 3443
    .local v32, timezoneInstancesBeforeUpdate:Ljava/lang/String;
    const-string v5, "CalendarCache"

    move-object/from16 v0, p1

    move-object v1, v5

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v25

    .line 3451
    .restart local v25       #result:I
    if-lez v25, :cond_2a

    .line 3453
    const-string v5, "timezoneType"

    move-object/from16 v0, v21

    move-object v1, v5

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2c

    .line 3454
    const-string v5, "value"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 3455
    .local v33, value:Ljava/lang/String;
    if-eqz v33, :cond_29

    .line 3457
    const-string v5, "home"

    move-object/from16 v0, v33

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2b

    .line 3458
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/CalendarProvider2;->mCalendarCache:Lcom/android/providers/calendar/CalendarCache;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/providers/calendar/CalendarCache;->readTimezoneInstancesPrevious()Ljava/lang/String;

    move-result-object v24

    .line 3460
    .local v24, previousTimezone:Ljava/lang/String;
    if-eqz v24, :cond_28

    .line 3461
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/CalendarProvider2;->mCalendarCache:Lcom/android/providers/calendar/CalendarCache;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/providers/calendar/CalendarCache;->writeTimezoneInstances(Ljava/lang/String;)V

    .line 3464
    :cond_28
    move-object/from16 v0, v32

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_29

    .line 3465
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/calendar/CalendarProvider2;->regenerateInstancesTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3492
    .end local v24           #previousTimezone:Ljava/lang/String;
    .end local v33           #value:Ljava/lang/String;
    :cond_29
    :goto_8
    const-wide/16 v9, -0x1

    move-object/from16 v0, p0

    move-wide v1, v9

    invoke-direct {v0, v1, v2}, Lcom/android/providers/calendar/CalendarProvider2;->triggerAppWidgetUpdate(J)V

    :cond_2a
    move/from16 v5, v25

    .line 3494
    goto/16 :goto_0

    .line 3469
    .restart local v33       #value:Ljava/lang/String;
    :cond_2b
    const-string v5, "auto"

    move-object/from16 v0, v33

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_29

    .line 3470
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v22

    .line 3471
    .local v22, localTimezone:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/CalendarProvider2;->mCalendarCache:Lcom/android/providers/calendar/CalendarCache;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/providers/calendar/CalendarCache;->writeTimezoneInstances(Ljava/lang/String;)V

    .line 3472
    move-object/from16 v0, v32

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_29

    .line 3473
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/calendar/CalendarProvider2;->regenerateInstancesTable(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_8

    .line 3479
    .end local v22           #localTimezone:Ljava/lang/String;
    .end local v33           #value:Ljava/lang/String;
    :cond_2c
    const-string v5, "timezoneInstances"

    move-object/from16 v0, v21

    move-object v1, v5

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_29

    .line 3481
    invoke-direct/range {p0 .. p0}, Lcom/android/providers/calendar/CalendarProvider2;->isHomeTimezone()Z

    move-result v5

    if-eqz v5, :cond_29

    .line 3482
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/CalendarProvider2;->mCalendarCache:Lcom/android/providers/calendar/CalendarCache;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/providers/calendar/CalendarCache;->readTimezoneInstances()Ljava/lang/String;

    move-result-object v31

    .line 3484
    .local v31, timezoneInstances:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/CalendarProvider2;->mCalendarCache:Lcom/android/providers/calendar/CalendarCache;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/providers/calendar/CalendarCache;->writeTimezoneInstancesPrevious(Ljava/lang/String;)V

    .line 3486
    if-eqz v32, :cond_29

    move-object/from16 v0, v32

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_29

    .line 3488
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/calendar/CalendarProvider2;->regenerateInstancesTable(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_8

    .line 3499
    .end local v21           #list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v25           #result:I
    .end local v31           #timezoneInstances:Ljava/lang/String;
    .end local v32           #timezoneInstancesBeforeUpdate:Ljava/lang/String;
    :pswitch_f
    const-string v5, "ChipCalendars"

    move-object/from16 v0, p1

    move-object v1, v5

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    goto/16 :goto_0

    .line 3503
    :pswitch_10
    new-instance v27, Ljava/lang/StringBuilder;

    const-string v5, "_id="

    move-object/from16 v0, v27

    move-object v1, v5

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3504
    .local v27, selectionSb:Ljava/lang/StringBuilder;
    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    .end local p2
    check-cast p2, Ljava/lang/String;

    move-object/from16 v0, v27

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3505
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2d

    .line 3506
    const-string v5, " AND ("

    move-object/from16 v0, v27

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3507
    move-object/from16 v0, v27

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3508
    const/16 v5, 0x29

    move-object/from16 v0, v27

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3510
    :cond_2d
    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 3513
    .end local v27           #selectionSb:Ljava/lang/StringBuilder;
    :pswitch_11
    const-string v5, "ConferenceCallInfo"

    move-object/from16 v0, p1

    move-object v1, v5

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v5

    goto/16 :goto_0

    .line 3197
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_5
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_c
        :pswitch_d
        :pswitch_0
        :pswitch_e
        :pswitch_f
        :pswitch_0
        :pswitch_11
        :pswitch_10
    .end packed-switch
.end method

.method protected updateTimezoneDependentFields()V
    .locals 2

    .prologue
    .line 503
    new-instance v0, Lcom/android/providers/calendar/CalendarProvider2$TimezoneCheckerThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/providers/calendar/CalendarProvider2$TimezoneCheckerThread;-><init>(Lcom/android/providers/calendar/CalendarProvider2;Lcom/android/providers/calendar/CalendarProvider2$1;)V

    .line 504
    .local v0, thread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 505
    return-void
.end method
