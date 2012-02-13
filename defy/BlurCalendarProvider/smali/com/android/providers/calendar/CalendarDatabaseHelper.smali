.class Lcom/android/providers/calendar/CalendarDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "CalendarDatabaseHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/calendar/CalendarDatabaseHelper$Tables;,
        Lcom/android/providers/calendar/CalendarDatabaseHelper$Views;
    }
.end annotation


# static fields
.field static final ACCOUNT_NAME:Ljava/lang/String; = "_sync_account"

.field static final ACCOUNT_TYPE:Ljava/lang/String; = "_sync_account_type"

.field private static final DATABASE_NAME:Ljava/lang/String; = "calendar.db"

.field private static final DATABASE_VERSION:I = 0x66

.field private static final DAY_IN_SECONDS:I = 0x15180

.field private static final PRE_FROYO_SYNC_STATE_VERSION:I = 0x3

.field private static final SYNC_STATE_META_TABLE:Ljava/lang/String; = "_sync_state_metadata"

.field private static final SYNC_STATE_META_VERSION_COLUMN:Ljava/lang/String; = "version"

.field private static final SYNC_STATE_TABLE:Ljava/lang/String; = "_sync_state"

.field private static final TAG:Ljava/lang/String; = "CalendarDatabaseHelper"

.field private static sSingleton:Lcom/android/providers/calendar/CalendarDatabaseHelper;


# instance fields
.field private mAttendeesInserter:Landroid/database/DatabaseUtils$InsertHelper;

.field private mCalendarAlertsInserter:Landroid/database/DatabaseUtils$InsertHelper;

.field private mCalendarsInserter:Landroid/database/DatabaseUtils$InsertHelper;

.field private mChipCalendarsInserter:Landroid/database/DatabaseUtils$InsertHelper;

.field private mConfCallInfoInserter:Landroid/database/DatabaseUtils$InsertHelper;

.field private final mContext:Landroid/content/Context;

.field private mEventsInserter:Landroid/database/DatabaseUtils$InsertHelper;

.field private mEventsRawTimesInserter:Landroid/database/DatabaseUtils$InsertHelper;

.field private mExtendedPropertiesInserter:Landroid/database/DatabaseUtils$InsertHelper;

.field private mInstancesInserter:Landroid/database/DatabaseUtils$InsertHelper;

.field private mRemindersInserter:Landroid/database/DatabaseUtils$InsertHelper;

.field private final mSyncState:Lcom/android/internal/content/SyncStateContentProviderHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x0

    sput-object v0, Lcom/android/providers/calendar/CalendarDatabaseHelper;->sSingleton:Lcom/android/providers/calendar/CalendarDatabaseHelper;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 162
    const-string v0, "calendar.db"

    const/4 v1, 0x0

    const/16 v2, 0x66

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 165
    iput-object p1, p0, Lcom/android/providers/calendar/CalendarDatabaseHelper;->mContext:Landroid/content/Context;

    .line 166
    new-instance v0, Lcom/android/internal/content/SyncStateContentProviderHelper;

    invoke-direct {v0}, Lcom/android/internal/content/SyncStateContentProviderHelper;-><init>()V

    iput-object v0, p0, Lcom/android/providers/calendar/CalendarDatabaseHelper;->mSyncState:Lcom/android/internal/content/SyncStateContentProviderHelper;

    .line 167
    return-void
.end method

