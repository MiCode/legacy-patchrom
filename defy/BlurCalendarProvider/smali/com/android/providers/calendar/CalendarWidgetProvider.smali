.class public Lcom/android/providers/calendar/CalendarWidgetProvider;
.super Lcom/motorola/blur/home/widget/ChipWidgetProvider;
.source "CalendarWidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/calendar/CalendarWidgetProvider$WidgetService;
    }
.end annotation


# static fields
.field static final ACTION_CALENDAR_APPWIDGET_UPDATE:Ljava/lang/String; = "com.android.providers.calendar.APPWIDGET_UPDATE"

.field static final ACTION_CALENDAR_APP_PACKAGE:Ljava/lang/String; = "com.android.calendar"

.field static final ACTION_CALENDAR_LAUNCH_DAY:Ljava/lang/String; = "com.android.providers.calendar.LAUNCH_DAY"

.field static final ACTION_CALENDAR_NEXT_WIDGET_UPDATE:Ljava/lang/String; = "com.android.providers.calendar.NEXT_WIDGET_UPDATE"

.field static final ACTION_CALENDAR_VIEW_EVENT:Ljava/lang/String; = "com.android.providers.calendar.VIEW_EVENT"

.field static final ACTION_LAUNCH_ACTIVITY_CLASS:Ljava/lang/String; = "com.android.calendar.LaunchActivity"

.field static final ACTION_SET_WIDGET_SIZE:Ljava/lang/String; = "com.motorola.blur.home.ACTION_SET_WIDGET_SIZE"

.field private static final CHIP_ID:Ljava/lang/String; = "chip_id"

.field private static final CHIP_URI:Landroid/net/Uri; = null

.field private static final EVENT_DELIM:Ljava/lang/String; = "/"

.field static final EVENT_INFO_ACTIVITY:Ljava/lang/String; = "com.android.calendar.EventInfoActivity"

.field static final INTENT_KEY_CLASS_NAME:Ljava/lang/String; = "provider_class_name"

.field static final KEY_CHANGED_EVENT_IDS_LONG_ARRAY:Ljava/lang/String; = "key_changed_eventids"

.field static final KEY_DETAIL_VIEW:Ljava/lang/String; = "DETAIL_VIEW"

.field static final LOGD:Z = false

.field static final PACKAGE_THIS_APPWIDGET:Ljava/lang/String; = "com.android.providers.calendar"

.field static final TAG:Ljava/lang/String; = "CalWidgetProvider"

.field static final UPDATE_THRESHOLD:J = 0xea60L

.field static final WAKE_LOCK_TIMEOUT:J = 0xea60L

.field private static sInstance:Lcom/android/providers/calendar/CalendarWidgetProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    const-string v0, "content://calendar/chipcalendars"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/providers/calendar/CalendarWidgetProvider;->CHIP_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/motorola/blur/home/widget/ChipWidgetProvider;-><init>()V

    .line 483
    return-void
.end method

