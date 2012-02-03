.class public final Landroid/provider/Calendar$CalendarAlerts;
.super Ljava/lang/Object;
.source "Calendar.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Landroid/provider/Calendar$CalendarAlertsColumns;
.implements Landroid/provider/Calendar$EventsColumns;
.implements Landroid/provider/Calendar$CalendarsColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Calendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CalendarAlerts"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final CONTENT_URI_BY_INSTANCE:Landroid/net/Uri; = null

.field private static final DEBUG:Z = true

.field private static final SORT_ORDER_ALARMTIME_ASC:Ljava/lang/String; = "alarmTime ASC"

.field public static final TABLE_NAME:Ljava/lang/String; = "CalendarAlerts"

.field private static final WHERE_ALARM_EXISTS:Ljava/lang/String; = "event_id=? AND begin=? AND alarmTime=?"

.field private static final WHERE_FINDNEXTALARMTIME:Ljava/lang/String; = "alarmTime>=?"

.field private static final WHERE_RESCHEDULE_MISSED_ALARMS:Ljava/lang/String; = "state=0 AND alarmTime<? AND alarmTime>? AND end>=?"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1209
    const-string v0, "content://com.android.calendar/calendar_alerts"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Calendar$CalendarAlerts;->CONTENT_URI:Landroid/net/Uri;

    .line 1230
    const-string v0, "content://com.android.calendar/calendar_alerts/by_instance"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Calendar$CalendarAlerts;->CONTENT_URI_BY_INSTANCE:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final alarmExists(Landroid/content/ContentResolver;JJJ)Z
    .locals 8
    .parameter "cr"
    .parameter "eventId"
    .parameter "begin"
    .parameter "alarmTime"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1382
    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "alarmTime"

    aput-object v3, v2, v6

    .line 1383
    .local v2, projection:[Ljava/lang/String;
    const-string v3, "event_id=? AND begin=? AND alarmTime=?"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    const/4 v5, 0x2

    invoke-static {p5, p6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    invoke-static {p0, v2, v3, v4, v5}, Landroid/provider/Calendar$CalendarAlerts;->query(Landroid/content/ContentResolver;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1392
    .local v0, cursor:Landroid/database/Cursor;
    const/4 v1, 0x0

    .line 1394
    .local v1, found:Z
    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-lez v3, :cond_0

    .line 1395
    const/4 v1, 0x1

    .line 1398
    :cond_0
    if-eqz v0, :cond_1

    .line 1399
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1402
    :cond_1
    return v1

    .line 1398
    :catchall_0
    move-exception v3

    if-eqz v0, :cond_2

    .line 1399
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1398
    :cond_2
    throw v3
.end method

.method public static final findNextAlarmTime(Landroid/content/ContentResolver;J)J
    .locals 9
    .parameter "cr"
    .parameter "millis"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1267
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "alarmTime>="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1270
    .local v4, selection:Ljava/lang/String;
    new-array v3, v7, [Ljava/lang/String;

    const-string v5, "alarmTime"

    aput-object v5, v3, v8

    .line 1271
    .local v3, projection:[Ljava/lang/String;
    const-string v5, "alarmTime>=?"

    new-array v6, v7, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    const-string v7, "alarmTime ASC"

    invoke-static {p0, v3, v5, v6, v7}, Landroid/provider/Calendar$CalendarAlerts;->query(Landroid/content/ContentResolver;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 1277
    .local v2, cursor:Landroid/database/Cursor;
    const-wide/16 v0, -0x1

    .line 1279
    .local v0, alarmTime:J
    if-eqz v2, :cond_0

    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1280
    const/4 v5, 0x0

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 1283
    :cond_0
    if-eqz v2, :cond_1

    .line 1284
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1287
    :cond_1
    return-wide v0

    .line 1283
    :catchall_0
    move-exception v5

    if-eqz v2, :cond_2

    .line 1284
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1283
    :cond_2
    throw v5
.end method

.method public static final insert(Landroid/content/ContentResolver;JJJJI)Landroid/net/Uri;
    .locals 6
    .parameter "cr"
    .parameter "eventId"
    .parameter "begin"
    .parameter "end"
    .parameter "alarmTime"
    .parameter "minutes"

    .prologue
    const/4 v5, 0x0

    .line 1237
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1238
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "event_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1239
    const-string v3, "begin"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1240
    const-string v3, "end"

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1241
    const-string v3, "alarmTime"

    invoke-static {p7, p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1242
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1243
    .local v0, currentTime:J
    const-string v3, "creationTime"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1244
    const-string/jumbo v3, "receivedTime"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1245
    const-string/jumbo v3, "notifyTime"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1246
    const-string/jumbo v3, "state"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1247
    const-string/jumbo v3, "minutes"

    invoke-static {p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1248
    sget-object v3, Landroid/provider/Calendar$CalendarAlerts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v3, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    return-object v3
.end method

.method public static final query(Landroid/content/ContentResolver;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .parameter "cr"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 1253
    sget-object v1, Landroid/provider/Calendar$CalendarAlerts;->CONTENT_URI:Landroid/net/Uri;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static final rescheduleMissedAlarms(Landroid/content/ContentResolver;Landroid/content/Context;Landroid/app/AlarmManager;)V
    .locals 9
    .parameter "cr"
    .parameter "context"
    .parameter "manager"

    .prologue
    .line 1304
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1305
    .local v2, now:J
    const-wide/32 v0, 0x5265c00

    sub-long v0, v2, v0

    .line 1306
    .local v0, ancient:J
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "alarmTime"

    aput-object v6, v4, v5

    .line 1312
    .local v4, projection:[Ljava/lang/String;
    const-string/jumbo v5, "state=0 AND alarmTime<? AND alarmTime>? AND end>=?"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .end local v0           #ancient:J
    aput-object v0, v6, v7

    const/4 v0, 0x2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v0

    const-string v0, "alarmTime ASC"

    invoke-static {p0, v4, v5, v6, v0}, Landroid/provider/Calendar$CalendarAlerts;->query(Landroid/content/ContentResolver;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 1321
    .local p0, cursor:Landroid/database/Cursor;
    if-nez p0, :cond_0

    .line 1345
    .end local v2           #now:J
    .end local v4           #projection:[Ljava/lang/String;
    :goto_0
    return-void

    .line 1326
    .restart local v2       #now:J
    .restart local v4       #projection:[Ljava/lang/String;
    :cond_0
    const-string v0, "Calendar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "missed alarms found: "

    .end local v2           #now:J
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1330
    const-wide/16 v0, -0x1

    .line 1332
    .end local v4           #projection:[Ljava/lang/String;
    .local v0, alarmTime:J
    :cond_1
    :goto_1
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1333
    const/4 v2, 0x0

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 1334
    .local v2, newAlarmTime:J
    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 1336
    const-string v0, "Calendar"

    .end local v0           #alarmTime:J
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "rescheduling missed alarm. alarmTime: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1338
    invoke-static {p1, p2, v2, v3}, Landroid/provider/Calendar$CalendarAlerts;->scheduleAlarm(Landroid/content/Context;Landroid/app/AlarmManager;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1339
    move-wide v0, v2

    .restart local v0       #alarmTime:J
    goto :goto_1

    .line 1343
    .end local v0           #alarmTime:J
    .end local v2           #newAlarmTime:J
    :catchall_0
    move-exception p1

    .end local p1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    throw p1

    .restart local v0       #alarmTime:J
    .restart local p1
    :cond_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public static scheduleAlarm(Landroid/content/Context;Landroid/app/AlarmManager;J)V
    .locals 8
    .parameter "context"
    .parameter "manager"
    .parameter "alarmTime"

    .prologue
    const/4 v7, 0x0

    .line 1349
    new-instance v3, Landroid/text/format/Time;

    invoke-direct {v3}, Landroid/text/format/Time;-><init>()V

    .line 1350
    .local v3, time:Landroid/text/format/Time;
    invoke-virtual {v3, p2, p3}, Landroid/text/format/Time;->set(J)V

    .line 1351
    const-string v4, " %a, %b %d, %Y %I:%M%P"

    invoke-virtual {v3, v4}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1352
    .local v2, schedTime:Ljava/lang/String;
    const-string v4, "Calendar"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Schedule alarm at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1355
    if-nez p1, :cond_0

    .line 1356
    const-string v4, "alarm"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/app/AlarmManager;

    .line 1359
    .restart local p1
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.EVENT_REMINDER"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1360
    .local v0, intent:Landroid/content/Intent;
    sget-object v4, Landroid/provider/Calendar;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1361
    const-string v4, "alarmTime"

    invoke-virtual {v0, v4, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1362
    invoke-static {p0, v7, v0, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 1363
    .local v1, pi:Landroid/app/PendingIntent;
    invoke-virtual {p1, v7, p2, p3, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1364
    return-void
.end method