.method private addMotorolaVisibilityColumn(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 1594
    const-string v0, "ALTER TABLE Calendars ADD COLUMN moto_visibility INTEGER NOT NULL DEFAULT 1;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1597
    const-string v0, "ALTER TABLE Events ADD COLUMN moto_visibility INTEGER NOT NULL DEFAULT 1;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1600
    const-string v0, "ALTER TABLE Reminders ADD COLUMN moto_visibility INTEGER NOT NULL DEFAULT 1"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1603
    const-string v0, "ALTER TABLE ExtendedProperties ADD COLUMN moto_visibility INTEGER NOT NULL DEFAULT 1;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1606
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->addMotorolaVisibilityTriggers(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1608
    return-void
.end method

.method private addMotorolaVisibilityTrigger(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "db"
    .parameter "table"
    .parameter "parentTable"
    .parameter "parentId"

    .prologue
    const-string v3, "moto_visibility"

    .line 1575
    if-eqz p3, :cond_0

    .line 1577
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CREATE TRIGGER "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_insert_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "moto_visibility"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AFTER INSERT ON "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "BEGIN "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "    UPDATE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " SET "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "moto_visibility"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " = (SELECT "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "moto_visibility"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " FROM "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " WHERE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "._id = new."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") WHERE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "._id = new._id; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "END;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1584
    .local v0, kSql:Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1586
    .end local v0           #kSql:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private addMotorolaVisibilityTriggers(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .parameter "db"

    .prologue
    const-string v3, "event_id"

    const-string v2, "Events"

    .line 1553
    const-string v0, "Events"

    const-string v0, "Calendars"

    const-string v1, "calendar_id"

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->addMotorolaVisibilityTrigger(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1556
    const-string v0, "Reminders"

    const-string v1, "Events"

    const-string v1, "event_id"

    invoke-direct {p0, p1, v0, v2, v3}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->addMotorolaVisibilityTrigger(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1559
    const-string v0, "ExtendedProperties"

    const-string v1, "Events"

    const-string v1, "event_id"

    invoke-direct {p0, p1, v0, v2, v3}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->addMotorolaVisibilityTrigger(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1561
    return-void
.end method

.method private bootstrapDB(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .parameter "db"

    .prologue
    const/4 v2, 0x0

    .line 377
    const-string v0, "CalendarDatabaseHelper"

    const-string v1, "Bootstrapping database"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarDatabaseHelper;->mSyncState:Lcom/android/internal/content/SyncStateContentProviderHelper;

    invoke-virtual {v0, p1}, Lcom/android/internal/content/SyncStateContentProviderHelper;->createDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 381
    const-string v0, "CREATE TABLE Calendars (_id INTEGER PRIMARY KEY,_sync_account TEXT,_sync_account_type TEXT,_sync_id TEXT,_sync_version TEXT,_sync_time TEXT,_sync_local_id INTEGER,_sync_dirty INTEGER,_sync_mark INTEGER,url TEXT,name TEXT,displayName TEXT,hidden INTEGER NOT NULL DEFAULT 0,color INTEGER,access_level INTEGER,selected INTEGER NOT NULL DEFAULT 1,sync_events INTEGER NOT NULL DEFAULT 0,sync_type INTEGER NOT NULL DEFAULT 0,moto_visibility INTEGER NOT NULL DEFAULT 1,location TEXT,timezone TEXT,ownerAccount TEXT, organizerCanRespond INTEGER NOT NULL DEFAULT 1,conference_call_enabled INTEGER NOT NULL DEFAULT 1);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 408
    const-string v0, "CREATE TABLE ChipCalendars (_id INTEGER PRIMARY KEY,chip_id INTEGER,chip_calendar_id INTEGER,chip_calendar_selected INTEGER NOT NULL DEFAULT 1);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 416
    const-string v0, "CREATE TRIGGER calendar_cleanup DELETE ON Calendars BEGIN DELETE FROM Events WHERE calendar_id = old._id;END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 422
    const-string v0, "CREATE TABLE Events (_id INTEGER PRIMARY KEY,_sync_account TEXT,_sync_account_type TEXT,_sync_id TEXT,_sync_version TEXT,_sync_time TEXT,_sync_local_id INTEGER,_sync_dirty INTEGER,_sync_mark INTEGER,calendar_id INTEGER NOT NULL,uid TEXT,dtstamp INTEGER,categories TEXT,htmlUri TEXT,title TEXT,eventLocation TEXT,description TEXT,description_dirty INTEGER DEFAULT 0,eventStatus INTEGER,selfAttendeeStatus INTEGER NOT NULL DEFAULT 0,commentsUri TEXT,dtstart INTEGER,dtend INTEGER,eventTimezone TEXT,duration TEXT,allDay INTEGER NOT NULL DEFAULT 0,visibility INTEGER NOT NULL DEFAULT 0,transparency INTEGER NOT NULL DEFAULT 0,hasAlarm INTEGER NOT NULL DEFAULT 0,hasExtendedProperties INTEGER NOT NULL DEFAULT 0,rrule TEXT,rdate TEXT,exrule TEXT,exdate TEXT,exceptions_dirty INTEGER DEFAULT 0,moto_visibility INTEGER NOT NULL DEFAULT 1,originalEvent TEXT,originalInstanceTime INTEGER,originalAllDay INTEGER,lastDate INTEGER,hasAttendeeData INTEGER NOT NULL DEFAULT 0,guestsCanModify INTEGER NOT NULL DEFAULT 0,guestsCanInviteOthers INTEGER NOT NULL DEFAULT 1,guestsCanSeeGuests INTEGER NOT NULL DEFAULT 1,organizer STRING,deleted INTEGER NOT NULL DEFAULT 0,dtstart2 INTEGER,dtend2 INTEGER,eventTimezone2 TEXT,syncAdapterData TEXT,UNIQUE (uid,calendar_id));"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 477
    const-string v0, "CREATE TRIGGER events_insert AFTER INSERT ON Events BEGIN UPDATE Events SET _sync_account=(SELECT _sync_account FROM Calendars WHERE Calendars._id=new.calendar_id),_sync_account_type=(SELECT _sync_account_type FROM Calendars WHERE Calendars._id=new.calendar_id) WHERE Events._id=new._id;END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 486
    const-string v0, "CREATE INDEX eventSyncAccountAndIdIndex ON Events (_sync_account_type, _sync_account, _sync_id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 490
    const-string v0, "CREATE INDEX eventsCalendarIdIndex ON Events (calendar_id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 494
    const-string v0, "CREATE TABLE EventsRawTimes (_id INTEGER PRIMARY KEY,event_id INTEGER NOT NULL,dtstart2445 TEXT,dtend2445 TEXT,originalInstanceTime2445 TEXT,lastDate2445 TEXT,UNIQUE (event_id));"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 504
    const-string v0, "CREATE TABLE Instances (_id INTEGER PRIMARY KEY,event_id INTEGER,begin INTEGER,end INTEGER,startDay INTEGER,endDay INTEGER,startMinute INTEGER,endMinute INTEGER,UNIQUE (event_id, begin, end));"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 516
    const-string v0, "CREATE INDEX instancesStartDayIndex ON Instances (startDay);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 520
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->createCalendarMetaDataTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 522
    invoke-direct {p0, p1, v2}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->createCalendarCacheTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 524
    const-string v0, "CREATE TABLE Attendees (_id INTEGER PRIMARY KEY,event_id INTEGER,attendeeName TEXT,attendeeEmail TEXT,attendeeStatus INTEGER,attendeeRelationship INTEGER,attendeeType INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 534
    const-string v0, "CREATE INDEX attendeesEventIdIndex ON Attendees (event_id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 538
    const-string v0, "CREATE TABLE Reminders (_id INTEGER PRIMARY KEY,event_id INTEGER,minutes INTEGER,method INTEGER NOT NULL DEFAULT 0, moto_visibility INTEGER NOT NULL DEFAULT 1);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 547
    const-string v0, "CREATE INDEX remindersEventIdIndex ON Reminders (event_id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 552
    const-string v0, "CREATE TABLE CalendarAlerts (_id INTEGER PRIMARY KEY,event_id INTEGER,begin INTEGER NOT NULL,end INTEGER NOT NULL,alarmTime INTEGER NOT NULL,creationTime INTEGER NOT NULL,receivedTime INTEGER NOT NULL,notifyTime INTEGER NOT NULL,state INTEGER NOT NULL,minutes INTEGER,UNIQUE (alarmTime, begin, event_id));"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 566
    const-string v0, "CREATE INDEX calendarAlertsEventIdIndex ON CalendarAlerts (event_id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 570
    const-string v0, "CREATE TABLE ExtendedProperties (_id INTEGER PRIMARY KEY,event_id INTEGER,moto_visibility INTEGER NOT NULL DEFAULT 1,name TEXT,value TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 578
    const-string v0, "CREATE INDEX extendedPropertiesEventIdIndex ON ExtendedProperties (event_id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 582
    const-string v0, "CREATE TABLE IF NOT EXISTS ConferenceCallInfo (_id INTEGER PRIMARY KEY,organizer_email TEXT NOT NULL,data_source_flag INTEGER NOT NULL DEFAULT -1,contact_data_id INTEGER DEFAULT -1,contact_phone_type INTEGER DEFAULT -1,manual_conference_number TEXT DEFAULT NULL,manual_conference_id TEXT DEFAULT NULL,associated_event_id INTEGER NOT NULL DEFAULT -1);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 584
    const-string v0, "CREATE INDEX IF NOT EXISTS confInfoOrganzierEventIdIndex ON ConferenceCallInfo (organizer_email,associated_event_id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 587
    const-string v0, "CREATE TRIGGER events_cleanup_delete DELETE ON Events BEGIN DELETE FROM Instances WHERE event_id = old._id;DELETE FROM EventsRawTimes WHERE event_id = old._id;DELETE FROM Attendees WHERE event_id = old._id;DELETE FROM Reminders WHERE event_id = old._id;DELETE FROM CalendarAlerts WHERE event_id = old._id;DELETE FROM ExtendedProperties WHERE event_id = old._id;DELETE FROM ConferenceCallInfo WHERE associated_event_id = old._id;END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 598
    invoke-static {p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->createEventsView(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 600
    const-string v0, "com.android.contacts"

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-static {v2, v0, v1}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 602
    return-void
.end method

.method public static calendarEmailAddressFromFeedUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "feed"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x5

    const-string v5, "CalendarDatabaseHelper"

    .line 1532
    const-string v2, "/"

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1533
    .local v1, pathComponents:[Ljava/lang/String;
    array-length v2, v1

    if-le v2, v3, :cond_0

    const-string v2, "feeds"

    const/4 v3, 0x4

    aget-object v3, v1, v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1535
    const/4 v2, 0x5

    :try_start_0
    aget-object v2, v1, v2

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1543
    :goto_0
    return-object v2

    .line 1536
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 1537
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    const-string v2, "CalendarDatabaseHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unable to url decode the email address in calendar "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v4

    .line 1538
    goto :goto_0

    .line 1542
    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    :cond_0
    const-string v2, "CalendarDatabaseHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unable to find the email address in calendar "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v4

    .line 1543
    goto :goto_0
.end method

.method private createCalendarCacheTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 1
    .parameter "db"
    .parameter "oldTimezoneDbVersion"

    .prologue
    .line 616
    const-string v0, "DROP TABLE IF EXISTS CalendarCache;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 619
    const-string v0, "CREATE TABLE IF NOT EXISTS CalendarCache (_id INTEGER PRIMARY KEY,key TEXT NOT NULL,value TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 625
    invoke-direct {p0, p1, p2}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->initCalendarCacheTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 626
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->updateCalendarCacheTableTo101(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 627
    return-void
.end method

.method private createCalendarMetaDataTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 605
    const-string v0, "CREATE TABLE CalendarMetaData (_id INTEGER PRIMARY KEY,localTimezone TEXT,minInstance INTEGER,maxInstance INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 611
    return-void
.end method

.method private static createEventsView(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .parameter "db"

    .prologue
    .line 1444
    const-string v1, "DROP VIEW IF EXISTS view_events;"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1445
    const-string v0, "SELECT Events._id AS _id,uid,dtstamp,categories,htmlUri,title,description,description_dirty,eventLocation,eventStatus,selfAttendeeStatus,commentsUri,dtstart,dtend,duration,eventTimezone,allDay,visibility,timezone,selected,access_level,transparency,color,hasAlarm,hasExtendedProperties,rrule,rdate,exrule,exdate,exceptions_dirty,originalEvent,originalInstanceTime,originalAllDay,lastDate,hasAttendeeData,calendar_id,guestsCanInviteOthers,guestsCanModify,guestsCanSeeGuests,organizer,deleted,Events._sync_id AS _sync_id,Events._sync_version AS _sync_version,Events._sync_dirty AS _sync_dirty,Events._sync_account AS _sync_account,Events._sync_account_type AS _sync_account_type,Events._sync_time AS _sync_time,Events._sync_local_id AS _sync_local_id,Events._sync_mark AS _sync_mark,Calendars._sync_id AS calendar_sync_id,Calendars._sync_local_id AS calendar_sync_local_id,displayName,url,ownerAccount,sync_events,Calendars.moto_visibility AS moto_visibility,sync_type FROM Events JOIN Calendars ON (Events.calendar_id=Calendars._id)"

    .line 1519
    .local v0, eventsSelect:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CREATE VIEW view_events AS "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1520
    return-void
.end method

.method private createLocalAccounts(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .parameter "db"

    .prologue
    const-string v2, "local@phone"

    const-string v2, "Phone calendar"

    const-string v2, "CalendarDatabaseHelper"

    .line 270
    const-string v2, "SELECT _id FROM Calendars WHERE _sync_account=\'local@phone\' AND sync_type=-1"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 276
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_2

    .line 277
    :cond_0
    const-string v2, "CalendarDatabaseHelper"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 278
    const-string v2, "CalendarDatabaseHelper"

    const-string v3, "------>  Created default local calendar."

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    :cond_1
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 284
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "_sync_account"

    const-string v3, "local@phone"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    const-string v2, "_sync_account_type"

    const-string v3, "com.motorola.calendar"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    const-string v2, "name"

    const-string v3, "Phone calendar"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    const-string v2, "displayName"

    const-string v3, "Phone calendar"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    const-string v2, "hidden"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 289
    const-string v2, "color"

    const v3, -0xd174a9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 290
    const-string v2, "access_level"

    const/16 v3, 0x2bc

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 291
    const-string v2, "selected"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 292
    const-string v2, "sync_events"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 293
    const-string v2, "sync_type"

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 294
    const-string v2, "location"

    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    const-string v2, "timezone"

    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    const-string v2, "organizerCanRespond"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 297
    const-string v2, "ownerAccount"

    const-string v3, "local@phone"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    invoke-virtual {p0, v1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->calendarsInsert(Landroid/content/ContentValues;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 302
    .end local v1           #values:Landroid/content/ContentValues;
    :cond_2
    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 304
    :cond_3
    return-void

    .line 302
    :catchall_0
    move-exception v2

    if-eqz v0, :cond_4

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v2
.end method

.method private dropTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 1383
    const-string v0, "DROP TABLE IF EXISTS Calendars;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1384
    const-string v0, "DROP TABLE IF EXISTS ChipCalendars;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1385
    const-string v0, "DROP TABLE IF EXISTS Events;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1386
    const-string v0, "DROP TABLE IF EXISTS EventsRawTimes;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1387
    const-string v0, "DROP TABLE IF EXISTS Instances;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1388
    const-string v0, "DROP TABLE IF EXISTS CalendarMetaData;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1389
    const-string v0, "DROP TABLE IF EXISTS CalendarCache;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1390
    const-string v0, "DROP TABLE IF EXISTS Attendees;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1391
    const-string v0, "DROP TABLE IF EXISTS Reminders;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1392
    const-string v0, "DROP TABLE IF EXISTS CalendarAlerts;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1393
    const-string v0, "DROP TABLE IF EXISTS ExtendedProperties;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1394
    const-string v0, "DROP TABLE IF EXISTS ConferenceCallInfo"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1395
    return-void
.end method

.method private static fixAllDayTime(Landroid/text/format/Time;Ljava/lang/String;Ljava/lang/Long;)Z
    .locals 3
    .parameter "time"
    .parameter "timezone"
    .parameter "timeInMillis"

    .prologue
    const/4 v2, 0x0

    .line 816
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 817
    iget v0, p0, Landroid/text/format/Time;->hour:I

    if-nez v0, :cond_0

    iget v0, p0, Landroid/text/format/Time;->minute:I

    if-nez v0, :cond_0

    iget v0, p0, Landroid/text/format/Time;->second:I

    if-eqz v0, :cond_1

    .line 818
    :cond_0
    iput v2, p0, Landroid/text/format/Time;->hour:I

    .line 819
    iput v2, p0, Landroid/text/format/Time;->minute:I

    .line 820
    iput v2, p0, Landroid/text/format/Time;->second:I

    .line 821
    const/4 v0, 0x1

    .line 823
    :goto_0
    return v0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/providers/calendar/CalendarDatabaseHelper;
    .locals 2
    .parameter "context"

    .prologue
    .line 150
    const-class v0, Lcom/android/providers/calendar/CalendarDatabaseHelper;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/providers/calendar/CalendarDatabaseHelper;->sSingleton:Lcom/android/providers/calendar/CalendarDatabaseHelper;

    if-nez v1, :cond_0

    .line 151
    new-instance v1, Lcom/android/providers/calendar/CalendarDatabaseHelper;

    invoke-direct {v1, p0}, Lcom/android/providers/calendar/CalendarDatabaseHelper;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/providers/calendar/CalendarDatabaseHelper;->sSingleton:Lcom/android/providers/calendar/CalendarDatabaseHelper;

    .line 154
    :cond_0
    sget-object v1, Lcom/android/providers/calendar/CalendarDatabaseHelper;->sSingleton:Lcom/android/providers/calendar/CalendarDatabaseHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 150
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private initCalendarCacheTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 5
    .parameter "db"
    .parameter "oldTimezoneDbVersion"

    .prologue
    const-string v4, "timezoneDatabaseVersion"

    const-string v3, "\'"

    .line 630
    if-eqz p2, :cond_0

    move-object v0, p2

    .line 634
    .local v0, timezoneDbVersion:Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "INSERT OR REPLACE INTO CalendarCache (_id, key, value) VALUES ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "timezoneDatabaseVersion"

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "timezoneDatabaseVersion"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\',"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 639
    return-void

    .line 630
    .end local v0           #timezoneDbVersion:Ljava/lang/String;
    :cond_0
    const-string v1, "2009s"

    move-object v0, v1

    goto :goto_0
.end method

.method private migrateEasRows(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 11
    .parameter "db"

    .prologue
    .line 1621
    iget-object v9, p0, Lcom/android/providers/calendar/CalendarDatabaseHelper;->mContext:Landroid/content/Context;

    const-string v10, "activesync"

    invoke-static {v9, v10}, Lcom/motorola/blur/provider/GAMSHelper;->getGAMSAccountsFromProvider(Landroid/content/Context;Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 1622
    .local v1, accounts:[Landroid/accounts/Account;
    move-object v2, v1

    .local v2, arr$:[Landroid/accounts/Account;
    array-length v7, v2

    .local v7, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v7, :cond_0

    aget-object v0, v2, v3

    .line 1623
    .local v0, account:Landroid/accounts/Account;
    iget-object v9, p0, Lcom/android/providers/calendar/CalendarDatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v9, v0}, Lcom/motorola/blur/provider/GAMSHelper;->getAccountId(Landroid/content/Context;Landroid/accounts/Account;)J

    move-result-wide v4

    .line 1624
    .local v4, kAccountId:J
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "_sync_local_id = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " AND _sync_account_type = \'com.motorola.ACTIVESYNC\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1626
    .local v6, kWhereClause:Ljava/lang/String;
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 1627
    .local v8, values:Landroid/content/ContentValues;
    const-string v9, "_sync_account"

    iget-object v10, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1628
    const-string v9, "_sync_account_type"

    iget-object v10, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1630
    const-string v9, "Calendars"

    const/4 v10, 0x0

    invoke-virtual {p1, v9, v8, v6, v10}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1622
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1634
    .end local v0           #account:Landroid/accounts/Account;
    .end local v4           #kAccountId:J
    .end local v6           #kWhereClause:Ljava/lang/String;
    .end local v8           #values:Landroid/content/ContentValues;
    :cond_0
    const-string v9, "UPDATE Events SET _sync_account = (SELECT _sync_account FROM Calendars WHERE Calendars._id = calendar_id),                   _sync_account_type = (SELECT _sync_account_type FROM Calendars WHERE Calendars._id = calendar_id) WHERE _sync_account_type = \'com.motorola.ACTIVESYNC\';"

    invoke-virtual {p1, v9}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1638
    return-void
.end method

.method private recreateMetaDataAndInstances(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 808
    const-string v0, "DROP TABLE CalendarMetaData;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 809
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->createCalendarMetaDataTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 812
    const-string v0, "DELETE FROM Instances;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 813
    return-void
.end method

.method private updateCalendarCacheTableTo101(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 8
    .parameter "db"

    .prologue
    const-string v7, "INSERT INTO CalendarCache (_id, key, value) VALUES ("

    const-string v6, ","

    const-string v5, ");"

    const-string v4, "\',"

    const-string v3, "\'"

    .line 643
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "INSERT INTO CalendarCache (_id, key, value) VALUES ("

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "timezoneType"

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "timezoneType"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\',"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "auto"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ");"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 649
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    .line 652
    .local v0, defaultTimezone:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "INSERT INTO CalendarCache (_id, key, value) VALUES ("

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "timezoneInstances"

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "timezoneInstances"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\',"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ");"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 659
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "INSERT INTO CalendarCache (_id, key, value) VALUES ("

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "timezoneInstancesPrevious"

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "timezoneInstancesPrevious"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\',"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ");"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 664
    return-void
.end method

.method private upgradeResync(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 7
    .parameter "db"

    .prologue
    .line 1247
    const-string v5, "DELETE FROM _sync_state;"

    invoke-virtual {p1, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1250
    const-string v5, "SELECT _sync_account,_sync_account_type,url FROM Calendars"

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 1253
    .local v4, cursor:Landroid/database/Cursor;
    if-eqz v4, :cond_1

    .line 1255
    :goto_0
    :try_start_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1256
    const/4 v5, 0x0

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1257
    .local v1, accountName:Ljava/lang/String;
    const/4 v5, 0x1

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1258
    .local v2, accountType:Ljava/lang/String;
    new-instance v0, Landroid/accounts/Account;

    invoke-direct {v0, v1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1259
    .local v0, account:Landroid/accounts/Account;
    const/4 v5, 0x2

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1260
    .local v3, calendarUrl:Ljava/lang/String;
    const/4 v5, 0x0

    invoke-virtual {p0, v0, v5, v3}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->scheduleSync(Landroid/accounts/Account;ZLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1263
    .end local v0           #account:Landroid/accounts/Account;
    .end local v1           #accountName:Ljava/lang/String;
    .end local v2           #accountType:Ljava/lang/String;
    .end local v3           #calendarUrl:Ljava/lang/String;
    :catchall_0
    move-exception v5

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    throw v5

    :cond_0
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 1266
    :cond_1
    return-void
.end method

.method private upgradeSyncState(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 5
    .parameter "db"

    .prologue
    const-string v4, "CalendarDatabaseHelper"

    .line 341
    const-string v2, "SELECT version FROM _sync_state_metadata"

    const/4 v3, 0x0

    invoke-static {p1, v2, v3}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v0

    .line 345
    .local v0, version:J
    const-wide/16 v2, 0x3

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 346
    const-string v2, "CalendarDatabaseHelper"

    const-string v2, "Upgrading calendar sync state table"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    const-string v2, "CREATE TEMPORARY TABLE state_backup(_sync_account TEXT, _sync_account_type TEXT, data TEXT);"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 349
    const-string v2, "INSERT INTO state_backup SELECT _sync_account, _sync_account_type, data FROM _sync_state WHERE _sync_account is not NULL and _sync_account_type is not NULL;"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 353
    const-string v2, "DROP TABLE _sync_state;"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 354
    iget-object v2, p0, Lcom/android/providers/calendar/CalendarDatabaseHelper;->mSyncState:Lcom/android/internal/content/SyncStateContentProviderHelper;

    invoke-virtual {v2, p1}, Lcom/android/internal/content/SyncStateContentProviderHelper;->onDatabaseOpened(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 355
    const-string v2, "INSERT INTO _sync_state(account_name,account_type,data) SELECT _sync_account, _sync_account_type, data from state_backup;"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 360
    const-string v2, "DROP TABLE state_backup;"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 367
    :goto_0
    return-void

    .line 365
    :cond_0
    const-string v2, "CalendarDatabaseHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "upgradeSyncState: current version is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", skipping upgrade."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private upgradeToVersion102(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 831
    const-string v0, "UPDATE Calendars SET conference_call_enabled=1"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 832
    return-void
.end method

.method private upgradeToVersion51(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .parameter "db"

    .prologue
    .line 1362
    const-string v0, "CalendarDatabaseHelper"

    const-string v1, "Upgrading DeletedEvents table"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1370
    const-string v0, "ALTER TABLE DeletedEvents ADD COLUMN calendar_id INTEGER;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1373
    const-string v0, "DROP TRIGGER IF EXISTS calendar_cleanup"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1374
    const-string v0, "CREATE TRIGGER calendar_cleanup DELETE ON Calendars BEGIN DELETE FROM Events WHERE calendar_id = old._id;DELETE FROM DeletedEvents WHERE calendar_id = old._id;END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1379
    const-string v0, "DROP TRIGGER IF EXISTS event_to_deleted"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1380
    return-void
.end method

.method private upgradeToVersion52(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 9
    .parameter "db"

    .prologue
    .line 1309
    const-string v6, "ALTER TABLE Events ADD COLUMN originalAllDay INTEGER;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1327
    const-string v6, "SELECT _id,originalEvent FROM Events WHERE originalEvent IS NOT NULL"

    const/4 v7, 0x0

    invoke-virtual {p1, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1329
    .local v1, cursor:Landroid/database/Cursor;
    if-eqz v1, :cond_3

    .line 1331
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1332
    const/4 v6, 0x0

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 1333
    .local v2, id:J
    const/4 v6, 0x1

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1336
    .local v4, originalEvent:Ljava/lang/String;
    const-string v6, "SELECT allDay FROM Events WHERE _sync_id=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v4, v7, v8

    invoke-virtual {p1, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .line 1338
    .local v5, recur:Landroid/database/Cursor;
    if-eqz v5, :cond_0

    .line 1346
    :try_start_1
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1347
    const/4 v6, 0x0

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 1348
    .local v0, allDay:I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UPDATE Events SET originalAllDay="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " WHERE _id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1352
    .end local v0           #allDay:I
    :cond_1
    :try_start_2
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1356
    .end local v2           #id:J
    .end local v4           #originalEvent:Ljava/lang/String;
    .end local v5           #recur:Landroid/database/Cursor;
    :catchall_0
    move-exception v6

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v6

    .line 1352
    .restart local v2       #id:J
    .restart local v4       #originalEvent:Ljava/lang/String;
    .restart local v5       #recur:Landroid/database/Cursor;
    :catchall_1
    move-exception v6

    :try_start_3
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1356
    .end local v2           #id:J
    .end local v4           #originalEvent:Ljava/lang/String;
    .end local v5           #recur:Landroid/database/Cursor;
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1359
    :cond_3
    return-void
.end method

.method private upgradeToVersion53(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .parameter "db"

    .prologue
    .line 1296
    const-string v0, "CalendarDatabaseHelper"

    const-string v1, "Upgrading CalendarAlerts table"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1297
    const-string v0, "ALTER TABLE CalendarAlerts ADD COLUMN creationTime INTEGER DEFAULT 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1298
    const-string v0, "ALTER TABLE CalendarAlerts ADD COLUMN receivedTime INTEGER DEFAULT 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1299
    const-string v0, "ALTER TABLE CalendarAlerts ADD COLUMN notifyTime INTEGER DEFAULT 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1300
    return-void
.end method

.method private upgradeToVersion54(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .parameter "db"

    .prologue
    .line 1290
    const-string v0, "CalendarDatabaseHelper"

    const-string v1, "adding eventSyncAccountAndIdIndex"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1291
    const-string v0, "CREATE INDEX eventSyncAccountAndIdIndex ON Events (_sync_account, _sync_id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1293
    return-void
.end method

.method private upgradeToVersion55(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .parameter "db"

    .prologue
    .line 1269
    const-string v0, "ALTER TABLE Calendars ADD COLUMN _sync_account_type TEXT;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1270
    const-string v0, "ALTER TABLE Events ADD COLUMN _sync_account_type TEXT;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1271
    const-string v0, "ALTER TABLE DeletedEvents ADD COLUMN _sync_account_type TEXT;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1272
    const-string v0, "UPDATE Calendars SET _sync_account_type=\'com.google\' WHERE _sync_account IS NOT NULL"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1275
    const-string v0, "UPDATE Events SET _sync_account_type=\'com.google\' WHERE _sync_account IS NOT NULL"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1278
    const-string v0, "UPDATE DeletedEvents SET _sync_account_type=\'com.google\' WHERE _sync_account IS NOT NULL"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1281
    const-string v0, "CalendarDatabaseHelper"

    const-string v1, "re-creating eventSyncAccountAndIdIndex"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1282
    const-string v0, "DROP INDEX eventSyncAccountAndIdIndex"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1283
    const-string v0, "CREATE INDEX eventSyncAccountAndIdIndex ON Events (_sync_account_type, _sync_account, _sync_id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1287
    return-void
.end method

.method private upgradeToVersion56(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 7
    .parameter "db"

    .prologue
    .line 1209
    const-string v4, "ALTER TABLE Calendars ADD COLUMN ownerAccount TEXT;"

    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1210
    const-string v4, "ALTER TABLE Events ADD COLUMN hasAttendeeData INTEGER;"

    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1215
    const-string v4, "UPDATE Events SET _sync_dirty=0, _sync_version=NULL, _sync_id=REPLACE(_sync_id, \'/private/full-selfattendance\', \'/private/full\'), commentsUri =REPLACE(commentsUri, \'/private/full-selfattendance\', \'/private/full\');"

    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1222
    const-string v4, "UPDATE Calendars SET url=REPLACE(url, \'/private/full-selfattendance\', \'/private/full\');"

    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1227
    const-string v4, "SELECT _id, url FROM Calendars"

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1230
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_1

    .line 1232
    :goto_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1233
    const/4 v4, 0x0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 1234
    .local v1, id:Ljava/lang/Long;
    const/4 v4, 0x1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1235
    .local v3, url:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->calendarEmailAddressFromFeedUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1236
    .local v2, owner:Ljava/lang/String;
    const-string v4, "UPDATE Calendars SET ownerAccount=? WHERE _id=?"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    const/4 v6, 0x1

    aput-object v1, v5, v6

    invoke-virtual {p1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1240
    .end local v1           #id:Ljava/lang/Long;
    .end local v2           #owner:Ljava/lang/String;
    .end local v3           #url:Ljava/lang/String;
    :catchall_0
    move-exception v4

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v4

    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1243
    :cond_1
    return-void
.end method

.method private upgradeToVersion57(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 1195
    const-string v0, "ALTER TABLE Events ADD COLUMN guestsCanModify INTEGER NOT NULL DEFAULT 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1197
    const-string v0, "ALTER TABLE Events ADD COLUMN guestsCanInviteOthers INTEGER NOT NULL DEFAULT 1;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1199
    const-string v0, "ALTER TABLE Events ADD COLUMN guestsCanSeeGuests INTEGER NOT NULL DEFAULT 1;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1201
    const-string v0, "ALTER TABLE Events ADD COLUMN organizer STRING;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1202
    const-string v0, "UPDATE Events SET organizer=(SELECT attendeeEmail FROM Attendees WHERE Attendees.event_id = Events._id AND Attendees.attendeeRelationship=2);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1206
    return-void
.end method

.method private upgradeToVersion58(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 1186
    const-string v0, "CREATE TABLE ChipCalendars (_id INTEGER PRIMARY KEY,chip_id INTEGER,chip_calendar_id INTEGER,chip_calendar_selected INTEGER NOT NULL DEFAULT 1);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1192
    return-void
.end method

.method private upgradeToVersion59(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 1173
    const-string v0, "DROP TABLE IF EXISTS BusyBits;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1174
    const-string v0, "CREATE TEMPORARY TABLE CalendarMetaData_Backup(_id,localTimezone,minInstance,maxInstance);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1176
    const-string v0, "INSERT INTO CalendarMetaData_Backup SELECT _id,localTimezone,minInstance,maxInstance FROM CalendarMetaData;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1178
    const-string v0, "DROP TABLE CalendarMetaData;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1179
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->createCalendarMetaDataTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1180
    const-string v0, "INSERT INTO CalendarMetaData SELECT _id,localTimezone,minInstance,maxInstance FROM CalendarMetaData_Backup;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1182
    const-string v0, "DROP TABLE CalendarMetaData_Backup;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1183
    return-void
.end method

.method private upgradeToVersion60(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 1132
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->upgradeSyncState(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1133
    const-string v0, "DROP TRIGGER IF EXISTS calendar_cleanup"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1134
    const-string v0, "CREATE TRIGGER calendar_cleanup DELETE ON Calendars BEGIN DELETE FROM Events WHERE calendar_id = old._id;END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1138
    const-string v0, "ALTER TABLE Events ADD COLUMN deleted INTEGER NOT NULL DEFAULT 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1139
    const-string v0, "DROP TRIGGER IF EXISTS events_insert"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1140
    const-string v0, "CREATE TRIGGER events_insert AFTER INSERT ON Events BEGIN UPDATE Events SET _sync_account=(SELECT _sync_account FROM Calendars WHERE Calendars._id=new.calendar_id),_sync_account_type=(SELECT _sync_account_type FROM Calendars WHERE Calendars._id=new.calendar_id) WHERE Events._id=new._id;END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1148
    const-string v0, "DROP TABLE IF EXISTS DeletedEvents;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1149
    const-string v0, "DROP TRIGGER IF EXISTS events_cleanup_delete"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1150
    const-string v0, "CREATE TRIGGER events_cleanup_delete DELETE ON Events BEGIN DELETE FROM Instances WHERE event_id = old._id;DELETE FROM EventsRawTimes WHERE event_id = old._id;DELETE FROM Attendees WHERE event_id = old._id;DELETE FROM Reminders WHERE event_id = old._id;DELETE FROM CalendarAlerts WHERE event_id = old._id;DELETE FROM ExtendedProperties WHERE event_id = old._id;END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1159
    const-string v0, "DROP TRIGGER IF EXISTS attendees_update"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1160
    const-string v0, "DROP TRIGGER IF EXISTS attendees_insert"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1161
    const-string v0, "DROP TRIGGER IF EXISTS attendees_delete"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1162
    const-string v0, "DROP TRIGGER IF EXISTS reminders_update"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1163
    const-string v0, "DROP TRIGGER IF EXISTS reminders_insert"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1164
    const-string v0, "DROP TRIGGER IF EXISTS reminders_delete"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1165
    const-string v0, "DROP TRIGGER IF EXISTS extended_properties_update"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1166
    const-string v0, "DROP TRIGGER IF EXISTS extended_properties_insert"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1167
    const-string v0, "DROP TRIGGER IF EXISTS extended_properties_delete"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1169
    invoke-static {p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->createEventsView(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1170
    return-void
.end method

.method private upgradeToVersion61(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 1115
    const-string v0, "DROP TABLE IF EXISTS CalendarCache;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1118
    const-string v0, "CREATE TABLE IF NOT EXISTS CalendarCache (_id INTEGER PRIMARY KEY,key TEXT NOT NULL,value TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1124
    const-string v0, "INSERT INTO CalendarCache (key, value) VALUES (\'timezoneDatabaseVersion\',\'2009s\');"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1128
    return-void
.end method

.method private upgradeToVersion62(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 20
    .parameter "db"

    .prologue
    .line 1047
    const-string v17, "ALTER TABLE Events ADD COLUMN dtstart2 INTEGER;"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1048
    const-string v17, "ALTER TABLE Events ADD COLUMN dtend2 INTEGER;"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1049
    const-string v17, "ALTER TABLE Events ADD COLUMN eventTimezone2 TEXT;"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1051
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object v4, v0

    const/16 v17, 0x0

    const-string v18, "0"

    aput-object v18, v4, v17

    .line 1053
    .local v4, allDayBit:[Ljava/lang/String;
    const-string v17, "UPDATE Events SET dtstart2=dtstart,dtend2=dtend,eventTimezone2=eventTimezone WHERE allDay=?;"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1059
    const/16 v17, 0x0

    const-string v18, "1"

    aput-object v18, v4, v17

    .line 1060
    const-string v17, "SELECT Events._id,dtstart,dtend,eventTimezone,timezone FROM Events INNER JOIN Calendars WHERE Events.calendar_id=Calendars._id AND allDay=?"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 1065
    .local v5, cursor:Landroid/database/Cursor;
    new-instance v15, Landroid/text/format/Time;

    invoke-direct {v15}, Landroid/text/format/Time;-><init>()V

    .line 1066
    .local v15, oldTime:Landroid/text/format/Time;
    new-instance v14, Landroid/text/format/Time;

    invoke-direct {v14}, Landroid/text/format/Time;-><init>()V

    .line 1068
    .local v14, newTime:Landroid/text/format/Time;
    if-eqz v5, :cond_2

    .line 1070
    const/16 v17, 0x4

    :try_start_0
    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object v13, v0

    .line 1071
    .local v13, newData:[Ljava/lang/String;
    const/16 v17, -0x1

    move-object v0, v5

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1072
    :goto_0
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v17

    if-eqz v17, :cond_1

    .line 1073
    const/16 v17, 0x0

    move-object v0, v5

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 1074
    .local v11, id:J
    const/16 v17, 0x1

    move-object v0, v5

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 1075
    .local v8, dtstart:J
    const/16 v17, 0x2

    move-object v0, v5

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 1076
    .local v6, dtend:J
    const/16 v17, 0x3

    move-object v0, v5

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1077
    .local v10, eTz:Ljava/lang/String;
    const/16 v17, 0x4

    move-object v0, v5

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 1079
    .local v16, tz:Ljava/lang/String;
    if-nez v10, :cond_0

    .line 1080
    const-string v10, "UTC"

    .line 1084
    :cond_0
    invoke-virtual {v15, v10}, Landroid/text/format/Time;->clear(Ljava/lang/String;)V

    .line 1085
    invoke-virtual {v15, v8, v9}, Landroid/text/format/Time;->set(J)V

    .line 1086
    move-object v0, v14

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->clear(Ljava/lang/String;)V

    .line 1087
    move-object v0, v15

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    move/from16 v17, v0

    move-object v0, v15

    iget v0, v0, Landroid/text/format/Time;->month:I

    move/from16 v18, v0

    move-object v0, v15

    iget v0, v0, Landroid/text/format/Time;->year:I

    move/from16 v19, v0

    move-object v0, v14

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/format/Time;->set(III)V

    .line 1088
    const/16 v17, 0x0

    move-object v0, v14

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    .line 1089
    const/16 v17, 0x0

    move-object v0, v14

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v8

    .line 1092
    invoke-virtual {v15, v10}, Landroid/text/format/Time;->clear(Ljava/lang/String;)V

    .line 1093
    invoke-virtual {v15, v6, v7}, Landroid/text/format/Time;->set(J)V

    .line 1094
    move-object v0, v14

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->clear(Ljava/lang/String;)V

    .line 1095
    move-object v0, v15

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    move/from16 v17, v0

    move-object v0, v15

    iget v0, v0, Landroid/text/format/Time;->month:I

    move/from16 v18, v0

    move-object v0, v15

    iget v0, v0, Landroid/text/format/Time;->year:I

    move/from16 v19, v0

    move-object v0, v14

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/format/Time;->set(III)V

    .line 1096
    const/16 v17, 0x0

    move-object v0, v14

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    .line 1097
    const/16 v17, 0x0

    move-object v0, v14

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v6

    .line 1099
    const/16 v17, 0x0

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v13, v17

    .line 1100
    const/16 v17, 0x1

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v13, v17

    .line 1101
    const/16 v17, 0x2

    aput-object v16, v13, v17

    .line 1102
    const/16 v17, 0x3

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v13, v17

    .line 1103
    const-string v17, "UPDATE Events SET dtstart2=?,dtend2=?,eventTimezone2=? WHERE _id=?"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object v2, v13

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 1109
    .end local v6           #dtend:J
    .end local v8           #dtstart:J
    .end local v10           #eTz:Ljava/lang/String;
    .end local v11           #id:J
    .end local v13           #newData:[Ljava/lang/String;
    .end local v16           #tz:Ljava/lang/String;
    :catchall_0
    move-exception v17

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    throw v17

    .restart local v13       #newData:[Ljava/lang/String;
    :cond_1
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 1112
    .end local v13           #newData:[Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private upgradeToVersion63(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter "db"

    .prologue
    .line 1042
    invoke-static {p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->createEventsView(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1043
    return-void
.end method

.method private upgradeToVersion64(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 1037
    const-string v0, "ALTER TABLE Events ADD COLUMN syncAdapterData TEXT;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1038
    return-void
.end method

.method private upgradeToVersion65(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter "db"

    .prologue
    .line 1032
    invoke-static {p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->createEventsView(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1033
    return-void
.end method

.method private upgradeToVersion66(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 1026
    const-string v0, "ALTER TABLE Calendars ADD COLUMN organizerCanRespond INTEGER NOT NULL DEFAULT 1;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1028
    return-void
.end method

.method static upgradeToVersion69(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 15
    .parameter "db"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 891
    const-string v0, "SELECT _id, dtstart, dtend, duration, dtstart2, dtend2, eventTimezone, eventTimezone2, rrule FROM Events WHERE allDay=?"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "1"

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 894
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_a

    .line 903
    :try_start_0
    new-instance v7, Landroid/text/format/Time;

    invoke-direct {v7}, Landroid/text/format/Time;-><init>()V

    .line 906
    .local v7, time:Landroid/text/format/Time;
    const-string v1, "UTC"

    .line 907
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 908
    const/16 v1, 0x8

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 909
    .local v1, rrule:Ljava/lang/String;
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 910
    .local v6, id:Ljava/lang/Long;
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 911
    .local v3, dtstart:Ljava/lang/Long;
    const/4 v4, 0x0

    .line 912
    .local v4, dtstart2:Ljava/lang/Long;
    const/4 v2, 0x6

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 913
    .local v8, timezone:Ljava/lang/String;
    const/4 v2, 0x7

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 914
    .local v9, timezone2:Ljava/lang/String;
    const/4 v2, 0x3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 916
    .local v5, duration:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    .end local v1           #rrule:Ljava/lang/String;
    if-eqz v1, :cond_6

    .line 919
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 920
    .local v1, dtend:Ljava/lang/Long;
    const/4 v2, 0x0

    .line 923
    .local v2, dtend2:Ljava/lang/Long;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 924
    const/4 v2, 0x4

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    .end local v2           #dtend2:Ljava/lang/Long;
    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 925
    const/4 v2, 0x5

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 928
    .restart local v2       #dtend2:Ljava/lang/Long;
    :cond_0
    const/4 v10, 0x0

    .line 929
    .local v10, update:Z
    const-string v11, "UTC"

    invoke-static {v8, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 930
    const/4 v10, 0x1

    .line 931
    const-string v8, "UTC"

    .line 934
    :cond_1
    invoke-virtual {v7, v8}, Landroid/text/format/Time;->clear(Ljava/lang/String;)V

    .line 935
    invoke-static {v7, v8, v3}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->fixAllDayTime(Landroid/text/format/Time;Ljava/lang/String;Ljava/lang/Long;)Z

    move-result v3

    .end local v3           #dtstart:Ljava/lang/Long;
    or-int/2addr v10, v3

    .line 936
    const/4 v3, 0x0

    invoke-virtual {v7, v3}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 938
    .restart local v3       #dtstart:Ljava/lang/Long;
    invoke-virtual {v7, v8}, Landroid/text/format/Time;->clear(Ljava/lang/String;)V

    .line 939
    invoke-static {v7, v8, v1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->fixAllDayTime(Landroid/text/format/Time;Ljava/lang/String;Ljava/lang/Long;)Z

    move-result v1

    .end local v1           #dtend:Ljava/lang/Long;
    or-int/2addr v10, v1

    .line 940
    const/4 v1, 0x0

    invoke-virtual {v7, v1}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 942
    .restart local v1       #dtend:Ljava/lang/Long;
    if-eqz v4, :cond_2

    .line 943
    invoke-virtual {v7, v9}, Landroid/text/format/Time;->clear(Ljava/lang/String;)V

    .line 944
    invoke-static {v7, v9, v4}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->fixAllDayTime(Landroid/text/format/Time;Ljava/lang/String;Ljava/lang/Long;)Z

    move-result v4

    .end local v4           #dtstart2:Ljava/lang/Long;
    or-int/2addr v10, v4

    .line 945
    const/4 v4, 0x0

    invoke-virtual {v7, v4}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 948
    .restart local v4       #dtstart2:Ljava/lang/Long;
    :cond_2
    if-eqz v2, :cond_3

    .line 949
    invoke-virtual {v7, v9}, Landroid/text/format/Time;->clear(Ljava/lang/String;)V

    .line 950
    invoke-static {v7, v9, v2}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->fixAllDayTime(Landroid/text/format/Time;Ljava/lang/String;Ljava/lang/Long;)Z

    move-result v2

    .end local v2           #dtend2:Ljava/lang/Long;
    or-int/2addr v10, v2

    .line 951
    const/4 v2, 0x0

    invoke-virtual {v7, v2}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 954
    .restart local v2       #dtend2:Ljava/lang/Long;
    :cond_3
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 955
    const/4 v10, 0x1

    .line 958
    :cond_4
    if-eqz v10, :cond_5

    .line 960
    const-string v11, "UPDATE Events SET dtstart=?, dtend=?, dtstart2=?, dtend2=?, duration=?, eventTimezone=?, eventTimezone2=? WHERE _id=?"

    const/16 v12, 0x8

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v3, v12, v13

    const/4 v13, 0x1

    aput-object v1, v12, v13

    const/4 v1, 0x2

    aput-object v4, v12, v1

    .end local v1           #dtend:Ljava/lang/Long;
    const/4 v1, 0x3

    aput-object v2, v12, v1

    const/4 v1, 0x4

    const/4 v2, 0x0

    aput-object v2, v12, v1

    .end local v2           #dtend2:Ljava/lang/Long;
    const/4 v1, 0x5

    aput-object v8, v12, v1

    const/4 v1, 0x6

    aput-object v9, v12, v1

    const/4 v1, 0x7

    aput-object v6, v12, v1

    invoke-virtual {p0, v11, v12}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    move-object v2, v4

    .end local v4           #dtstart2:Ljava/lang/Long;
    .local v2, dtstart2:Ljava/lang/Long;
    move-object v1, v3

    .end local v3           #dtstart:Ljava/lang/Long;
    .local v1, dtstart:Ljava/lang/Long;
    move-object v3, v5

    .end local v5           #duration:Ljava/lang/String;
    .local v3, duration:Ljava/lang/String;
    move-object v4, v8

    .end local v8           #timezone:Ljava/lang/String;
    .local v4, timezone:Ljava/lang/String;
    move v5, v10

    .line 967
    .end local v10           #update:Z
    .local v5, update:Z
    goto/16 :goto_0

    .line 971
    .end local v1           #dtstart:Ljava/lang/Long;
    .end local v2           #dtstart2:Ljava/lang/Long;
    .local v3, dtstart:Ljava/lang/Long;
    .local v4, dtstart2:Ljava/lang/Long;
    .local v5, duration:Ljava/lang/String;
    .restart local v8       #timezone:Ljava/lang/String;
    :cond_6
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 972
    const/4 v1, 0x4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 975
    .end local v4           #dtstart2:Ljava/lang/Long;
    .local v1, dtstart2:Ljava/lang/Long;
    :goto_1
    const/4 v2, 0x0

    .line 976
    .local v2, update:Z
    const-string v4, "UTC"

    invoke-static {v8, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_d

    .line 977
    const/4 v4, 0x1

    .line 978
    .end local v2           #update:Z
    .local v4, update:Z
    const-string v2, "UTC"

    .end local v8           #timezone:Ljava/lang/String;
    .local v2, timezone:Ljava/lang/String;
    move v14, v4

    .end local v4           #update:Z
    .local v14, update:Z
    move-object v4, v2

    .end local v2           #timezone:Ljava/lang/String;
    .local v4, timezone:Ljava/lang/String;
    move v2, v14

    .line 981
    .end local v14           #update:Z
    .local v2, update:Z
    :goto_2
    invoke-virtual {v7, v4}, Landroid/text/format/Time;->clear(Ljava/lang/String;)V

    .line 982
    invoke-static {v7, v4, v3}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->fixAllDayTime(Landroid/text/format/Time;Ljava/lang/String;Ljava/lang/Long;)Z

    move-result v3

    .end local v3           #dtstart:Ljava/lang/Long;
    or-int/2addr v3, v2

    .line 983
    .end local v2           #update:Z
    .local v3, update:Z
    const/4 v2, 0x0

    invoke-virtual {v7, v2}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 985
    .local v2, dtstart:Ljava/lang/Long;
    if-eqz v1, :cond_c

    .line 986
    invoke-virtual {v7, v9}, Landroid/text/format/Time;->clear(Ljava/lang/String;)V

    .line 987
    invoke-static {v7, v9, v1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->fixAllDayTime(Landroid/text/format/Time;Ljava/lang/String;Ljava/lang/Long;)Z

    move-result v1

    .end local v1           #dtstart2:Ljava/lang/Long;
    or-int/2addr v3, v1

    .line 988
    const/4 v1, 0x0

    invoke-virtual {v7, v1}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .restart local v1       #dtstart2:Ljava/lang/Long;
    move v8, v3

    .end local v3           #update:Z
    .local v8, update:Z
    move-object v3, v1

    .line 991
    .end local v1           #dtstart2:Ljava/lang/Long;
    .local v3, dtstart2:Ljava/lang/Long;
    :goto_3
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 993
    const-string v1, "P1D"

    .line 994
    .end local v5           #duration:Ljava/lang/String;
    .local v1, duration:Ljava/lang/String;
    const/4 v5, 0x1

    .line 1007
    .end local v8           #update:Z
    .local v5, update:Z
    :goto_4
    if-eqz v5, :cond_7

    .line 1009
    const-string v8, "UPDATE Events SET dtstart=?,dtend=?,dtstart2=?,dtend2=?,duration=?,eventTimezone=?, eventTimezone2=? WHERE _id=?"

    const/16 v10, 0x8

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v2, v10, v11

    const/4 v11, 0x1

    const/4 v12, 0x0

    aput-object v12, v10, v11

    const/4 v11, 0x2

    aput-object v3, v10, v11

    const/4 v11, 0x3

    const/4 v12, 0x0

    aput-object v12, v10, v11

    const/4 v11, 0x4

    aput-object v1, v10, v11

    const/4 v11, 0x5

    aput-object v4, v10, v11

    const/4 v11, 0x6

    aput-object v9, v10, v11

    const/4 v9, 0x7

    aput-object v6, v10, v9

    .end local v9           #timezone2:Ljava/lang/String;
    invoke-virtual {p0, v8, v10}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_7
    move-object v14, v3

    .end local v3           #dtstart2:Ljava/lang/Long;
    .local v14, dtstart2:Ljava/lang/Long;
    move-object v3, v1

    .end local v1           #duration:Ljava/lang/String;
    .local v3, duration:Ljava/lang/String;
    move-object v1, v2

    .end local v2           #dtstart:Ljava/lang/Long;
    .local v1, dtstart:Ljava/lang/Long;
    move-object v2, v14

    .end local v14           #dtstart2:Ljava/lang/Long;
    .local v2, dtstart2:Ljava/lang/Long;
    goto/16 :goto_0

    .line 996
    .end local v1           #dtstart:Ljava/lang/Long;
    .local v2, dtstart:Ljava/lang/Long;
    .local v3, dtstart2:Ljava/lang/Long;
    .local v5, duration:Ljava/lang/String;
    .restart local v8       #update:Z
    .restart local v9       #timezone2:Ljava/lang/String;
    :cond_8
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v1

    .line 998
    .local v1, len:I
    const/4 v10, 0x0

    invoke-virtual {v5, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x50

    if-ne v10, v11, :cond_b

    const/4 v10, 0x1

    sub-int v10, v1, v10

    invoke-virtual {v5, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x53

    if-ne v10, v11, :cond_b

    .line 1000
    const/4 v8, 0x1

    const/4 v10, 0x1

    sub-int/2addr v1, v10

    invoke-virtual {v5, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .end local v1           #len:I
    .end local v8           #update:Z
    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1001
    .local v1, seconds:I
    const v5, 0x15180

    add-int/2addr v1, v5

    const/4 v5, 0x1

    sub-int/2addr v1, v5

    const v5, 0x15180

    div-int/2addr v1, v5

    .line 1002
    .end local v5           #duration:Ljava/lang/String;
    .local v1, days:I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "P"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .end local v1           #days:I
    const-string v5, "D"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 1003
    .local v1, duration:Ljava/lang/String;
    const/4 v5, 0x1

    .local v5, update:Z
    goto :goto_4

    .line 1018
    .end local v1           #duration:Ljava/lang/String;
    .end local v2           #dtstart:Ljava/lang/Long;
    .end local v3           #dtstart2:Ljava/lang/Long;
    .end local v4           #timezone:Ljava/lang/String;
    .end local v5           #update:Z
    .end local v6           #id:Ljava/lang/Long;
    .end local v9           #timezone2:Ljava/lang/String;
    :cond_9
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1021
    .end local v7           #time:Landroid/text/format/Time;
    :cond_a
    return-void

    .line 1018
    :catchall_0
    move-exception p0

    .end local p0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw p0

    .local v1, len:I
    .restart local v2       #dtstart:Ljava/lang/Long;
    .restart local v3       #dtstart2:Ljava/lang/Long;
    .restart local v4       #timezone:Ljava/lang/String;
    .local v5, duration:Ljava/lang/String;
    .restart local v6       #id:Ljava/lang/Long;
    .restart local v7       #time:Landroid/text/format/Time;
    .restart local v8       #update:Z
    .restart local v9       #timezone2:Ljava/lang/String;
    .restart local p0
    :cond_b
    move-object v1, v5

    .end local v5           #duration:Ljava/lang/String;
    .local v1, duration:Ljava/lang/String;
    move v5, v8

    .end local v8           #update:Z
    .local v5, update:Z
    goto :goto_4

    .local v1, dtstart2:Ljava/lang/Long;
    .local v3, update:Z
    .local v5, duration:Ljava/lang/String;
    :cond_c
    move v8, v3

    .end local v3           #update:Z
    .restart local v8       #update:Z
    move-object v3, v1

    .end local v1           #dtstart2:Ljava/lang/Long;
    .local v3, dtstart2:Ljava/lang/Long;
    goto/16 :goto_3

    .end local v4           #timezone:Ljava/lang/String;
    .restart local v1       #dtstart2:Ljava/lang/Long;
    .local v2, update:Z
    .local v3, dtstart:Ljava/lang/Long;
    .local v8, timezone:Ljava/lang/String;
    :cond_d
    move-object v4, v8

    .end local v8           #timezone:Ljava/lang/String;
    .restart local v4       #timezone:Ljava/lang/String;
    goto/16 :goto_2

    .end local v1           #dtstart2:Ljava/lang/Long;
    .end local v2           #update:Z
    .local v4, dtstart2:Ljava/lang/Long;
    .restart local v8       #timezone:Ljava/lang/String;
    :cond_e
    move-object v1, v4

    .end local v4           #dtstart2:Ljava/lang/Long;
    .restart local v1       #dtstart2:Ljava/lang/Long;
    goto/16 :goto_1
.end method

.method private upgradeToVersion71(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 867
    const-string v0, "CREATE TABLE IF NOT EXISTS ConferenceCallInfo (_id INTEGER PRIMARY KEY,organizer_email TEXT NOT NULL,data_source_flag INTEGER NOT NULL DEFAULT -1,contact_data_id INTEGER DEFAULT -1,contact_phone_type INTEGER DEFAULT -1,manual_conference_number TEXT DEFAULT NULL,manual_conference_id TEXT DEFAULT NULL,associated_event_id INTEGER NOT NULL DEFAULT -1);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 868
    const-string v0, "CREATE INDEX IF NOT EXISTS confInfoOrganzierEventIdIndex ON ConferenceCallInfo (organizer_email,associated_event_id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 870
    const-string v0, "DROP TRIGGER IF EXISTS events_cleanup_delete"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 871
    const-string v0, "CREATE TRIGGER events_cleanup_delete DELETE ON Events BEGIN DELETE FROM Instances WHERE event_id = old._id;DELETE FROM EventsRawTimes WHERE event_id = old._id;DELETE FROM Attendees WHERE event_id = old._id;DELETE FROM Reminders WHERE event_id = old._id;DELETE FROM CalendarAlerts WHERE event_id = old._id;DELETE FROM ExtendedProperties WHERE event_id = old._id;DELETE FROM ConferenceCallInfo WHERE associated_event_id = old._id;END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 881
    return-void
.end method

.method private upgradeToVersion72(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 859
    const-string v0, "ALTER TABLE Calendars ADD COLUMN conference_call_enabled INTEGER NOT NULL DEFAULT 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 861
    const-string v0, "UPDATE Calendars SET conference_call_enabled=1 WHERE sync_type=0 OR sync_type=1"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 864
    return-void
.end method

.method private validateActiveSyncAccounts(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 14
    .parameter "db"

    .prologue
    const/4 v4, 0x1

    const/4 v13, 0x0

    const-string v1, "="

    const-string v1, "\', "

    const-string v1, "\' WHERE "

    .line 225
    iget-object v1, p0, Lcom/android/providers/calendar/CalendarDatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 227
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v1, "activesync"

    invoke-static {v0, v1}, Lcom/motorola/blur/provider/DeviceSetup;->getProviderId(Landroid/content/ContentResolver;Ljava/lang/String;)J

    move-result-wide v11

    .line 228
    .local v11, providerId:J
    sget-object v1, Lcom/motorola/blur/provider/DeviceSetup$Accounts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v13

    const-string v3, "email_address"

    aput-object v3, v2, v4

    const-string v3, "provider_id=?"

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {v11, v12}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v13

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 232
    .local v10, c:Landroid/database/Cursor;
    if-eqz v10, :cond_1

    .line 233
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 235
    :try_start_0
    iget-object v1, p0, Lcom/android/providers/calendar/CalendarDatabaseHelper;->mContext:Landroid/content/Context;

    const-string v2, "activesync"

    invoke-static {v1, v2}, Lcom/motorola/blur/provider/GAMSHelper;->composeGAMSAccountType(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 237
    .local v9, accountType:Ljava/lang/String;
    :goto_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 238
    const/4 v1, 0x0

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 239
    .local v6, accountId:J
    const/4 v1, 0x1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 248
    .local v8, accountName:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UPDATE Calendars SET _sync_account=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\', "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_sync_account_type"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' WHERE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_sync_local_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 254
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UPDATE Events SET _sync_account=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\', "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_sync_account_type"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' WHERE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "calendar_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " IN (SELECT "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " FROM Calendars WHERE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_sync_local_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 262
    .end local v6           #accountId:J
    .end local v8           #accountName:Ljava/lang/String;
    .end local v9           #accountType:Ljava/lang/String;
    :catchall_0
    move-exception v1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 263
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v1

    .line 260
    .restart local v9       #accountType:Ljava/lang/String;
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 262
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 263
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 266
    .end local v9           #accountType:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private verifyAccounts(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 218
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->validateActiveSyncAccounts(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 220
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarDatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->doAccountsUpdate(Landroid/database/sqlite/SQLiteDatabase;[Landroid/accounts/Account;)V

    .line 221
    return-void
.end method


# virtual methods
.method public attendeesInsert(Landroid/content/ContentValues;)J
    .locals 2
    .parameter "values"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarDatabaseHelper;->mAttendeesInserter:Landroid/database/DatabaseUtils$InsertHelper;

    invoke-virtual {v0, p1}, Landroid/database/DatabaseUtils$InsertHelper;->insert(Landroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0
.end method

.method public calendarAlertsInsert(Landroid/content/ContentValues;)J
    .locals 2
    .parameter "values"

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarDatabaseHelper;->mCalendarAlertsInserter:Landroid/database/DatabaseUtils$InsertHelper;

    invoke-virtual {v0, p1}, Landroid/database/DatabaseUtils$InsertHelper;->insert(Landroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0
.end method

.method public calendarsInsert(Landroid/content/ContentValues;)J
    .locals 2
    .parameter "values"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarDatabaseHelper;->mCalendarsInserter:Landroid/database/DatabaseUtils$InsertHelper;

    invoke-virtual {v0, p1}, Landroid/database/DatabaseUtils$InsertHelper;->insert(Landroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0
.end method

.method public chipCalendarsInserter(Landroid/content/ContentValues;)J
    .locals 2
    .parameter "values"

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarDatabaseHelper;->mChipCalendarsInserter:Landroid/database/DatabaseUtils$InsertHelper;

    invoke-virtual {v0, p1}, Landroid/database/DatabaseUtils$InsertHelper;->insert(Landroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0
.end method

.method public confCallInfoInserter(Landroid/content/ContentValues;)J
    .locals 2
    .parameter "values"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarDatabaseHelper;->mConfCallInfoInserter:Landroid/database/DatabaseUtils$InsertHelper;

    invoke-virtual {v0, p1}, Landroid/database/DatabaseUtils$InsertHelper;->insert(Landroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0
.end method

.method doAccountsUpdate(Landroid/database/sqlite/SQLiteDatabase;[Landroid/accounts/Account;)V
    .locals 13
    .parameter "db"
    .parameter "accounts"

    .prologue
    const-string v10, "CalendarDatabaseHelper"

    .line 170
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    .line 171
    .local v9, validAccounts:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/accounts/Account;>;"
    move-object v2, p2

    .local v2, arr$:[Landroid/accounts/Account;
    array-length v6, v2

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_0
    if-ge v5, v6, :cond_0

    aget-object v0, v2, v5

    .line 172
    .local v0, account:Landroid/accounts/Account;
    new-instance v10, Landroid/accounts/Account;

    iget-object v11, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v12, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {v10, v11, v12}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 171
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 175
    .end local v0           #account:Landroid/accounts/Account;
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 177
    .local v1, accountsToDelete:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/accounts/Account;>;"
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 179
    const/4 v10, 0x1

    :try_start_0
    new-array v2, v10, [Ljava/lang/String;

    .end local v2           #arr$:[Landroid/accounts/Account;
    const/4 v10, 0x0

    const-string v11, "Calendars"

    aput-object v11, v2, v10

    .local v2, arr$:[Ljava/lang/String;
    array-length v6, v2

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v6, :cond_3

    aget-object v8, v2, v5

    .line 182
    .local v8, table:Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SELECT DISTINCT _sync_account,_sync_account_type from "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " where "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "sync_type"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "<>"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, -0x1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {p1, v10, v11}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 188
    .local v3, c:Landroid/database/Cursor;
    :cond_1
    :goto_2
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 189
    const/4 v10, 0x0

    invoke-interface {v3, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_1

    const/4 v10, 0x1

    invoke-interface {v3, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_1

    .line 190
    new-instance v4, Landroid/accounts/Account;

    const/4 v10, 0x0

    invoke-interface {v3, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    invoke-interface {v3, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v4, v10, v11}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    .local v4, currAccount:Landroid/accounts/Account;
    invoke-virtual {v9, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 192
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 212
    .end local v2           #arr$:[Ljava/lang/String;
    .end local v3           #c:Landroid/database/Cursor;
    .end local v4           #currAccount:Landroid/accounts/Account;
    .end local v5           #i$:I
    .end local v8           #table:Ljava/lang/String;
    :catchall_0
    move-exception v10

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v10

    .line 196
    .restart local v2       #arr$:[Ljava/lang/String;
    .restart local v3       #c:Landroid/database/Cursor;
    .restart local v5       #i$:I
    .restart local v8       #table:Ljava/lang/String;
    :cond_2
    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 179
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 199
    .end local v3           #c:Landroid/database/Cursor;
    .end local v8           #table:Ljava/lang/String;
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    .line 200
    .restart local v0       #account:Landroid/accounts/Account;
    const-string v10, "CalendarDatabaseHelper"

    const/4 v11, 0x2

    invoke-static {v10, v11}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 201
    const-string v10, "CalendarDatabaseHelper"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "removing data for removed account "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    :cond_4
    const/4 v10, 0x2

    new-array v7, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    iget-object v11, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v11, v7, v10

    const/4 v10, 0x1

    iget-object v11, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v11, v7, v10

    .line 204
    .local v7, params:[Ljava/lang/String;
    const-string v10, "DELETE FROM Calendars WHERE _sync_account= ? AND _sync_account_type= ?"

    invoke-virtual {p1, v10, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    .line 209
    .end local v0           #account:Landroid/accounts/Account;
    .end local v7           #params:[Ljava/lang/String;
    :cond_5
    iget-object v10, p0, Lcom/android/providers/calendar/CalendarDatabaseHelper;->mSyncState:Lcom/android/internal/content/SyncStateContentProviderHelper;

    invoke-virtual {v10, p1, p2}, Lcom/android/internal/content/SyncStateContentProviderHelper;->onAccountsChanged(Landroid/database/sqlite/SQLiteDatabase;[Landroid/accounts/Account;)V

    .line 210
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 212
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 214
    return-void
.end method

.method public eventsInsert(Landroid/content/ContentValues;)J
    .locals 2
    .parameter "values"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarDatabaseHelper;->mEventsInserter:Landroid/database/DatabaseUtils$InsertHelper;

    invoke-virtual {v0, p1}, Landroid/database/DatabaseUtils$InsertHelper;->insert(Landroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0
.end method

.method public eventsRawTimesInsert(Landroid/content/ContentValues;)J
    .locals 2
    .parameter "values"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarDatabaseHelper;->mEventsRawTimesInserter:Landroid/database/DatabaseUtils$InsertHelper;

    invoke-virtual {v0, p1}, Landroid/database/DatabaseUtils$InsertHelper;->insert(Landroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0
.end method

.method public eventsRawTimesReplace(Landroid/content/ContentValues;)J
    .locals 2
    .parameter "values"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarDatabaseHelper;->mEventsRawTimesInserter:Landroid/database/DatabaseUtils$InsertHelper;

    invoke-virtual {v0, p1}, Landroid/database/DatabaseUtils$InsertHelper;->replace(Landroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0
.end method

.method public extendedPropertiesInsert(Landroid/content/ContentValues;)J
    .locals 2
    .parameter "values"

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarDatabaseHelper;->mExtendedPropertiesInserter:Landroid/database/DatabaseUtils$InsertHelper;

    invoke-virtual {v0, p1}, Landroid/database/DatabaseUtils$InsertHelper;->insert(Landroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0
.end method

.method public declared-synchronized getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 2

    .prologue
    .line 1405
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1406
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    monitor-exit p0

    return-object v0

    .line 1405
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getSyncState()Lcom/android/internal/content/SyncStateContentProviderHelper;
    .locals 1

    .prologue
    .line 1410
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarDatabaseHelper;->mSyncState:Lcom/android/internal/content/SyncStateContentProviderHelper;

    return-object v0
.end method

.method public declared-synchronized getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 2

    .prologue
    .line 1399
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1400
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    monitor-exit p0

    return-object v0

    .line 1399
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public instancesInsert(Landroid/content/ContentValues;)J
    .locals 2
    .parameter "values"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarDatabaseHelper;->mInstancesInserter:Landroid/database/DatabaseUtils$InsertHelper;

    invoke-virtual {v0, p1}, Landroid/database/DatabaseUtils$InsertHelper;->insert(Landroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0
.end method

.method public instancesReplace(Landroid/content/ContentValues;)J
    .locals 2
    .parameter "values"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarDatabaseHelper;->mInstancesInserter:Landroid/database/DatabaseUtils$InsertHelper;

    invoke-virtual {v0, p1}, Landroid/database/DatabaseUtils$InsertHelper;->replace(Landroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter "db"

    .prologue
    .line 371
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->bootstrapDB(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 372
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->addMotorolaVisibilityTriggers(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 373
    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .parameter "db"

    .prologue
    .line 309
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarDatabaseHelper;->mSyncState:Lcom/android/internal/content/SyncStateContentProviderHelper;

    invoke-virtual {v0, p1}, Lcom/android/internal/content/SyncStateContentProviderHelper;->onDatabaseOpened(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 311
    new-instance v0, Landroid/database/DatabaseUtils$InsertHelper;

    const-string v1, "Calendars"

    invoke-direct {v0, p1, v1}, Landroid/database/DatabaseUtils$InsertHelper;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/providers/calendar/CalendarDatabaseHelper;->mCalendarsInserter:Landroid/database/DatabaseUtils$InsertHelper;

    .line 312
    new-instance v0, Landroid/database/DatabaseUtils$InsertHelper;

    const-string v1, "ChipCalendars"

    invoke-direct {v0, p1, v1}, Landroid/database/DatabaseUtils$InsertHelper;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/providers/calendar/CalendarDatabaseHelper;->mChipCalendarsInserter:Landroid/database/DatabaseUtils$InsertHelper;

    .line 313
    new-instance v0, Landroid/database/DatabaseUtils$InsertHelper;

    const-string v1, "Events"

    invoke-direct {v0, p1, v1}, Landroid/database/DatabaseUtils$InsertHelper;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/providers/calendar/CalendarDatabaseHelper;->mEventsInserter:Landroid/database/DatabaseUtils$InsertHelper;

    .line 314
    new-instance v0, Landroid/database/DatabaseUtils$InsertHelper;

    const-string v1, "EventsRawTimes"

    invoke-direct {v0, p1, v1}, Landroid/database/DatabaseUtils$InsertHelper;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/providers/calendar/CalendarDatabaseHelper;->mEventsRawTimesInserter:Landroid/database/DatabaseUtils$InsertHelper;

    .line 315
    new-instance v0, Landroid/database/DatabaseUtils$InsertHelper;

    const-string v1, "Instances"

    invoke-direct {v0, p1, v1}, Landroid/database/DatabaseUtils$InsertHelper;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/providers/calendar/CalendarDatabaseHelper;->mInstancesInserter:Landroid/database/DatabaseUtils$InsertHelper;

    .line 316
    new-instance v0, Landroid/database/DatabaseUtils$InsertHelper;

    const-string v1, "Attendees"

    invoke-direct {v0, p1, v1}, Landroid/database/DatabaseUtils$InsertHelper;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/providers/calendar/CalendarDatabaseHelper;->mAttendeesInserter:Landroid/database/DatabaseUtils$InsertHelper;

    .line 317
    new-instance v0, Landroid/database/DatabaseUtils$InsertHelper;

    const-string v1, "Reminders"

    invoke-direct {v0, p1, v1}, Landroid/database/DatabaseUtils$InsertHelper;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/providers/calendar/CalendarDatabaseHelper;->mRemindersInserter:Landroid/database/DatabaseUtils$InsertHelper;

    .line 318
    new-instance v0, Landroid/database/DatabaseUtils$InsertHelper;

    const-string v1, "CalendarAlerts"

    invoke-direct {v0, p1, v1}, Landroid/database/DatabaseUtils$InsertHelper;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/providers/calendar/CalendarDatabaseHelper;->mCalendarAlertsInserter:Landroid/database/DatabaseUtils$InsertHelper;

    .line 319
    new-instance v0, Landroid/database/DatabaseUtils$InsertHelper;

    const-string v1, "ExtendedProperties"

    invoke-direct {v0, p1, v1}, Landroid/database/DatabaseUtils$InsertHelper;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/providers/calendar/CalendarDatabaseHelper;->mExtendedPropertiesInserter:Landroid/database/DatabaseUtils$InsertHelper;

    .line 321
    new-instance v0, Landroid/database/DatabaseUtils$InsertHelper;

    const-string v1, "ConferenceCallInfo"

    invoke-direct {v0, p1, v1}, Landroid/database/DatabaseUtils$InsertHelper;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/providers/calendar/CalendarDatabaseHelper;->mConfCallInfoInserter:Landroid/database/DatabaseUtils$InsertHelper;

    .line 323
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->verifyAccounts(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 324
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->createLocalAccounts(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 325
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 10
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    const/16 v9, 0x42

    const/16 v8, 0x3b

    const/16 v7, 0x38

    const/16 v6, 0x37

    const/16 v5, 0x33

    .line 668
    const-string v2, "CalendarDatabaseHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Upgrading DB from version "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    const/16 v2, 0x31

    if-ge p2, v2, :cond_1

    .line 671
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->dropTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 672
    iget-object v2, p0, Lcom/android/providers/calendar/CalendarDatabaseHelper;->mSyncState:Lcom/android/internal/content/SyncStateContentProviderHelper;

    invoke-virtual {v2, p1}, Lcom/android/internal/content/SyncStateContentProviderHelper;->createDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 800
    :cond_0
    :goto_0
    return-void

    .line 682
    :cond_1
    if-lt p2, v8, :cond_1d

    if-gt p2, v9, :cond_1d

    const/4 v2, 0x1

    move v1, v2

    .line 685
    .local v1, recreateMetaDataAndInstances:Z
    :goto_1
    if-ge p2, v5, :cond_2

    .line 686
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->upgradeToVersion51(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 687
    const/16 p2, 0x33

    .line 689
    :cond_2
    if-ne p2, v5, :cond_3

    .line 690
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->upgradeToVersion52(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 691
    add-int/lit8 p2, p2, 0x1

    .line 693
    :cond_3
    const/16 v2, 0x34

    if-ne p2, v2, :cond_4

    .line 694
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->upgradeToVersion53(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 695
    add-int/lit8 p2, p2, 0x1

    .line 697
    :cond_4
    const/16 v2, 0x35

    if-ne p2, v2, :cond_5

    .line 698
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->upgradeToVersion54(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 699
    add-int/lit8 p2, p2, 0x1

    .line 701
    :cond_5
    const/16 v2, 0x36

    if-ne p2, v2, :cond_6

    .line 702
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->upgradeToVersion55(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 703
    add-int/lit8 p2, p2, 0x1

    .line 705
    :cond_6
    if-eq p2, v6, :cond_7

    if-ne p2, v7, :cond_8

    .line 707
    :cond_7
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->upgradeResync(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 709
    :cond_8
    if-ne p2, v6, :cond_9

    .line 710
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->upgradeToVersion56(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 711
    add-int/lit8 p2, p2, 0x1

    .line 713
    :cond_9
    if-ne p2, v7, :cond_a

    .line 714
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->upgradeToVersion57(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 715
    add-int/lit8 p2, p2, 0x1

    .line 717
    :cond_a
    const/16 v2, 0x39

    if-ne p2, v2, :cond_b

    .line 719
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->upgradeToVersion58(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 720
    add-int/lit8 p2, p2, 0x1

    .line 722
    :cond_b
    const/16 v2, 0x3a

    if-ne p2, v2, :cond_c

    .line 723
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->upgradeToVersion59(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 724
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->addMotorolaVisibilityColumn(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 725
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->migrateEasRows(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 726
    add-int/lit8 p2, p2, 0x1

    .line 728
    :cond_c
    if-ne p2, v8, :cond_d

    .line 729
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->upgradeToVersion60(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 730
    add-int/lit8 p2, p2, 0x1

    .line 732
    :cond_d
    const/16 v2, 0x3c

    if-ne p2, v2, :cond_e

    .line 733
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->upgradeToVersion61(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 734
    add-int/lit8 p2, p2, 0x1

    .line 736
    :cond_e
    const/16 v2, 0x3d

    if-ne p2, v2, :cond_f

    .line 737
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->upgradeToVersion62(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 738
    add-int/lit8 p2, p2, 0x1

    .line 740
    :cond_f
    const/16 v2, 0x3e

    if-ne p2, v2, :cond_10

    .line 741
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->upgradeToVersion63(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 742
    add-int/lit8 p2, p2, 0x1

    .line 744
    :cond_10
    const/16 v2, 0x3f

    if-ne p2, v2, :cond_11

    .line 745
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->upgradeToVersion64(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 746
    add-int/lit8 p2, p2, 0x1

    .line 748
    :cond_11
    const/16 v2, 0x40

    if-ne p2, v2, :cond_12

    .line 749
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->upgradeToVersion65(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 750
    add-int/lit8 p2, p2, 0x1

    .line 752
    :cond_12
    const/16 v2, 0x41

    if-ne p2, v2, :cond_13

    .line 753
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->upgradeToVersion66(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 754
    add-int/lit8 p2, p2, 0x1

    .line 756
    :cond_13
    if-ne p2, v9, :cond_14

    .line 758
    add-int/lit8 p2, p2, 0x1

    .line 760
    :cond_14
    if-eqz v1, :cond_15

    .line 761
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->recreateMetaDataAndInstances(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 763
    :cond_15
    const/16 v2, 0x43

    if-eq p2, v2, :cond_16

    const/16 v2, 0x44

    if-ne p2, v2, :cond_17

    .line 764
    :cond_16
    invoke-static {p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->upgradeToVersion69(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 765
    const/16 p2, 0x45

    .line 767
    :cond_17
    const/16 v2, 0x45

    if-eq p2, v2, :cond_18

    const/16 v2, 0x46

    if-ne p2, v2, :cond_19

    .line 771
    :cond_18
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->upgradeToVersion71(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 772
    const/16 p2, 0x47

    .line 774
    :cond_19
    const/16 v2, 0x47

    if-ne p2, v2, :cond_1a

    .line 777
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->upgradeToVersion72(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 778
    add-int/lit8 p2, p2, 0x1

    .line 780
    :cond_1a
    const/16 v2, 0x48

    if-ne p2, v2, :cond_1b

    .line 782
    invoke-virtual {p0, p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->upgradeToVersion100(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 783
    const/16 p2, 0x64

    .line 785
    :cond_1b
    const/16 v2, 0x64

    if-ne p2, v2, :cond_1c

    .line 787
    invoke-virtual {p0, p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->upgradeToVersion101(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 788
    const/16 p2, 0x65

    .line 790
    :cond_1c
    const/16 v2, 0x65

    if-ne p2, v2, :cond_0

    .line 791
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->upgradeToVersion102(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 792
    const/16 p2, 0x66

    goto/16 :goto_0

    .line 682
    .end local v1           #recreateMetaDataAndInstances:Z
    :cond_1d
    const/4 v2, 0x0

    move v1, v2

    goto/16 :goto_1

    .line 794
    .restart local v1       #recreateMetaDataAndInstances:Z
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 795
    .local v0, e:Landroid/database/sqlite/SQLiteException;
    const-string v2, "CalendarDatabaseHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onUpgrade: SQLiteException, recreating db. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->dropTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 797
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->bootstrapDB(Landroid/database/sqlite/SQLiteDatabase;)V

    goto/16 :goto_0
.end method

.method public remindersInsert(Landroid/content/ContentValues;)J
    .locals 2
    .parameter "values"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarDatabaseHelper;->mRemindersInserter:Landroid/database/DatabaseUtils$InsertHelper;

    invoke-virtual {v0, p1}, Landroid/database/DatabaseUtils$InsertHelper;->insert(Landroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0
.end method

.method scheduleSync(Landroid/accounts/Account;ZLjava/lang/String;)V
    .locals 3
    .parameter "account"
    .parameter "uploadChangesOnly"
    .parameter "url"

    .prologue
    .line 1423
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1424
    .local v0, extras:Landroid/os/Bundle;
    if-eqz p2, :cond_0

    .line 1425
    const-string v1, "upload"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1427
    :cond_0
    if-eqz p3, :cond_1

    .line 1428
    const-string v1, "feed"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1429
    const-string v1, "force"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1431
    :cond_1
    sget-object v1, Landroid/provider/Calendar$Calendars;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1432
    return-void
.end method

.method upgradeToVersion100(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 6
    .parameter "db"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 841
    const-string v2, "SELECT value from CalendarCache WHERE key=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "timezoneDatabaseVersion"

    aput-object v4, v3, v5

    invoke-virtual {p1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 844
    .local v0, cursor:Landroid/database/Cursor;
    const/4 v1, 0x0

    .line 845
    .local v1, oldTimezoneDbVersion:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 847
    const/4 v2, 0x0

    :try_start_0
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 849
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 852
    const-string v2, "DELETE FROM CalendarCache;"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 854
    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->initCalendarCacheTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 855
    return-void

    .line 849
    :catchall_0
    move-exception v2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v2
.end method

.method upgradeToVersion101(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter "db"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 836
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->updateCalendarCacheTableTo101(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 837
    return-void
.end method