.method public static buildEventURI(Ljava/lang/String;IJJJ)Landroid/net/Uri;
    .locals 4
    .parameter "packageName"
    .parameter "appWidgetId"
    .parameter "eventId"
    .parameter "startMillis"
    .parameter "endMillis"

    .prologue
    const-string v3, "/"

    const-string v2, ""

    .line 470
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "widget"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    if-lez p1, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->query(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p4, p5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p6, p7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->fragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v1, ""

    move-object v1, v2

    goto :goto_0
.end method

.method public static buildLaunchURI(Ljava/lang/String;IJ)Landroid/net/Uri;
    .locals 3
    .parameter "packageName"
    .parameter "appWidgetId"
    .parameter "time"

    .prologue
    const-string v2, ""

    .line 457
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "widget"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    if-lez p1, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->query(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->fragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v1, ""

    move-object v1, v2

    goto :goto_0
.end method

.method public static getInstance()Lcom/android/providers/calendar/CalendarWidgetProvider;
    .locals 1

    .prologue
    .line 452
    sget-object v0, Lcom/android/providers/calendar/CalendarWidgetProviderHelper;->sInstance:Lcom/android/providers/calendar/CalendarWidgetProvider;

    return-object v0
.end method

.method static getUpdateIntent(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/app/PendingIntent;
    .locals 3
    .parameter "context"
    .parameter "componentName"

    .prologue
    const/4 v2, 0x0

    .line 445
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.providers.calendar.APPWIDGET_UPDATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 446
    .local v0, updateIntent:Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 447
    invoke-static {p0, v2, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method private hasInstances(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    .line 305
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    .line 306
    .local v1, appWidgetManager:Landroid/appwidget/AppWidgetManager;
    invoke-virtual {p0, p1}, Lcom/android/providers/calendar/CalendarWidgetProvider;->getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v2

    .line 307
    .local v2, thisAppWidget:Landroid/content/ComponentName;
    invoke-virtual {v1, v2}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v0

    .line 309
    .local v0, appWidgetIds:[I
    array-length v3, v0

    if-lez v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private performUpdate(Landroid/content/Context;[I[JZ)V
    .locals 10
    .parameter "context"
    .parameter "appWidgetIds"
    .parameter "changedEventIds"
    .parameter "considerIgnore"

    .prologue
    .line 393
    sget-object v5, Lcom/android/providers/calendar/AppWidgetShared;->sLock:Ljava/lang/Object;

    monitor-enter v5

    .line 396
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 397
    .local v2, now:J
    if-eqz p4, :cond_0

    sget-wide v6, Lcom/android/providers/calendar/AppWidgetShared;->sLastRequest:J

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-eqz v6, :cond_0

    .line 398
    sget-wide v6, Lcom/android/providers/calendar/AppWidgetShared;->sLastRequest:J

    sub-long v6, v2, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    .line 399
    .local v0, delta:J
    const-wide/32 v6, 0xea60

    cmp-long v6, v0, v6

    if-gez v6, :cond_0

    .line 401
    monitor-exit v5

    .line 429
    .end local v0           #delta:J
    :goto_0
    return-void

    .line 406
    :cond_0
    sget-object v6, Lcom/android/providers/calendar/AppWidgetShared;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v6, :cond_1

    sget-object v6, Lcom/android/providers/calendar/AppWidgetShared;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v6

    if-nez v6, :cond_2

    .line 409
    :cond_1
    const-string v6, "power"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    .line 411
    .local v4, powerManager:Landroid/os/PowerManager;
    const/4 v6, 0x1

    const-string v7, "CalWidgetProvider"

    invoke-virtual {v4, v6, v7}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v6

    sput-object v6, Lcom/android/providers/calendar/AppWidgetShared;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 413
    sget-object v6, Lcom/android/providers/calendar/AppWidgetShared;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 414
    sget-object v6, Lcom/android/providers/calendar/AppWidgetShared;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v7, 0xea60

    invoke-virtual {v6, v7, v8}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 419
    .end local v4           #powerManager:Landroid/os/PowerManager;
    :cond_2
    sget-boolean v6, Lcom/android/providers/calendar/AppWidgetShared;->sUpdateRequested:Z

    invoke-static {p2, v6}, Lcom/android/providers/calendar/AppWidgetShared;->mergeAppWidgetIdsLocked([IZ)V

    .line 420
    invoke-static {p3}, Lcom/android/providers/calendar/AppWidgetShared;->mergeChangedEventIdsLocked([J)V

    .line 423
    sput-wide v2, Lcom/android/providers/calendar/AppWidgetShared;->sLastRequest:J

    .line 424
    const/4 v6, 0x1

    sput-boolean v6, Lcom/android/providers/calendar/AppWidgetShared;->sUpdateRequested:Z

    .line 427
    invoke-virtual {p0, p1, p2}, Lcom/android/providers/calendar/CalendarWidgetProvider;->startWidgetService(Landroid/content/Context;[I)V

    .line 428
    monitor-exit v5

    goto :goto_0

    .end local v2           #now:J
    :catchall_0
    move-exception v6

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6
.end method


# virtual methods
.method protected doUpdateWidget(Landroid/content/Context;III)V
    .locals 3
    .parameter "context"
    .parameter "appWidgetId"
    .parameter "spanX"
    .parameter "spanY"

    .prologue
    const/4 v2, 0x0

    .line 77
    const/4 v1, 0x1

    new-array v0, v1, [I

    .line 78
    .local v0, ids:[I
    aput p2, v0, v2

    .line 80
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/providers/calendar/CalendarWidgetProvider;->performUpdate(Landroid/content/Context;[I[JZ)V

    .line 81
    return-void
.end method

.method protected getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;
    .locals 3
    .parameter "context"

    .prologue
    .line 333
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.providers.calendar"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getWidgetUri(Landroid/content/Context;I)Landroid/net/Uri;
    .locals 1
    .parameter "context"
    .parameter "appWidgetId"

    .prologue
    .line 220
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/providers/calendar/CalendarWidgetProvider;->getWidgetUri(Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method protected insertChipData(Landroid/content/Context;IJI)V
    .locals 10
    .parameter "context"
    .parameter "chipId"
    .parameter "calendarId"
    .parameter "checked"

    .prologue
    const/4 v2, 0x0

    const-string v9, "chip_calendar_id"

    .line 237
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 238
    .local v8, values:Landroid/content/ContentValues;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 239
    .local v0, resolver:Landroid/content/ContentResolver;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "chip_id="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " AND "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "chip_calendar_id"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 240
    .local v3, selection:Ljava/lang/String;
    sget-object v1, Lcom/android/providers/calendar/AppWidgetShared;->CHIP_URI:Landroid/net/Uri;

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 242
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 243
    const-string v1, "chip_id"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 244
    const-string v1, "chip_calendar_id"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v8, v9, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 245
    const-string v1, "chip_calendar_selected"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 247
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 248
    .local v7, dbCount:I
    if-nez v7, :cond_0

    .line 249
    sget-object v1, Lcom/android/providers/calendar/AppWidgetShared;->CHIP_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 255
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 257
    .end local v7           #dbCount:I
    :cond_1
    return-void
.end method

.method public onAdded(Landroid/content/Context;IZ)V
    .locals 23
    .parameter "context"
    .parameter "appWidgetId"
    .parameter "newWidget"

    .prologue
    .line 168
    invoke-static/range {p1 .. p2}, Lcom/android/providers/calendar/CalendarWidgetProvider;->getSettings(Landroid/content/Context;I)Lorg/json/JSONObject;

    move-result-object v22

    .line 169
    .local v22, settings:Lorg/json/JSONObject;
    if-nez v22, :cond_0

    .line 171
    const-wide/16 v7, 0x270f

    const/4 v9, 0x1

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move/from16 v6, p2

    invoke-virtual/range {v4 .. v9}, Lcom/android/providers/calendar/CalendarWidgetProvider;->insertChipData(Landroid/content/Context;IJI)V

    .line 216
    :goto_0
    return-void

    .line 176
    :cond_0
    const-string v4, "chip_calendar_id"

    move-object/from16 v0, v22

    move-object v1, v4

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v21

    .line 177
    .local v21, object:Lorg/json/JSONObject;
    if-nez v21, :cond_1

    .line 179
    const-wide/16 v7, 0x270f

    const/4 v9, 0x1

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move/from16 v6, p2

    invoke-virtual/range {v4 .. v9}, Lcom/android/providers/calendar/CalendarWidgetProvider;->insertChipData(Landroid/content/Context;IJI)V

    goto :goto_0

    .line 182
    :cond_1
    invoke-virtual/range {v21 .. v21}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v20

    .line 185
    .local v20, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    const/16 v16, 0x0

    .line 186
    .local v16, allCalendarsSet:Z
    const/16 v17, 0x0

    .line 188
    .local v17, anyNotSelected:Z
    :goto_1
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 189
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 190
    .local v18, calendarId:Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    int-to-long v4, v4

    const-wide/16 v6, 0x270f

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    .line 191
    const/16 v16, 0x1

    .line 195
    :cond_2
    :try_start_0
    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    .line 196
    .local v9, selected:I
    if-nez v9, :cond_3

    .line 197
    const/16 v17, 0x1

    .line 199
    :cond_3
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    int-to-long v7, v4

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move/from16 v6, p2

    invoke-virtual/range {v4 .. v9}, Lcom/android/providers/calendar/CalendarWidgetProvider;->insertChipData(Landroid/content/Context;IJI)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 200
    .end local v9           #selected:I
    :catch_0
    move-exception v4

    move-object/from16 v19, v4

    .line 201
    .local v19, e:Lorg/json/JSONException;
    const-string v4, "CalWidgetProvider"

    const-string v5, "Error while retrieving setting"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 204
    .end local v18           #calendarId:Ljava/lang/String;
    .end local v19           #e:Lorg/json/JSONException;
    :cond_4
    if-nez v16, :cond_5

    .line 206
    if-eqz v17, :cond_6

    .line 208
    const-wide/16 v13, 0x270f

    const/4 v15, 0x0

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move/from16 v12, p2

    invoke-virtual/range {v10 .. v15}, Lcom/android/providers/calendar/CalendarWidgetProvider;->insertChipData(Landroid/content/Context;IJI)V

    .line 215
    :cond_5
    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/calendar/CalendarWidgetProvider;->removeSettings(Landroid/content/Context;ILorg/json/JSONObject;)V

    goto :goto_0

    .line 211
    :cond_6
    const-wide/16 v13, 0x270f

    const/4 v15, 0x1

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move/from16 v12, p2

    invoke-virtual/range {v10 .. v15}, Lcom/android/providers/calendar/CalendarWidgetProvider;->insertChipData(Landroid/content/Context;IJI)V

    goto :goto_2
.end method

.method public onDeleted(Landroid/content/Context;[I)V
    .locals 8
    .parameter "context"
    .parameter "appWidgetIds"

    .prologue
    .line 291
    invoke-super {p0, p1, p2}, Lcom/motorola/blur/home/widget/ChipWidgetProvider;->onDeleted(Landroid/content/Context;[I)V

    .line 293
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 294
    .local v2, cr:Landroid/content/ContentResolver;
    move-object v1, p2

    .local v1, arr$:[I
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget v0, v1, v3

    .line 296
    .local v0, appWidgetId:I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "chip_id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 297
    .local v5, selection:Ljava/lang/String;
    sget-object v6, Lcom/android/providers/calendar/AppWidgetShared;->CHIP_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v5, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 294
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 299
    .end local v0           #appWidgetId:I
    .end local v5           #selection:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onDisabled(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    .line 277
    const-string v3, "alarm"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 278
    .local v0, am:Landroid/app/AlarmManager;
    invoke-virtual {p0, p1}, Lcom/android/providers/calendar/CalendarWidgetProvider;->getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/android/providers/calendar/CalendarWidgetProvider;->getUpdateIntent(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 279
    .local v1, pendingUpdate:Landroid/app/PendingIntent;
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 282
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 283
    .local v2, pm:Landroid/content/pm/PackageManager;
    new-instance v3, Landroid/content/ComponentName;

    const-class v4, Lcom/android/providers/calendar/TimeChangeReceiver;

    invoke-direct {v3, p1, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v4, 0x2

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 287
    return-void
.end method

.method public onEnabled(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    .line 264
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 265
    .local v0, pm:Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/android/providers/calendar/TimeChangeReceiver;

    invoke-direct {v1, p1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1, v3, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 269
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 24
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 90
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    .line 91
    .local v5, action:Ljava/lang/String;
    const-string v21, "com.android.providers.calendar.APPWIDGET_UPDATE"

    move-object/from16 v0, v21

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1

    .line 92
    const-string v21, "key_changed_eventids"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v6

    .line 93
    .local v6, changedEventIds:[J
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/calendar/CalendarWidgetProvider;->performUpdateToAll(Landroid/content/Context;[J)V

    .line 163
    .end local v6           #changedEventIds:[J
    :cond_0
    :goto_0
    return-void

    .line 94
    :cond_1
    const-string v21, "com.android.providers.calendar.NEXT_WIDGET_UPDATE"

    move-object/from16 v0, v21

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_2

    .line 96
    invoke-static {}, Lcom/android/providers/calendar/AppWidgetShared;->getNextWidgetId()I

    move-result v13

    .line 97
    .local v13, id:I
    if-lez v13, :cond_0

    .line 98
    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [I

    move-object v14, v0

    .line 99
    .local v14, ids:[I
    const/16 v21, 0x0

    aput v13, v14, v21

    .line 100
    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v14

    move-object/from16 v3, v21

    move/from16 v4, v22

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/providers/calendar/CalendarWidgetProvider;->performUpdate(Landroid/content/Context;[I[JZ)V

    goto :goto_0

    .line 102
    .end local v13           #id:I
    .end local v14           #ids:[I
    :cond_2
    const-string v21, "com.android.providers.calendar.LAUNCH_DAY"

    move-object/from16 v0, v21

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_4

    .line 104
    new-instance v15, Landroid/content/Intent;

    invoke-direct {v15}, Landroid/content/Intent;-><init>()V

    .line 105
    .local v15, launchIntent:Landroid/content/Intent;
    new-instance v21, Landroid/content/ComponentName;

    const-string v22, "com.android.calendar"

    const-string v23, "com.android.calendar.LaunchActivity"

    invoke-direct/range {v21 .. v23}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v15

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 106
    const/high16 v21, 0x1420

    move-object v0, v15

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 109
    new-instance v19, Landroid/text/format/Time;

    invoke-direct/range {v19 .. v19}, Landroid/text/format/Time;-><init>()V

    .line 110
    .local v19, time:Landroid/text/format/Time;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v21

    if-eqz v21, :cond_3

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object v21

    if-eqz v21, :cond_3

    .line 111
    const-wide/16 v21, 0x0

    move-object/from16 v0, v19

    move-wide/from16 v1, v21

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 112
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v21

    move-object/from16 v0, v19

    move-wide/from16 v1, v21

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 117
    :goto_1
    const-string v21, "beginTime"

    const/16 v22, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v22

    move-object v0, v15

    move-object/from16 v1, v21

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 118
    const-string v21, "DETAIL_VIEW"

    const/16 v22, 0x1

    move-object v0, v15

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 119
    move-object/from16 v0, p1

    move-object v1, v15

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 115
    :cond_3
    invoke-virtual/range {v19 .. v19}, Landroid/text/format/Time;->setToNow()V

    goto :goto_1

    .line 121
    .end local v15           #launchIntent:Landroid/content/Intent;
    .end local v19           #time:Landroid/text/format/Time;
    :cond_4
    const-string v21, "com.android.providers.calendar.VIEW_EVENT"

    move-object/from16 v0, v21

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_7

    .line 122
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v21

    if-eqz v21, :cond_5

    .line 125
    :cond_5
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v21

    if-eqz v21, :cond_0

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object v21

    if-eqz v21, :cond_0

    .line 126
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object v11

    .line 127
    .local v11, eventInfo:Ljava/lang/String;
    new-instance v20, Ljava/util/StringTokenizer;

    const-string v21, "/"

    move-object/from16 v0, v20

    move-object v1, v11

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    .local v20, tok:Ljava/util/StringTokenizer;
    invoke-virtual/range {v20 .. v20}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v21

    const/16 v22, 0x3

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_0

    .line 131
    :try_start_0
    invoke-virtual/range {v20 .. v20}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    .line 132
    .local v9, eventId:J
    invoke-virtual/range {v20 .. v20}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v17

    .line 133
    .local v17, startMillis:J
    invoke-virtual/range {v20 .. v20}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 135
    .local v7, endMillis:J
    const-wide/16 v21, 0x0

    cmp-long v21, v17, v21

    if-lez v21, :cond_6

    const-wide/16 v21, 0x0

    cmp-long v21, v7, v21

    if-lez v21, :cond_6

    .line 137
    sget-object v21, Landroid/provider/Calendar$Events;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v21

    move-wide v1, v9

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v12

    .line 138
    .local v12, eventUri:Landroid/net/Uri;
    new-instance v15, Landroid/content/Intent;

    const-string v21, "android.intent.action.VIEW"

    move-object v0, v15

    move-object/from16 v1, v21

    move-object v2, v12

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 139
    .restart local v15       #launchIntent:Landroid/content/Intent;
    const/high16 v21, 0x1420

    move-object v0, v15

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 142
    const-string v21, "com.android.calendar"

    const-string v22, "com.android.calendar.EventInfoActivity"

    move-object v0, v15

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 143
    const-string v21, "beginTime"

    move-object v0, v15

    move-object/from16 v1, v21

    move-wide/from16 v2, v17

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 144
    const-string v21, "endTime"

    move-object v0, v15

    move-object/from16 v1, v21

    move-wide v2, v7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 147
    move-object/from16 v0, p1

    move-object v1, v15

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 151
    .end local v7           #endMillis:J
    .end local v9           #eventId:J
    .end local v12           #eventUri:Landroid/net/Uri;
    .end local v15           #launchIntent:Landroid/content/Intent;
    .end local v17           #startMillis:J
    :catch_0
    move-exception v21

    move-object/from16 v16, v21

    .line 152
    .local v16, nfe:Ljava/lang/NumberFormatException;
    const-string v21, "CalWidgetProvider"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Number format excpetion"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 149
    .end local v16           #nfe:Ljava/lang/NumberFormatException;
    .restart local v7       #endMillis:J
    .restart local v9       #eventId:J
    .restart local v17       #startMillis:J
    :cond_6
    :try_start_1
    const-string v21, "CalWidgetProvider"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "ERROR Invalid start/end time (ms): "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " / "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 161
    .end local v7           #endMillis:J
    .end local v9           #eventId:J
    .end local v11           #eventInfo:Ljava/lang/String;
    .end local v17           #startMillis:J
    .end local v20           #tok:Ljava/util/StringTokenizer;
    :cond_7
    invoke-super/range {p0 .. p2}, Lcom/motorola/blur/home/widget/ChipWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method protected performUpdateToAll(Landroid/content/Context;[J)V
    .locals 7
    .parameter "context"
    .parameter "changedEventIds"

    .prologue
    .line 313
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 314
    .local v0, appWidgetManager:Landroid/appwidget/AppWidgetManager;
    invoke-virtual {p0, p1}, Lcom/android/providers/calendar/CalendarWidgetProvider;->getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v4

    .line 315
    .local v4, provider:Landroid/content/ComponentName;
    invoke-virtual {v0, v4}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v5

    .line 316
    .local v5, widgetIds:[I
    array-length v3, v5

    .line 318
    .local v3, numWidgets:I
    if-lez v3, :cond_1

    .line 319
    new-array v2, v3, [I

    .line 320
    .local v2, ids:[I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 321
    aget v6, v5, v1

    aput v6, v2, v1

    .line 322
    aget v6, v2, v1

    invoke-static {v6}, Lcom/android/providers/calendar/AppWidgetShared;->addNextWidgetId(I)V

    .line 320
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 324
    :cond_0
    const/4 v6, 0x0

    invoke-direct {p0, p1, v2, p2, v6}, Lcom/android/providers/calendar/CalendarWidgetProvider;->performUpdate(Landroid/content/Context;[I[JZ)V

    .line 326
    .end local v1           #i:I
    .end local v2           #ids:[I
    :cond_1
    return-void
.end method

.method providerUpdated(Landroid/content/Context;J)V
    .locals 4
    .parameter "context"
    .parameter "changedEventId"

    .prologue
    .line 347
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.providers.calendar.APPWIDGET_UPDATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 348
    .local v0, widgetUpdateIntent:Landroid/content/Intent;
    const-wide/16 v1, -0x1

    cmp-long v1, p2, v1

    if-eqz v1, :cond_0

    .line 349
    const-string v1, "key_changed_eventids"

    const/4 v2, 0x1

    new-array v2, v2, [J

    const/4 v3, 0x0

    aput-wide p2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 351
    :cond_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 352
    return-void
.end method

.method protected removeSettings(Landroid/content/Context;ILorg/json/JSONObject;)V
    .locals 1
    .parameter "context"
    .parameter "appWidgetId"
    .parameter "settings"

    .prologue
    .line 232
    const-string v0, "chip_calendar_id"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 233
    invoke-static {p1, p2, p3}, Lcom/android/providers/calendar/CalendarWidgetProvider;->putSettings(Landroid/content/Context;ILorg/json/JSONObject;)V

    .line 234
    return-void
.end method

.method protected startWidgetService(Landroid/content/Context;[I)V
    .locals 3
    .parameter "context"
    .parameter "appWidgetIds"

    .prologue
    .line 432
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/providers/calendar/CalendarAppWidgetService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 433
    .local v0, updateIntent:Landroid/content/Intent;
    const-string v1, "provider_class_name"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 434
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 435
    return-void
.end method

.method timeUpdated(Landroid/content/Context;Z)V
    .locals 2
    .parameter "context"
    .parameter "considerIgnore"

    .prologue
    .line 364
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.providers.calendar.APPWIDGET_UPDATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 365
    return-void
.end method
