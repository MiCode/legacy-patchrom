.class public Lcom/android/providers/calendar/CalendarAppWidgetService;
.super Landroid/app/Service;
.source "CalendarAppWidgetService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/calendar/CalendarAppWidgetService$1;,
        Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;,
        Lcom/android/providers/calendar/CalendarAppWidgetService$EventInfoIds;,
        Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;,
        Lcom/android/providers/calendar/CalendarAppWidgetService$IOutlookAttendeeStatus;
    }
.end annotation


# static fields
.field static final ACTION_CALENDAR_APP_PACKAGE:Ljava/lang/String; = "com.android.calendar"

.field static final ACTION_CALENDAR_NEXT_WIDGET_UPDATE:Ljava/lang/String; = "com.android.providers.calendar.NEXT_WIDGET_UPDATE"

.field static final ACTION_CALENDAR_PROVIDER_PACKAGE:Ljava/lang/String; = "com.android.providers.calendar"

.field static final ACTION_LAUNCH_ACTIVITY_CLASS:Ljava/lang/String; = "com.android.calendar.LaunchActivity"

.field static final ACTION_SELECT_CALENDARS_ACTIVITY_CLASS:Ljava/lang/String; = "com.android.calendar.SelectCalendarsActivity"

.field static final ACTION_WIDGET_SETTING_CLASS:Ljava/lang/String; = "com.android.providers.calendar.CalendarAppWidgetSettingActivity"

.field static final CALENDAR_PREFS_NAME:Ljava/lang/String; = "com.android.calendar_preferences"

.field static final DEFAULT_VALUE_OF_SHOW_LUNAR:Z = true

.field static final EVENT_PROJECTION:[Ljava/lang/String; = null

.field static final EVENT_SORT_ORDER:Ljava/lang/String; = "startDay ASC, allDay DESC, begin ASC"

.field static final INDEX_ALL_DAY:I = 0x0

.field static final INDEX_BEGIN:I = 0x1

.field static final INDEX_CALENDAR_ID:I = 0x8

.field static final INDEX_COLOR:I = 0x3

.field static final INDEX_END:I = 0x2

.field static final INDEX_EVENT_ID:I = 0x9

.field static final INDEX_EVENT_LOCATION:I = 0x7

.field static final INDEX_HAS_ALARM:I = 0x6

.field static final INDEX_RRULE:I = 0x5

.field static final INDEX_SYNC_TYPE:I = 0xa

.field static final INDEX_TITLE:I = 0x4

.field static final INDEX_TRANSPARENCY:I = 0xb

.field static final KEY_SHOW_LUNAR:Ljava/lang/String; = "preferences_show_lunar"

.field static final LOGD:Z = false

.field static final NO_CALENDARS:I = 0x0

.field static final NO_CALENDARS_SELECTED:I = 0x1

.field static final NO_CALENDARS_SELECTED_WIDGET:I = 0x2

.field static final NO_EVENTS:I = 0x3

.field static final SEARCH_DURATION:J = 0x240c8400L

.field private static final STATUS_WIDTH:I = 0x3

.field static final TAG:Ljava/lang/String; = "CalAppWidgetService"

.field static final UPDATE_NO_EVENTS:J = 0x1499700L

.field private static mF:Ljava/util/Formatter;

.field private static mSB:Ljava/lang/StringBuilder;

.field private static sScale:F

.field private static sShowLunar:Z

.field private static sStatusWidth:I


# instance fields
.field private mComponentName:Landroid/content/ComponentName;

.field private mContextOfCalendar:Landroid/content/Context;

.field private mOrientation:I

.field private mScaleDPI:I

.field mTimeZone:Ljava/util/TimeZone;

.field private mWidgetId:I

.field private mWidgetSpanX:I

.field private mWidgetSpanY:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 82
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "allDay"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "begin"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "end"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "color"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "rrule"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "hasAlarm"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "eventLocation"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "calendar_id"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "event_id"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "sync_type"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "transparency"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/calendar/CalendarAppWidgetService;->EVENT_PROJECTION:[Ljava/lang/String;

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    sput-object v0, Lcom/android/providers/calendar/CalendarAppWidgetService;->mSB:Ljava/lang/StringBuilder;

    .line 124
    new-instance v0, Ljava/util/Formatter;

    sget-object v1, Lcom/android/providers/calendar/CalendarAppWidgetService;->mSB:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    sput-object v0, Lcom/android/providers/calendar/CalendarAppWidgetService;->mF:Ljava/util/Formatter;

    .line 149
    const/4 v0, 0x0

    sput v0, Lcom/android/providers/calendar/CalendarAppWidgetService;->sScale:F

    .line 150
    sput v3, Lcom/android/providers/calendar/CalendarAppWidgetService;->sStatusWidth:I

    .line 157
    sput-boolean v3, Lcom/android/providers/calendar/CalendarAppWidgetService;->sShowLunar:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 76
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 140
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/providers/calendar/CalendarAppWidgetService;->mWidgetId:I

    .line 143
    iput v1, p0, Lcom/android/providers/calendar/CalendarAppWidgetService;->mWidgetSpanX:I

    .line 144
    iput v1, p0, Lcom/android/providers/calendar/CalendarAppWidgetService;->mWidgetSpanY:I

    .line 145
    const/16 v0, 0xa0

    iput v0, p0, Lcom/android/providers/calendar/CalendarAppWidgetService;->mScaleDPI:I

    .line 146
    iput v1, p0, Lcom/android/providers/calendar/CalendarAppWidgetService;->mOrientation:I

    .line 76
    return-void
.end method

.method private AddLunarDate(Landroid/widget/RemoteViews;Landroid/content/Context;)V
    .locals 6
    .parameter "rViews"
    .parameter "context"

    .prologue
    .line 1923
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1924
    .local v0, cal:Ljava/util/Calendar;
    const/4 v1, 0x0

    .line 1926
    .local v1, dateformatter:Ljava/text/SimpleDateFormat;
    new-instance v1, Ljava/text/SimpleDateFormat;

    .end local v1           #dateformatter:Ljava/text/SimpleDateFormat;
    const-string v5, "dd"

    invoke-direct {v1, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1927
    .restart local v1       #dateformatter:Ljava/text/SimpleDateFormat;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 1928
    .local v2, day:Ljava/lang/String;
    const v5, 0x7f0b0033

    invoke-virtual {p1, v5, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1931
    new-instance v4, Landroid/text/format/Time;

    iget-object v5, p0, Lcom/android/providers/calendar/CalendarAppWidgetService;->mTimeZone:Ljava/util/TimeZone;

    invoke-virtual {v5}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 1932
    .local v4, time:Landroid/text/format/Time;
    invoke-virtual {v4}, Landroid/text/format/Time;->setToNow()V

    .line 1934
    invoke-static {p2, v4}, Lcom/android/providers/calendar/Utils;->lunarMonthAndDay(Landroid/content/Context;Landroid/text/format/Time;)Ljava/lang/String;

    move-result-object v3

    .line 1935
    .local v3, lunarMonth:Ljava/lang/String;
    const v5, 0x7f0b0034

    invoke-virtual {p1, v5, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1938
    return-void
.end method

.method private AddSolarDate(Landroid/widget/RemoteViews;Landroid/content/Context;)V
    .locals 11
    .parameter "rViews"
    .parameter "context"

    .prologue
    const v10, 0x7f0b0039

    const v9, 0x7f0b0037

    const/16 v8, 0x14

    const/4 v7, 0x0

    .line 1942
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1943
    .local v0, cal:Ljava/util/Calendar;
    const/4 v1, 0x0

    .line 1945
    .local v1, dateformatter:Ljava/text/SimpleDateFormat;
    new-instance v1, Ljava/text/SimpleDateFormat;

    .end local v1           #dateformatter:Ljava/text/SimpleDateFormat;
    const-string v6, "dd"

    invoke-direct {v1, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1946
    .restart local v1       #dateformatter:Ljava/text/SimpleDateFormat;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 1947
    .local v2, day:Ljava/lang/String;
    const v6, 0x7f0b0033

    invoke-virtual {p1, v6, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1949
    new-instance v5, Landroid/text/format/Time;

    iget-object v6, p0, Lcom/android/providers/calendar/CalendarAppWidgetService;->mTimeZone:Ljava/util/TimeZone;

    invoke-virtual {v6}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 1950
    .local v5, time:Landroid/text/format/Time;
    invoke-virtual {v5}, Landroid/text/format/Time;->setToNow()V

    .line 1951
    invoke-virtual {p1, v10, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1952
    invoke-virtual {p1, v9, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1954
    iget v6, v5, Landroid/text/format/Time;->weekDay:I

    add-int/lit8 v6, v6, 0x1

    invoke-static {v6, v8}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    .line 1957
    .local v3, dayOfWeek:Ljava/lang/String;
    invoke-virtual {p1, v9, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1958
    iget v6, v5, Landroid/text/format/Time;->month:I

    invoke-static {v6, v8}, Landroid/text/format/DateUtils;->getMonthString(II)Ljava/lang/String;

    move-result-object v4

    .line 1959
    .local v4, month:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v10, v6}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1961
    return-void
.end method

.method private buildMarkedEvents(Landroid/database/Cursor;Ljava/util/Set;J)Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;
    .locals 18
    .parameter "cursor"
    .parameter
    .parameter "now"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;J)",
            "Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;"
        }
    .end annotation

    .prologue
    .line 1667
    .local p2, watchEventIds:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    new-instance v15, Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;

    const/4 v4, 0x0

    invoke-direct {v15, v4}, Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;-><init>(Lcom/android/providers/calendar/CalendarAppWidgetService$1;)V

    .line 1668
    .local v15, events:Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;
    new-instance v16, Landroid/text/format/Time;

    invoke-direct/range {v16 .. v16}, Landroid/text/format/Time;-><init>()V

    .line 1670
    .local v16, recycle:Landroid/text/format/Time;
    const/4 v4, -0x1

    move-object/from16 v0, p1

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1671
    :cond_0
    :goto_0
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_13

    .line 1672
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getPosition()I

    move-result v17

    .line 1673
    .local v17, row:I
    const/16 v4, 0x9

    move-object/from16 v0, p1

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 1674
    .local v13, eventId:J
    const/4 v4, 0x1

    move-object/from16 v0, p1

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 1675
    .local v6, start:J
    const/4 v4, 0x2

    move-object/from16 v0, p1

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 1676
    .local v8, end:J
    const/4 v4, 0x0

    move-object/from16 v0, p1

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-eqz v4, :cond_4

    const/4 v4, 0x1

    move v10, v4

    .line 1679
    .local v10, allDay:Z
    :goto_1
    if-eqz v10, :cond_1

    .line 1680
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-wide v2, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/calendar/CalendarAppWidgetService;->convertUtcToLocal(Landroid/text/format/Time;J)J

    move-result-wide v6

    .line 1681
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-wide v2, v8

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/calendar/CalendarAppWidgetService;->convertUtcToLocal(Landroid/text/format/Time;J)J

    move-result-wide v8

    :cond_1
    move-object/from16 v4, p0

    move-object/from16 v5, p1

    .line 1685
    invoke-direct/range {v4 .. v10}, Lcom/android/providers/calendar/CalendarAppWidgetService;->getEventFlip(Landroid/database/Cursor;JJZ)J

    move-result-wide v11

    .line 1687
    .local v11, eventFlip:J
    cmp-long v4, v11, p3

    if-gez v4, :cond_2

    .line 1688
    const/4 v4, 0x1

    iput-boolean v4, v15, Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;->watchFound:Z

    .line 1689
    if-nez v10, :cond_0

    .line 1694
    :cond_2
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1695
    const/4 v4, 0x1

    iput-boolean v4, v15, Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;->watchFound:Z

    .line 1698
    :cond_3
    iget v4, v15, Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;->primaryRow:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_5

    .line 1700
    move/from16 v0, v17

    move-object v1, v15

    iput v0, v1, Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;->primaryRow:I

    .line 1701
    iput-wide v6, v15, Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;->primaryTime:J

    .line 1702
    const/4 v4, 0x1

    iput v4, v15, Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;->primaryCount:I

    goto :goto_0

    .line 1676
    .end local v10           #allDay:Z
    .end local v11           #eventFlip:J
    :cond_4
    const/4 v4, 0x0

    move v10, v4

    goto :goto_1

    .line 1703
    .restart local v10       #allDay:Z
    .restart local v11       #eventFlip:J
    :cond_5
    iget-wide v4, v15, Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;->primaryTime:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_7

    .line 1705
    iget v4, v15, Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;->primaryConflictRow:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_6

    .line 1706
    move/from16 v0, v17

    move-object v1, v15

    iput v0, v1, Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;->primaryConflictRow:I

    .line 1708
    :cond_6
    iget v4, v15, Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;->primaryCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v15, Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;->primaryCount:I

    goto/16 :goto_0

    .line 1709
    :cond_7
    iget v4, v15, Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;->secondaryRow:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_8

    .line 1711
    move/from16 v0, v17

    move-object v1, v15

    iput v0, v1, Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;->secondaryRow:I

    .line 1712
    iput-wide v6, v15, Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;->secondaryTime:J

    .line 1713
    const/4 v4, 0x1

    iput v4, v15, Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;->secondaryCount:I

    goto/16 :goto_0

    .line 1714
    :cond_8
    iget-wide v4, v15, Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;->secondaryTime:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_9

    .line 1716
    iget v4, v15, Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;->secondaryCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v15, Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;->secondaryCount:I

    goto/16 :goto_0

    .line 1717
    :cond_9
    iget v4, v15, Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;->thirdRow:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_a

    .line 1719
    move/from16 v0, v17

    move-object v1, v15

    iput v0, v1, Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;->thirdRow:I

    .line 1720
    iput-wide v6, v15, Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;->thirdTime:J

    .line 1721
    const/4 v4, 0x1

    iput v4, v15, Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;->thirdCount:I

    goto/16 :goto_0

    .line 1722
    :cond_a
    iget-wide v4, v15, Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;->thirdTime:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_b

    .line 1724
    iget v4, v15, Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;->thirdCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v15, Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;->thirdCount:I

    goto/16 :goto_0

    .line 1725
    :cond_b
    iget v4, v15, Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;->fourthRow:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_c

    .line 1727
    move/from16 v0, v17

    move-object v1, v15

    iput v0, v1, Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;->fourthRow:I

    .line 1728
    iput-wide v6, v15, Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;->fourthTime:J

    .line 1729
    const/4 v4, 0x1

    iput v4, v15, Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;->fourthCount:I

    goto/16 :goto_0

    .line 1730
    :cond_c
    iget-wide v4, v15, Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;->fourthTime:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_d

    .line 1732
    iget v4, v15, Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;->fourthCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v15, Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;->fourthCount:I

    goto/16 :goto_0

    .line 1733
    :cond_d
    iget v4, v15, Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;->fifthRow:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_e

    .line 1735
    move/from16 v0, v17

    move-object v1, v15

    iput v0, v1, Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;->fifthRow:I

    .line 1736
    iput-wide v6, v15, Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;->fifthTime:J

    .line 1737
    const/4 v4, 0x1

    iput v4, v15, Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;->fifthCount:I

    goto/16 :goto_0

    .line 1738
    :cond_e
    iget-wide v4, v15, Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;->fifthTime:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_f

    .line 1739
    iget v4, v15, Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;->fifthCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v15, Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;->fifthCount:I

    goto/16 :goto_0

    .line 1740
    :cond_f
    iget v4, v15, Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;->sixthRow:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_10

    .line 1742
    move/from16 v0, v17

    move-object v1, v15

    iput v0, v1, Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;->sixthRow:I

    .line 1743
    iput-wide v6, v15, Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;->sixthTime:J

    .line 1744
    const/4 v4, 0x1

    iput v4, v15, Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;->sixthCount:I

    goto/16 :goto_0

    .line 1745
    :cond_10
    iget-wide v4, v15, Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;->sixthTime:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_11

    .line 1746
    iget v4, v15, Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;->sixthCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v15, Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;->sixthCount:I

    goto/16 :goto_0

    .line 1747
    :cond_11
    iget v4, v15, Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;->seventhRow:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_12

    .line 1749
    move/from16 v0, v17

    move-object v1, v15

    iput v0, v1, Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;->seventhRow:I

    .line 1750
    iput-wide v6, v15, Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;->seventhTime:J

    .line 1751
    const/4 v4, 0x1

    iput v4, v15, Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;->seventhCount:I

    goto/16 :goto_0

    .line 1752
    :cond_12
    iget-wide v4, v15, Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;->seventhTime:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_13

    .line 1753
    iget v4, v15, Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;->seventhCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v15, Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;->seventhCount:I

    goto/16 :goto_0

    .line 1759
    .end local v6           #start:J
    .end local v8           #end:J
    .end local v10           #allDay:Z
    .end local v11           #eventFlip:J
    .end local v13           #eventId:J
    .end local v17           #row:I
    :cond_13
    return-object v15
.end method

.method private calculateUpdateTime(Landroid/database/Cursor;Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;)J
    .locals 12
    .parameter "cursor"
    .parameter "events"

    .prologue
    .line 425
    const-wide/16 v10, -0x1

    .line 426
    .local v10, result:J
    iget v0, p2, Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;->primaryRow:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 427
    iget v0, p2, Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;->primaryRow:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 428
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 429
    .local v2, start:J
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 430
    .local v4, end:J
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    move v6, v0

    .line 433
    .local v6, allDay:Z
    :goto_0
    if-eqz v6, :cond_0

    .line 435
    new-instance v9, Landroid/text/format/Time;

    invoke-direct {v9}, Landroid/text/format/Time;-><init>()V

    .line 436
    .local v9, recycle:Landroid/text/format/Time;
    invoke-direct {p0, v9, v2, v3}, Lcom/android/providers/calendar/CalendarAppWidgetService;->convertUtcToLocal(Landroid/text/format/Time;J)J

    move-result-wide v2

    .line 437
    invoke-direct {p0, v9, v4, v5}, Lcom/android/providers/calendar/CalendarAppWidgetService;->convertUtcToLocal(Landroid/text/format/Time;J)J

    move-result-wide v4

    .end local v9           #recycle:Landroid/text/format/Time;
    :cond_0
    move-object v0, p0

    move-object v1, p1

    .line 440
    invoke-direct/range {v0 .. v6}, Lcom/android/providers/calendar/CalendarAppWidgetService;->getEventFlip(Landroid/database/Cursor;JJZ)J

    move-result-wide v10

    .line 443
    invoke-direct {p0}, Lcom/android/providers/calendar/CalendarAppWidgetService;->getNextMidnightTimeMillis()J

    move-result-wide v7

    .line 444
    .local v7, midnight:J
    invoke-static {v7, v8, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    .line 446
    .end local v2           #start:J
    .end local v4           #end:J
    .end local v6           #allDay:Z
    .end local v7           #midnight:J
    :cond_1
    return-wide v10

    .line 430
    .restart local v2       #start:J
    .restart local v4       #end:J
    :cond_2
    const/4 v0, 0x0

    move v6, v0

    goto :goto_0
.end method

.method private convertUtcToLocal(Landroid/text/format/Time;J)J
    .locals 2
    .parameter "recycle"
    .parameter "utcTime"

    .prologue
    .line 408
    if-nez p1, :cond_0

    .line 409
    new-instance p1, Landroid/text/format/Time;

    .end local p1
    invoke-direct {p1}, Landroid/text/format/Time;-><init>()V

    .line 411
    .restart local p1
    :cond_0
    const-string v0, "UTC"

    iput-object v0, p1, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 412
    invoke-virtual {p1, p2, p3}, Landroid/text/format/Time;->set(J)V

    .line 413
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarAppWidgetService;->mTimeZone:Ljava/util/TimeZone;

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 414
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    return-wide v0
.end method

.method private drawStatusImage(Landroid/database/Cursor;)Landroid/graphics/Bitmap;
    .locals 24
    .parameter "cursor"

    .prologue
    .line 697
    const/high16 v7, -0x100

    const/4 v8, 0x3

    move-object/from16 v0, p1

    move v1, v8

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    const v9, -0x44000001

    and-int/2addr v8, v9

    or-int v6, v7, v8

    .line 698
    .local v6, color:I
    const/16 v7, 0xb

    move-object/from16 v0, p1

    move v1, v7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    .line 699
    .local v20, status:I
    const/16 v7, 0xa

    move-object/from16 v0, p1

    move v1, v7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    .line 701
    .local v22, sync_type:I
    sget v7, Lcom/android/providers/calendar/CalendarAppWidgetService;->sScale:F

    const/4 v8, 0x0

    sub-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    float-to-double v7, v7

    const-wide v9, 0x3eb0c6f7a0b5ed8dL

    cmpg-double v7, v7, v9

    if-gez v7, :cond_0

    .line 702
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/calendar/CalendarAppWidgetService;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v7, v7, Landroid/util/DisplayMetrics;->density:F

    sput v7, Lcom/android/providers/calendar/CalendarAppWidgetService;->sScale:F

    .line 703
    const/high16 v7, 0x4040

    sget v8, Lcom/android/providers/calendar/CalendarAppWidgetService;->sScale:F

    mul-float/2addr v7, v8

    const/high16 v8, 0x3f00

    add-float/2addr v7, v8

    float-to-int v7, v7

    sput v7, Lcom/android/providers/calendar/CalendarAppWidgetService;->sStatusWidth:I

    .line 706
    :cond_0
    sget v23, Lcom/android/providers/calendar/CalendarAppWidgetService;->sStatusWidth:I

    .line 707
    .local v23, width:I
    const/16 v15, 0x64

    .line 709
    .local v15, height:I
    mul-int/lit8 v7, v23, 0x3

    sget-object v8, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v15, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 710
    .local v13, b:Landroid/graphics/Bitmap;
    invoke-virtual {v13, v6}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 711
    new-instance v14, Landroid/graphics/Canvas;

    invoke-direct {v14, v13}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 714
    .local v14, canvas:Landroid/graphics/Canvas;
    new-instance v16, Landroid/graphics/Paint;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Paint;-><init>()V

    .line 715
    .local v16, p:Landroid/graphics/Paint;
    sget-object v7, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, v16

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 717
    const/16 v21, 0x0

    .line 718
    .local v21, statusWidth:I
    const/4 v7, 0x1

    move/from16 v0, v22

    move v1, v7

    if-ne v0, v1, :cond_1

    if-ltz v20, :cond_1

    .line 719
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/calendar/CalendarAppWidgetService;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    .line 720
    .local v17, r:Landroid/content/res/Resources;
    packed-switch v20, :pswitch_data_0

    .line 743
    .end local v17           #r:Landroid/content/res/Resources;
    :cond_1
    :goto_0
    return-object v13

    .line 722
    .restart local v17       #r:Landroid/content/res/Resources;
    :pswitch_0
    new-instance v5, Lcom/android/providers/calendar/CalendarStatusDrawable;

    const/4 v7, -0x1

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x1

    move v8, v6

    invoke-direct/range {v5 .. v12}, Lcom/android/providers/calendar/CalendarStatusDrawable;-><init>(IIIZZZZ)V

    .line 723
    .local v5, d:Landroid/graphics/drawable/Drawable;
    if-eqz v5, :cond_1

    .line 724
    const/4 v7, 0x0

    const/4 v8, 0x0

    mul-int/lit8 v9, v23, 0x3

    invoke-virtual {v5, v7, v8, v9, v15}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 725
    invoke-virtual {v5, v14}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 729
    .end local v5           #d:Landroid/graphics/drawable/Drawable;
    :pswitch_1
    const v7, 0x7f060009

    move-object/from16 v0, v17

    move v1, v7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    move-object/from16 v0, v16

    move v1, v7

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 730
    new-instance v18, Landroid/graphics/RectF;

    move/from16 v0, v23

    int-to-float v0, v0

    move v7, v0

    div-int/lit8 v8, v15, 0xa

    int-to-float v8, v8

    mul-int/lit8 v9, v23, 0x2

    int-to-float v9, v9

    div-int/lit8 v10, v15, 0xa

    sub-int v10, v15, v10

    int-to-float v10, v10

    move-object/from16 v0, v18

    move v1, v7

    move v2, v8

    move v3, v9

    move v4, v10

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 731
    .local v18, rect1:Landroid/graphics/RectF;
    div-int/lit8 v7, v23, 0x2

    int-to-float v7, v7

    div-int/lit8 v8, v23, 0x2

    int-to-float v8, v8

    move-object v0, v14

    move-object/from16 v1, v18

    move v2, v7

    move v3, v8

    move-object/from16 v4, v16

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 734
    .end local v18           #rect1:Landroid/graphics/RectF;
    :pswitch_2
    const v7, 0x7f06000a

    move-object/from16 v0, v17

    move v1, v7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    move-object/from16 v0, v16

    move v1, v7

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 735
    new-instance v19, Landroid/graphics/RectF;

    move/from16 v0, v23

    int-to-float v0, v0

    move v7, v0

    div-int/lit8 v8, v15, 0xa

    int-to-float v8, v8

    mul-int/lit8 v9, v23, 0x2

    int-to-float v9, v9

    div-int/lit8 v10, v15, 0xa

    sub-int v10, v15, v10

    int-to-float v10, v10

    move-object/from16 v0, v19

    move v1, v7

    move v2, v8

    move v3, v9

    move v4, v10

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 736
    .local v19, rect2:Landroid/graphics/RectF;
    div-int/lit8 v7, v23, 0x2

    int-to-float v7, v7

    div-int/lit8 v8, v23, 0x2

    int-to-float v8, v8

    move-object v0, v14

    move-object/from16 v1, v19

    move v2, v7

    move v3, v8

    move-object/from16 v4, v16

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 720
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private formatDebugTime(JJ)Ljava/lang/String;
    .locals 11
    .parameter "unixTime"
    .parameter "now"

    .prologue
    const-wide/32 v9, 0xea60

    const/4 v5, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 388
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    .line 389
    .local v2, time:Landroid/text/format/Time;
    invoke-virtual {v2, p1, p2}, Landroid/text/format/Time;->set(J)V

    .line 391
    sub-long v0, p1, p3

    .line 392
    .local v0, delta:J
    cmp-long v3, v0, v9

    if-lez v3, :cond_0

    .line 393
    div-long/2addr v0, v9

    .line 394
    const-string v3, "[%d] %s (%+d mins)"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v6

    const-string v5, "%H:%M:%S"

    invoke-virtual {v2, v5}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 397
    :goto_0
    return-object v3

    .line 396
    :cond_0
    const-wide/16 v3, 0x3e8

    div-long/2addr v0, v3

    .line 397
    const-string v3, "[%d] %s (%+d secs)"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v6

    const-string v5, "%H:%M:%S"

    invoke-virtual {v2, v5}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private getAppWidgetNoEvents(Landroid/content/Context;)Landroid/widget/RemoteViews;
    .locals 11
    .parameter "context"

    .prologue
    .line 1027
    const/4 v2, 0x0

    .line 1028
    .local v2, layoutData:Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 1030
    .local v4, res:Landroid/content/res/Resources;
    iget v8, p0, Lcom/android/providers/calendar/CalendarAppWidgetService;->mWidgetSpanX:I

    iget v9, p0, Lcom/android/providers/calendar/CalendarAppWidgetService;->mWidgetSpanY:I

    invoke-static {p1, v8, v9}, Lcom/android/providers/calendar/CalendarAppWidgetService;->getLayoutData(Landroid/content/Context;II)Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;

    move-result-object v2

    .line 1031
    new-instance v7, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    iget v9, v2, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->layoutId:I

    invoke-direct {v7, v8, v9}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 1032
    .local v7, views:Landroid/widget/RemoteViews;
    iget v8, p0, Lcom/android/providers/calendar/CalendarAppWidgetService;->mWidgetId:I

    invoke-static {p1, v8}, Lcom/android/providers/calendar/CalendarAppWidgetService;->getNoEventState(Landroid/content/Context;I)I

    move-result v5

    .line 1034
    .local v5, state:I
    iget v8, p0, Lcom/android/providers/calendar/CalendarAppWidgetService;->mScaleDPI:I

    const/16 v9, 0xf0

    if-eq v8, v9, :cond_0

    iget v8, p0, Lcom/android/providers/calendar/CalendarAppWidgetService;->mScaleDPI:I

    const/16 v9, 0xa0

    if-ne v8, v9, :cond_5

    .line 1036
    :cond_0
    const/4 v1, 0x0

    .line 1037
    .local v1, intent:Landroid/content/Intent;
    const/4 v3, 0x0

    .line 1041
    .local v3, pendingIntent:Landroid/app/PendingIntent;
    iget v8, v2, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->layoutId:I

    const v9, 0x7f030010

    if-ne v8, v9, :cond_1

    .line 1042
    invoke-direct {p0, v7, p1}, Lcom/android/providers/calendar/CalendarAppWidgetService;->AddLunarDate(Landroid/widget/RemoteViews;Landroid/content/Context;)V

    .line 1043
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/CalendarAppWidgetService;->getDayPendingIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v3

    .line 1044
    const/high16 v8, 0x7f0b

    invoke-virtual {v7, v8, v3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 1197
    :goto_0
    return-object v7

    .line 1045
    :cond_1
    iget v8, v2, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->layoutId:I

    const v9, 0x7f030019

    if-ne v8, v9, :cond_2

    .line 1047
    invoke-direct {p0, v7, p1}, Lcom/android/providers/calendar/CalendarAppWidgetService;->AddSolarDate(Landroid/widget/RemoteViews;Landroid/content/Context;)V

    .line 1048
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/CalendarAppWidgetService;->getDayPendingIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v3

    .line 1049
    const/high16 v8, 0x7f0b

    invoke-virtual {v7, v8, v3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    goto :goto_0

    .line 1050
    :cond_2
    iget v8, v2, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->layoutId:I

    const v9, 0x7f03001a

    if-eq v8, v9, :cond_3

    iget v8, v2, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->layoutId:I

    const v9, 0x7f03001e

    if-ne v8, v9, :cond_4

    .line 1051
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/CalendarAppWidgetService;->getDayPendingIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v3

    .line 1052
    invoke-direct {p0, p1, v7, v2, v3}, Lcom/android/providers/calendar/CalendarAppWidgetService;->setHeader(Landroid/content/Context;Landroid/widget/RemoteViews;Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;Landroid/app/PendingIntent;)Landroid/widget/RemoteViews;

    move-result-object v7

    .line 1053
    const/high16 v8, 0x7f0b

    invoke-virtual {v7, v8, v3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    goto :goto_0

    .line 1057
    :cond_4
    const v8, 0x7f0b003c

    const/16 v9, 0x8

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1058
    const v8, 0x7f0b0043

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1059
    const-string v8, "CalAppWidgetService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "state: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1061
    packed-switch v5, :pswitch_data_0

    .line 1092
    const v8, 0x7f0b0030

    const v9, 0x7f08000c

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1093
    const v8, 0x7f0b0031

    const/16 v9, 0x8

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1094
    const v8, 0x7f0b0032

    const/16 v9, 0x8

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1096
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/CalendarAppWidgetService;->getDayPendingIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v3

    .line 1100
    :goto_1
    invoke-direct {p0, p1, v7, v2, v3}, Lcom/android/providers/calendar/CalendarAppWidgetService;->setHeader(Landroid/content/Context;Landroid/widget/RemoteViews;Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;Landroid/app/PendingIntent;)Landroid/widget/RemoteViews;

    move-result-object v7

    .line 1101
    const/high16 v8, 0x7f0b

    invoke-virtual {v7, v8, v3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    goto/16 :goto_0

    .line 1063
    :pswitch_0
    const v8, 0x7f0b0030

    const v9, 0x7f08000e

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1064
    const v8, 0x7f0b0031

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1065
    const v8, 0x7f0b0032

    const/16 v9, 0x8

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1066
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1067
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v8, "com.motorola.blur.setup.ACTION_MANAGE"

    invoke-virtual {v1, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1068
    const-string v8, "vnd.android.cursor.dir/vnd.service.account"

    invoke-virtual {v1, v8}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1069
    const/high16 v8, 0x1420

    invoke-virtual {v1, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1071
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {p1, v8, v1, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 1072
    goto :goto_1

    .line 1074
    :pswitch_1
    const v8, 0x7f0b0030

    const v9, 0x7f080009

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1075
    const v8, 0x7f0b0031

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1076
    const v8, 0x7f0b0032

    const/16 v9, 0x8

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1077
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1078
    .restart local v1       #intent:Landroid/content/Intent;
    new-instance v8, Landroid/content/ComponentName;

    const-string v9, "com.android.calendar"

    const-string v10, "com.android.calendar.SelectCalendarsActivity"

    invoke-direct {v8, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1079
    const-string v8, "android.intent.action.MAIN"

    invoke-virtual {v1, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1080
    const/high16 v8, 0x1420

    invoke-virtual {v1, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1082
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {p1, v8, v1, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 1083
    goto :goto_1

    .line 1085
    :pswitch_2
    const v8, 0x7f0b0030

    const v9, 0x7f080009

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1086
    const v8, 0x7f0b0031

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1087
    const v8, 0x7f0b0032

    const/16 v9, 0x8

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1088
    const-string v8, "com.android.providers.calendar"

    const-string v9, "com.android.providers.calendar.CalendarAppWidgetSettingActivity"

    invoke-direct {p0, p1, v8, v9}, Lcom/android/providers/calendar/CalendarAppWidgetService;->getSettingPendingIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v3

    .line 1089
    goto/16 :goto_1

    .line 1105
    .end local v1           #intent:Landroid/content/Intent;
    .end local v3           #pendingIntent:Landroid/app/PendingIntent;
    :cond_5
    invoke-direct {p0, p1, v7, v2}, Lcom/android/providers/calendar/CalendarAppWidgetService;->setHeader(Landroid/content/Context;Landroid/widget/RemoteViews;Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;)Landroid/widget/RemoteViews;

    move-result-object v7

    .line 1107
    const-string v6, ""

    .line 1108
    .local v6, str:Ljava/lang/String;
    packed-switch v5, :pswitch_data_1

    .line 1120
    :goto_2
    const/4 v8, 0x1

    invoke-direct {p0, v7, v8}, Lcom/android/providers/calendar/CalendarAppWidgetService;->setNoEventsVisible(Landroid/widget/RemoteViews;Z)V

    .line 1121
    const v8, 0x7f0b0002

    invoke-virtual {v7, v8, v6}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1122
    iget-boolean v8, v2, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->displaySecondRow:Z

    if-eqz v8, :cond_6

    .line 1123
    new-instance v0, Lcom/android/providers/calendar/CalendarAppWidgetService$EventInfoIds;

    const/4 v8, 0x0

    invoke-direct {v0, v8}, Lcom/android/providers/calendar/CalendarAppWidgetService$EventInfoIds;-><init>(Lcom/android/providers/calendar/CalendarAppWidgetService$1;)V

    .line 1124
    .local v0, eventInfoIds:Lcom/android/providers/calendar/CalendarAppWidgetService$EventInfoIds;
    const v8, 0x7f0b0040

    iput v8, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$EventInfoIds;->rowId:I

    .line 1125
    const v8, 0x7f0b000d

    iput v8, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$EventInfoIds;->whenId:I

    .line 1126
    const v8, 0x7f0b0011

    iput v8, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$EventInfoIds;->conflictId:I

    .line 1127
    const v8, 0x7f0b000e

    iput v8, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$EventInfoIds;->titleId:I

    .line 1128
    const v8, 0x7f0b000f

    iput v8, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$EventInfoIds;->whereId:I

    .line 1129
    const v8, 0x7f0b000c

    iput v8, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$EventInfoIds;->bkgImageId:I

    .line 1130
    const v8, 0x7f0b0010

    iput v8, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$EventInfoIds;->statusImageId:I

    .line 1131
    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-direct {p0, v7, v0, v8, v9}, Lcom/android/providers/calendar/CalendarAppWidgetService;->setNoEventsVisibleEventRow(Landroid/widget/RemoteViews;Lcom/android/providers/calendar/CalendarAppWidgetService$EventInfoIds;Landroid/database/Cursor;Z)V

    .line 1133
    .end local v0           #eventInfoIds:Lcom/android/providers/calendar/CalendarAppWidgetService$EventInfoIds;
    :cond_6
    iget-boolean v8, v2, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->displayThirdRow:Z

    if-eqz v8, :cond_7

    .line 1134
    new-instance v0, Lcom/android/providers/calendar/CalendarAppWidgetService$EventInfoIds;

    const/4 v8, 0x0

    invoke-direct {v0, v8}, Lcom/android/providers/calendar/CalendarAppWidgetService$EventInfoIds;-><init>(Lcom/android/providers/calendar/CalendarAppWidgetService$1;)V

    .line 1135
    .restart local v0       #eventInfoIds:Lcom/android/providers/calendar/CalendarAppWidgetService$EventInfoIds;
    const v8, 0x7f0b0042

    iput v8, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$EventInfoIds;->rowId:I

    .line 1136
    const v8, 0x7f0b0013

    iput v8, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$EventInfoIds;->whenId:I

    .line 1137
    const v8, 0x7f0b0017

    iput v8, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$EventInfoIds;->conflictId:I

    .line 1138
    const v8, 0x7f0b0014

    iput v8, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$EventInfoIds;->titleId:I

    .line 1139
    const v8, 0x7f0b0015

    iput v8, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$EventInfoIds;->whereId:I

    .line 1140
    const v8, 0x7f0b0012

    iput v8, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$EventInfoIds;->bkgImageId:I

    .line 1141
    const v8, 0x7f0b0016

    iput v8, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$EventInfoIds;->statusImageId:I

    .line 1142
    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-direct {p0, v7, v0, v8, v9}, Lcom/android/providers/calendar/CalendarAppWidgetService;->setNoEventsVisibleEventRow(Landroid/widget/RemoteViews;Lcom/android/providers/calendar/CalendarAppWidgetService$EventInfoIds;Landroid/database/Cursor;Z)V

    .line 1144
    .end local v0           #eventInfoIds:Lcom/android/providers/calendar/CalendarAppWidgetService$EventInfoIds;
    :cond_7
    iget-boolean v8, v2, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->displayFourthRow:Z

    if-eqz v8, :cond_8

    .line 1145
    new-instance v0, Lcom/android/providers/calendar/CalendarAppWidgetService$EventInfoIds;

    const/4 v8, 0x0

    invoke-direct {v0, v8}, Lcom/android/providers/calendar/CalendarAppWidgetService$EventInfoIds;-><init>(Lcom/android/providers/calendar/CalendarAppWidgetService$1;)V

    .line 1146
    .restart local v0       #eventInfoIds:Lcom/android/providers/calendar/CalendarAppWidgetService$EventInfoIds;
    const v8, 0x7f0b0044

    iput v8, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$EventInfoIds;->rowId:I

    .line 1147
    const v8, 0x7f0b0019

    iput v8, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$EventInfoIds;->whenId:I

    .line 1148
    const v8, 0x7f0b001d

    iput v8, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$EventInfoIds;->conflictId:I

    .line 1149
    const v8, 0x7f0b001a

    iput v8, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$EventInfoIds;->titleId:I

    .line 1150
    const v8, 0x7f0b001b

    iput v8, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$EventInfoIds;->whereId:I

    .line 1151
    const v8, 0x7f0b0018

    iput v8, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$EventInfoIds;->bkgImageId:I

    .line 1152
    const v8, 0x7f0b001c

    iput v8, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$EventInfoIds;->statusImageId:I

    .line 1153
    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-direct {p0, v7, v0, v8, v9}, Lcom/android/providers/calendar/CalendarAppWidgetService;->setNoEventsVisibleEventRow(Landroid/widget/RemoteViews;Lcom/android/providers/calendar/CalendarAppWidgetService$EventInfoIds;Landroid/database/Cursor;Z)V

    .line 1155
    .end local v0           #eventInfoIds:Lcom/android/providers/calendar/CalendarAppWidgetService$EventInfoIds;
    :cond_8
    iget-boolean v8, v2, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->displayFifthRow:Z

    if-eqz v8, :cond_9

    .line 1156
    new-instance v0, Lcom/android/providers/calendar/CalendarAppWidgetService$EventInfoIds;

    const/4 v8, 0x0

    invoke-direct {v0, v8}, Lcom/android/providers/calendar/CalendarAppWidgetService$EventInfoIds;-><init>(Lcom/android/providers/calendar/CalendarAppWidgetService$1;)V

    .line 1157
    .restart local v0       #eventInfoIds:Lcom/android/providers/calendar/CalendarAppWidgetService$EventInfoIds;
    const v8, 0x7f0b0046

    iput v8, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$EventInfoIds;->rowId:I

    .line 1158
    const v8, 0x7f0b001f

    iput v8, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$EventInfoIds;->whenId:I

    .line 1159
    const v8, 0x7f0b0023

    iput v8, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$EventInfoIds;->conflictId:I

    .line 1160
    const v8, 0x7f0b0020

    iput v8, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$EventInfoIds;->titleId:I

    .line 1161
    const v8, 0x7f0b0021

    iput v8, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$EventInfoIds;->whereId:I

    .line 1162
    const v8, 0x7f0b001e

    iput v8, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$EventInfoIds;->bkgImageId:I

    .line 1163
    const v8, 0x7f0b0022

    iput v8, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$EventInfoIds;->statusImageId:I

    .line 1164
    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-direct {p0, v7, v0, v8, v9}, Lcom/android/providers/calendar/CalendarAppWidgetService;->setNoEventsVisibleEventRow(Landroid/widget/RemoteViews;Lcom/android/providers/calendar/CalendarAppWidgetService$EventInfoIds;Landroid/database/Cursor;Z)V

    .line 1167
    .end local v0           #eventInfoIds:Lcom/android/providers/calendar/CalendarAppWidgetService$EventInfoIds;
    :cond_9
    iget-boolean v8, v2, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->displaySixthRow:Z

    if-eqz v8, :cond_a

    .line 1168
    new-instance v0, Lcom/android/providers/calendar/CalendarAppWidgetService$EventInfoIds;

    const/4 v8, 0x0

    invoke-direct {v0, v8}, Lcom/android/providers/calendar/CalendarAppWidgetService$EventInfoIds;-><init>(Lcom/android/providers/calendar/CalendarAppWidgetService$1;)V

    .line 1169
    .restart local v0       #eventInfoIds:Lcom/android/providers/calendar/CalendarAppWidgetService$EventInfoIds;
    const v8, 0x7f0b0048

    iput v8, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$EventInfoIds;->rowId:I

    .line 1170
    const v8, 0x7f0b0026

    iput v8, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$EventInfoIds;->whenId:I

    .line 1171
    const v8, 0x7f0b0029

    iput v8, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$EventInfoIds;->conflictId:I

    .line 1172
    const v8, 0x7f0b0027

    iput v8, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$EventInfoIds;->titleId:I

    .line 1173
    const v8, 0x7f0b0028

    iput v8, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$EventInfoIds;->whereId:I

    .line 1174
    const v8, 0x7f0b0024

    iput v8, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$EventInfoIds;->bkgImageId:I

    .line 1175
    const v8, 0x7f0b0025

    iput v8, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$EventInfoIds;->statusImageId:I

    .line 1176
    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-direct {p0, v7, v0, v8, v9}, Lcom/android/providers/calendar/CalendarAppWidgetService;->setNoEventsVisibleEventRow(Landroid/widget/RemoteViews;Lcom/android/providers/calendar/CalendarAppWidgetService$EventInfoIds;Landroid/database/Cursor;Z)V

    .line 1179
    .end local v0           #eventInfoIds:Lcom/android/providers/calendar/CalendarAppWidgetService$EventInfoIds;
    :cond_a
    iget-boolean v8, v2, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->displaySeventhRow:Z

    if-eqz v8, :cond_b

    .line 1180
    new-instance v0, Lcom/android/providers/calendar/CalendarAppWidgetService$EventInfoIds;

    const/4 v8, 0x0

    invoke-direct {v0, v8}, Lcom/android/providers/calendar/CalendarAppWidgetService$EventInfoIds;-><init>(Lcom/android/providers/calendar/CalendarAppWidgetService$1;)V

    .line 1181
    .restart local v0       #eventInfoIds:Lcom/android/providers/calendar/CalendarAppWidgetService$EventInfoIds;
    const v8, 0x7f0b004a

    iput v8, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$EventInfoIds;->rowId:I

    .line 1182
    const v8, 0x7f0b002c

    iput v8, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$EventInfoIds;->whenId:I

    .line 1183
    const v8, 0x7f0b002f

    iput v8, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$EventInfoIds;->conflictId:I

    .line 1184
    const v8, 0x7f0b002d

    iput v8, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$EventInfoIds;->titleId:I

    .line 1185
    const v8, 0x7f0b002e

    iput v8, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$EventInfoIds;->whereId:I

    .line 1186
    const v8, 0x7f0b002a

    iput v8, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$EventInfoIds;->bkgImageId:I

    .line 1187
    const v8, 0x7f0b002b

    iput v8, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$EventInfoIds;->statusImageId:I

    .line 1188
    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-direct {p0, v7, v0, v8, v9}, Lcom/android/providers/calendar/CalendarAppWidgetService;->setNoEventsVisibleEventRow(Landroid/widget/RemoteViews;Lcom/android/providers/calendar/CalendarAppWidgetService$EventInfoIds;Landroid/database/Cursor;Z)V

    .line 1191
    .end local v0           #eventInfoIds:Lcom/android/providers/calendar/CalendarAppWidgetService$EventInfoIds;
    :cond_b
    new-instance v1, Landroid/content/Intent;

    const-string v8, "com.motorola.blur.home.ACTION_EMPTY_CLICK"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    iget v10, p0, Lcom/android/providers/calendar/CalendarAppWidgetService;->mWidgetId:I

    invoke-static {v9, v10}, Lcom/android/providers/calendar/CalendarWidgetProvider;->getWidgetUri(Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v9

    invoke-direct {v1, v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1193
    .restart local v1       #intent:Landroid/content/Intent;
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {p1, v8, v1, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 1194
    .restart local v3       #pendingIntent:Landroid/app/PendingIntent;
    const/high16 v8, 0x7f0b

    invoke-virtual {v7, v8, v3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    goto/16 :goto_0

    .line 1110
    .end local v1           #intent:Landroid/content/Intent;
    .end local v3           #pendingIntent:Landroid/app/PendingIntent;
    :pswitch_3
    const v8, 0x7f08000e

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1111
    goto/16 :goto_2

    .line 1114
    :pswitch_4
    const v8, 0x7f080009

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1115
    goto/16 :goto_2

    .line 1117
    :pswitch_5
    const v8, 0x7f08000c

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_2

    .line 1061
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 1108
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private getAppWidgetUpdate(Landroid/content/Context;Landroid/database/Cursor;Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;)Landroid/widget/RemoteViews;
    .locals 12
    .parameter "context"
    .parameter "cursor"
    .parameter "events"

    .prologue
    const v11, 0x7f0b0042

    const v10, 0x7f0b0040

    const/high16 v9, 0x7f0b

    const/4 v8, 0x0

    const/16 v7, 0x8

    .line 754
    const/4 v4, 0x0

    .line 755
    .local v4, views:Landroid/widget/RemoteViews;
    const/4 v1, 0x0

    .line 758
    .local v1, layoutData:Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;
    iget v5, p0, Lcom/android/providers/calendar/CalendarAppWidgetService;->mWidgetSpanX:I

    iget v6, p0, Lcom/android/providers/calendar/CalendarAppWidgetService;->mWidgetSpanY:I

    invoke-static {p1, v5, v6}, Lcom/android/providers/calendar/CalendarAppWidgetService;->getLayoutData(Landroid/content/Context;II)Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;

    move-result-object v1

    .line 759
    new-instance v4, Landroid/widget/RemoteViews;

    .end local v4           #views:Landroid/widget/RemoteViews;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iget v6, v1, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->layoutId:I

    invoke-direct {v4, v5, v6}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 762
    .restart local v4       #views:Landroid/widget/RemoteViews;
    iget v5, v1, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->layoutId:I

    const v6, 0x7f030010

    if-ne v5, v6, :cond_1

    .line 763
    const-string v5, "CalAppWidgetService"

    const-string v6, "kang suchul 66666666666666"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    invoke-direct {p0, v4, p1}, Lcom/android/providers/calendar/CalendarAppWidgetService;->AddLunarDate(Landroid/widget/RemoteViews;Landroid/content/Context;)V

    .line 765
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/CalendarAppWidgetService;->getDayPendingIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v3

    .line 766
    .local v3, pendingIntent:Landroid/app/PendingIntent;
    invoke-virtual {v4, v9, v3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 1018
    :cond_0
    :goto_0
    return-object v4

    .line 767
    .end local v3           #pendingIntent:Landroid/app/PendingIntent;
    :cond_1
    iget v5, v1, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->layoutId:I

    const v6, 0x7f030019

    if-ne v5, v6, :cond_2

    .line 769
    invoke-direct {p0, v4, p1}, Lcom/android/providers/calendar/CalendarAppWidgetService;->AddSolarDate(Landroid/widget/RemoteViews;Landroid/content/Context;)V

    .line 770
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/CalendarAppWidgetService;->getDayPendingIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v3

    .line 771
    .restart local v3       #pendingIntent:Landroid/app/PendingIntent;
    invoke-virtual {v4, v9, v3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    goto :goto_0

    .line 772
    .end local v3           #pendingIntent:Landroid/app/PendingIntent;
    :cond_2
    iget v5, v1, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->layoutId:I

    const v6, 0x7f03001a

    if-eq v5, v6, :cond_3

    iget v5, v1, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->layoutId:I

    const v6, 0x7f03001e

    if-ne v5, v6, :cond_4

    .line 773
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/CalendarAppWidgetService;->getDayPendingIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v3

    .line 774
    .restart local v3       #pendingIntent:Landroid/app/PendingIntent;
    invoke-direct {p0, p1, v4, v1, v3}, Lcom/android/providers/calendar/CalendarAppWidgetService;->setHeader(Landroid/content/Context;Landroid/widget/RemoteViews;Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;Landroid/app/PendingIntent;)Landroid/widget/RemoteViews;

    move-result-object v4

    .line 775
    invoke-virtual {v4, v9, v3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    goto :goto_0

    .line 779
    .end local v3           #pendingIntent:Landroid/app/PendingIntent;
    :cond_4
    iget v5, p0, Lcom/android/providers/calendar/CalendarAppWidgetService;->mScaleDPI:I

    const/16 v6, 0xf0

    if-eq v5, v6, :cond_5

    iget v5, p0, Lcom/android/providers/calendar/CalendarAppWidgetService;->mScaleDPI:I

    const/16 v6, 0xa0

    if-ne v5, v6, :cond_6

    .line 780
    :cond_5
    const v5, 0x7f0b003c

    invoke-virtual {v4, v5, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 781
    const v5, 0x7f0b0043

    invoke-virtual {v4, v5, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 782
    const v5, 0x7f0b0032

    invoke-virtual {v4, v5, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 786
    :cond_6
    iget v5, p3, Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;->primaryRow:I

    invoke-interface {p2, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 788
    new-instance v0, Lcom/android/providers/calendar/CalendarAppWidgetService$EventInfoIds;

    const/4 v5, 0x0

    invoke-direct {v0, v5}, Lcom/android/providers/calendar/CalendarAppWidgetService$EventInfoIds;-><init>(Lcom/android/providers/calendar/CalendarAppWidgetService$1;)V

    .line 790
    .local v0, eventInfoIds:Lcom/android/providers/calendar/CalendarAppWidgetService$EventInfoIds;
    const v5, 0x7f0b003e

    iput v5, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$EventInfoIds;->rowId:I

    .line 791
    const v5, 0x7f0b0006

    iput v5, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$EventInfoIds;->whenId:I

    .line 792
    const v5, 0x7f0b0008

    iput v5, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$EventInfoIds;->conflictId:I

    .line 793
    iget v5, p3, Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;->primaryCount:I

    iput v5, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$EventInfoIds;->conflictCount:I

    .line 794
    const v5, 0x7f0b0009

    iput v5, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$EventInfoIds;->titleId:I

    .line 795
    const v5, 0x7f0b0007

    iput v5, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$EventInfoIds;->whereId:I

    .line 796
    const v5, 0x7f0b000a

    iput v5, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$EventInfoIds;->bkgImageId:I

    .line 797
    const v5, 0x7f0b000b

    iput v5, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$EventInfoIds;->statusImageId:I

    .line 799
    invoke-direct {p0, p1, v4, v1}, Lcom/android/providers/calendar/CalendarAppWidgetService;->setHeader(Landroid/content/Context;Landroid/widget/RemoteViews;Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;)Landroid/widget/RemoteViews;

    move-result-object v4

    .line 802
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/CalendarAppWidgetService;->getDayPendingIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v3

    .line 803
    .restart local v3       #pendingIntent:Landroid/app/PendingIntent;
    invoke-virtual {v4, v9, v3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 806
    iget-boolean v5, v1, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->displayFirstRow:Z

    if-eqz v5, :cond_7

    .line 807
    invoke-direct {p0, p1, p2, v4, v0}, Lcom/android/providers/calendar/CalendarAppWidgetService;->setEventRow(Landroid/content/Context;Landroid/database/Cursor;Landroid/widget/RemoteViews;Lcom/android/providers/calendar/CalendarAppWidgetService$EventInfoIds;)Landroid/widget/RemoteViews;

    move-result-object v4

    .line 810
    :cond_7
    iget-boolean v5, v1, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->displaySecondRow:Z

    if-eqz v5, :cond_9

    .line 811
    iget v5, p3, Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;->secondaryCount:I

    if-lez v5, :cond_15

    .line 812
    invoke-interface {p2}, Landroid/database/Cursor;->getPosition()I

    move-result v2

    .line 813
    .local v2, nextPosition:I
    iget v5, p3, Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;->primaryCount:I

    if-lez v5, :cond_13

    .line 814
    iget v5, p3, Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;->primaryCount:I

    add-int/2addr v2, v5

    .line 818
    :goto_1
    invoke-interface {p2, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 819
    iput v10, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$EventInfoIds;->rowId:I

    .line 820
    const v5, 0x7f0b000d

    iput v5, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$EventInfoIds;->whenId:I

    .line 821
    const v5, 0x7f0b0011

    iput v5, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$EventInfoIds;->conflictId:I

    .line 822
    iget v5, p3, Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;->secondaryCount:I

    iput v5, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$EventInfoIds;->conflictCount:I

    .line 823
    const v5, 0x7f0b000e

    iput v5, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$EventInfoIds;->titleId:I

    .line 824
    const v5, 0x7f0b000f

    iput v5, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$EventInfoIds;->whereId:I

    .line 825
    const v5, 0x7f0b000c

    iput v5, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$EventInfoIds;->bkgImageId:I

    .line 826
    const v5, 0x7f0b0010

    iput v5, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$EventInfoIds;->statusImageId:I

    .line 827
    iget v5, v1, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->forceSecondRow:I

    if-nez v5, :cond_8

    .line 828
    invoke-virtual {v4, v10, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 829
    const v5, 0x7f0b0041

    invoke-virtual {v4, v5, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 831
    :cond_8
    invoke-direct {p0, p1, p2, v4, v0}, Lcom/android/providers/calendar/CalendarAppWidgetService;->setEventRow(Landroid/content/Context;Landroid/database/Cursor;Landroid/widget/RemoteViews;Lcom/android/providers/calendar/CalendarAppWidgetService$EventInfoIds;)Landroid/widget/RemoteViews;

    move-result-object v4

    .line 842
    .end local v2           #nextPosition:I
    :cond_9
    :goto_2
    iget-boolean v5, v1, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->displayThirdRow:Z

    if-eqz v5, :cond_b

    .line 843
    iget v5, p3, Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;->thirdCount:I

    if-lez v5, :cond_18

    .line 844
    invoke-interface {p2}, Landroid/database/Cursor;->getPosition()I

    move-result v2

    .line 845
    .restart local v2       #nextPosition:I
    iget v5, p3, Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;->secondaryCount:I

    if-lez v5, :cond_16

    .line 846
    iget v5, p3, Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;->secondaryCount:I

    add-int/2addr v2, v5

    .line 850
    :goto_3
    invoke-interface {p2, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v5

    if-eqz v5, :cond_17

    .line 852
    iput v11, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$EventInfoIds;->rowId:I

    .line 853
    const v5, 0x7f0b0013

    iput v5, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$EventInfoIds;->whenId:I

    .line 854
    const v5, 0x7f0b0017

    iput v5, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$EventInfoIds;->conflictId:I

    .line 855
    iget v5, p3, Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;->thirdCount:I

    iput v5, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$EventInfoIds;->conflictCount:I

    .line 856
    const v5, 0x7f0b0014

    iput v5, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$EventInfoIds;->titleId:I

    .line 857
    const v5, 0x7f0b0015

    iput v5, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$EventInfoIds;->whereId:I

    .line 858
    const v5, 0x7f0b0012

    iput v5, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$EventInfoIds;->bkgImageId:I

    .line 859
    const v5, 0x7f0b0016

    iput v5, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$EventInfoIds;->statusImageId:I

    .line 860
    iget v5, v1, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->forceThirdRow:I

    if-nez v5, :cond_a

    .line 861
    const v5, 0x7f0b0035

    invoke-virtual {v4, v5, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 862
    invoke-virtual {v4, v11, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 864
    :cond_a
    invoke-direct {p0, p1, p2, v4, v0}, Lcom/android/providers/calendar/CalendarAppWidgetService;->setEventRow(Landroid/content/Context;Landroid/database/Cursor;Landroid/widget/RemoteViews;Lcom/android/providers/calendar/CalendarAppWidgetService$EventInfoIds;)Landroid/widget/RemoteViews;

    move-result-object v4

    .line 876
    .end local v2           #nextPosition:I
    :cond_b
    :goto_4
    iget-boolean v5, v1, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->displayFourthRow:Z

    if-eqz v5, :cond_d

    .line 877
    iget v5, p3, Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;->fourthCount:I

    if-lez v5, :cond_1b

    .line 878
    invoke-interface {p2}, Landroid/database/Cursor;->getPosition()I

    move-result v2

    .line 879
    .restart local v2       #nextPosition:I
    iget v5, p3, Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;->thirdCount:I

    if-lez v5, :cond_19

    .line 880
    iget v5, p3, Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;->thirdCount:I

    add-int/2addr v2, v5

    .line 884
    :goto_5
    invoke-interface {p2, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 886
    const v5, 0x7f0b0044

    iput v5, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$EventInfoIds;->rowId:I

    .line 887
    const v5, 0x7f0b0019

    iput v5, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$EventInfoIds;->whenId:I

    .line 888
    const v5, 0x7f0b001d

    iput v5, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$EventInfoIds;->conflictId:I

    .line 889
    iget v5, p3, Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;->fourthCount:I

    iput v5, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$EventInfoIds;->conflictCount:I

    .line 890
    const v5, 0x7f0b001a

    iput v5, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$EventInfoIds;->titleId:I

    .line 891
    const v5, 0x7f0b001b

    iput v5, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$EventInfoIds;->whereId:I

    .line 892
    const v5, 0x7f0b0018

    iput v5, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$EventInfoIds;->bkgImageId:I

    .line 893
    const v5, 0x7f0b001c

    iput v5, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$EventInfoIds;->statusImageId:I

    .line 894
    iget v5, v1, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->forceFourthRow:I

    if-nez v5, :cond_c

    .line 895
    const v5, 0x7f0b0045

    invoke-virtual {v4, v5, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 896
    const v5, 0x7f0b0044

    invoke-virtual {v4, v5, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 898
    :cond_c
    invoke-direct {p0, p1, p2, v4, v0}, Lcom/android/providers/calendar/CalendarAppWidgetService;->setEventRow(Landroid/content/Context;Landroid/database/Cursor;Landroid/widget/RemoteViews;Lcom/android/providers/calendar/CalendarAppWidgetService$EventInfoIds;)Landroid/widget/RemoteViews;

    move-result-object v4

    .line 910
    .end local v2           #nextPosition:I
    :cond_d
    :goto_6
    iget-boolean v5, v1, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->displayFifthRow:Z

    if-eqz v5, :cond_f

    .line 911
    iget v5, p3, Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;->fifthCount:I

    if-lez v5, :cond_1e

    .line 912
    invoke-interface {p2}, Landroid/database/Cursor;->getPosition()I

    move-result v2

    .line 913
    .restart local v2       #nextPosition:I
    iget v5, p3, Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;->fourthCount:I

    if-lez v5, :cond_1c

    .line 914
    iget v5, p3, Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;->fourthCount:I

    add-int/2addr v2, v5

    .line 918
    :goto_7
    invoke-interface {p2, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 920
    const v5, 0x7f0b0046

    iput v5, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$EventInfoIds;->rowId:I

    .line 921
    const v5, 0x7f0b001f

    iput v5, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$EventInfoIds;->whenId:I

    .line 922
    const v5, 0x7f0b0023

    iput v5, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$EventInfoIds;->conflictId:I

    .line 923
    iget v5, p3, Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;->fifthCount:I

    iput v5, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$EventInfoIds;->conflictCount:I

    .line 924
    const v5, 0x7f0b0020

    iput v5, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$EventInfoIds;->titleId:I

    .line 925
    const v5, 0x7f0b0021

    iput v5, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$EventInfoIds;->whereId:I

    .line 926
    const v5, 0x7f0b001e

    iput v5, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$EventInfoIds;->bkgImageId:I

    .line 927
    const v5, 0x7f0b0022

    iput v5, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$EventInfoIds;->statusImageId:I

    .line 928
    iget v5, v1, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->forceFifthRow:I

    if-nez v5, :cond_e

    .line 929
    const v5, 0x7f0b0047

    invoke-virtual {v4, v5, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 930
    const v5, 0x7f0b0046

    invoke-virtual {v4, v5, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 932
    :cond_e
    invoke-direct {p0, p1, p2, v4, v0}, Lcom/android/providers/calendar/CalendarAppWidgetService;->setEventRow(Landroid/content/Context;Landroid/database/Cursor;Landroid/widget/RemoteViews;Lcom/android/providers/calendar/CalendarAppWidgetService$EventInfoIds;)Landroid/widget/RemoteViews;

    move-result-object v4

    .line 945
    .end local v2           #nextPosition:I
    :cond_f
    :goto_8
    iget-boolean v5, v1, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->displaySixthRow:Z

    if-eqz v5, :cond_11

    .line 946
    iget v5, p3, Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;->sixthCount:I

    if-lez v5, :cond_21

    .line 947
    invoke-interface {p2}, Landroid/database/Cursor;->getPosition()I

    move-result v2

    .line 948
    .restart local v2       #nextPosition:I
    iget v5, p3, Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;->fifthCount:I

    if-lez v5, :cond_1f

    .line 949
    iget v5, p3, Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;->fifthCount:I

    add-int/2addr v2, v5

    .line 953
    :goto_9
    invoke-interface {p2, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v5

    if-eqz v5, :cond_20

    .line 954
    const v5, 0x7f0b0048

    iput v5, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$EventInfoIds;->rowId:I

    .line 955
    const v5, 0x7f0b0026

    iput v5, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$EventInfoIds;->whenId:I

    .line 956
    const v5, 0x7f0b0029

    iput v5, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$EventInfoIds;->conflictId:I

    .line 957
    iget v5, p3, Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;->sixthCount:I

    iput v5, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$EventInfoIds;->conflictCount:I

    .line 958
    const v5, 0x7f0b0027

    iput v5, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$EventInfoIds;->titleId:I

    .line 959
    const v5, 0x7f0b0028

    iput v5, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$EventInfoIds;->whereId:I

    .line 960
    const v5, 0x7f0b0024

    iput v5, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$EventInfoIds;->bkgImageId:I

    .line 961
    const v5, 0x7f0b0025

    iput v5, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$EventInfoIds;->statusImageId:I

    .line 962
    iget v5, v1, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->forceSixthRow:I

    if-nez v5, :cond_10

    .line 963
    const v5, 0x7f0b0049

    invoke-virtual {v4, v5, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 964
    const v5, 0x7f0b0048

    invoke-virtual {v4, v5, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 966
    :cond_10
    invoke-direct {p0, p1, p2, v4, v0}, Lcom/android/providers/calendar/CalendarAppWidgetService;->setEventRow(Landroid/content/Context;Landroid/database/Cursor;Landroid/widget/RemoteViews;Lcom/android/providers/calendar/CalendarAppWidgetService$EventInfoIds;)Landroid/widget/RemoteViews;

    move-result-object v4

    .line 978
    .end local v2           #nextPosition:I
    :cond_11
    :goto_a
    iget-boolean v5, v1, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->displaySeventhRow:Z

    if-eqz v5, :cond_0

    .line 979
    iget v5, p3, Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;->seventhCount:I

    if-lez v5, :cond_24

    .line 980
    invoke-interface {p2}, Landroid/database/Cursor;->getPosition()I

    move-result v2

    .line 981
    .restart local v2       #nextPosition:I
    iget v5, p3, Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;->sixthCount:I

    if-lez v5, :cond_22

    .line 982
    iget v5, p3, Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;->sixthCount:I

    add-int/2addr v2, v5

    .line 986
    :goto_b
    invoke-interface {p2, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v5

    if-eqz v5, :cond_23

    .line 987
    const v5, 0x7f0b004a

    iput v5, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$EventInfoIds;->rowId:I

    .line 988
    const v5, 0x7f0b002c

    iput v5, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$EventInfoIds;->whenId:I

    .line 989
    const v5, 0x7f0b002f

    iput v5, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$EventInfoIds;->conflictId:I

    .line 990
    iget v5, p3, Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;->seventhCount:I

    iput v5, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$EventInfoIds;->conflictCount:I

    .line 991
    const v5, 0x7f0b002d

    iput v5, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$EventInfoIds;->titleId:I

    .line 992
    const v5, 0x7f0b002e

    iput v5, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$EventInfoIds;->whereId:I

    .line 993
    const v5, 0x7f0b002a

    iput v5, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$EventInfoIds;->bkgImageId:I

    .line 994
    const v5, 0x7f0b002b

    iput v5, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$EventInfoIds;->statusImageId:I

    .line 995
    iget v5, v1, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->forceSixthRow:I

    if-nez v5, :cond_12

    .line 996
    const v5, 0x7f0b004b

    invoke-virtual {v4, v5, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 997
    const v5, 0x7f0b004a

    invoke-virtual {v4, v5, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 999
    :cond_12
    invoke-direct {p0, p1, p2, v4, v0}, Lcom/android/providers/calendar/CalendarAppWidgetService;->setEventRow(Landroid/content/Context;Landroid/database/Cursor;Landroid/widget/RemoteViews;Lcom/android/providers/calendar/CalendarAppWidgetService$EventInfoIds;)Landroid/widget/RemoteViews;

    move-result-object v4

    goto/16 :goto_0

    .line 816
    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 833
    :cond_14
    invoke-virtual {v4, v10, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 834
    const v5, 0x7f0b0041

    invoke-virtual {v4, v5, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_2

    .line 837
    .end local v2           #nextPosition:I
    :cond_15
    invoke-virtual {v4, v10, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 838
    const v5, 0x7f0b0041

    invoke-virtual {v4, v5, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_2

    .line 848
    .restart local v2       #nextPosition:I
    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_3

    .line 867
    :cond_17
    invoke-virtual {v4, v11, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 868
    const v5, 0x7f0b0035

    invoke-virtual {v4, v5, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_4

    .line 871
    .end local v2           #nextPosition:I
    :cond_18
    invoke-virtual {v4, v11, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 872
    const v5, 0x7f0b0035

    invoke-virtual {v4, v5, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_4

    .line 882
    .restart local v2       #nextPosition:I
    :cond_19
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_5

    .line 901
    :cond_1a
    const v5, 0x7f0b0044

    invoke-virtual {v4, v5, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 902
    const v5, 0x7f0b0045

    invoke-virtual {v4, v5, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_6

    .line 905
    .end local v2           #nextPosition:I
    :cond_1b
    const v5, 0x7f0b0044

    invoke-virtual {v4, v5, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 906
    const v5, 0x7f0b0045

    invoke-virtual {v4, v5, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_6

    .line 916
    .restart local v2       #nextPosition:I
    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_7

    .line 935
    :cond_1d
    const v5, 0x7f0b0046

    invoke-virtual {v4, v5, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 936
    const v5, 0x7f0b0047

    invoke-virtual {v4, v5, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_8

    .line 939
    .end local v2           #nextPosition:I
    :cond_1e
    const v5, 0x7f0b0046

    invoke-virtual {v4, v5, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 940
    const v5, 0x7f0b0047

    invoke-virtual {v4, v5, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_8

    .line 951
    .restart local v2       #nextPosition:I
    :cond_1f
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_9

    .line 969
    :cond_20
    const v5, 0x7f0b0048

    invoke-virtual {v4, v5, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 970
    const v5, 0x7f0b0049

    invoke-virtual {v4, v5, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_a

    .line 973
    .end local v2           #nextPosition:I
    :cond_21
    const v5, 0x7f0b0048

    invoke-virtual {v4, v5, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 974
    const v5, 0x7f0b0049

    invoke-virtual {v4, v5, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_a

    .line 984
    .restart local v2       #nextPosition:I
    :cond_22
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_b

    .line 1002
    :cond_23
    const v5, 0x7f0b004a

    invoke-virtual {v4, v5, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1003
    const v5, 0x7f0b004b

    invoke-virtual {v4, v5, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_0

    .line 1006
    .end local v2           #nextPosition:I
    :cond_24
    const v5, 0x7f0b004a

    invoke-virtual {v4, v5, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1007
    const v5, 0x7f0b004b

    invoke-virtual {v4, v5, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_0
.end method

.method private getDayPendingIntent(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 2
    .parameter "context"

    .prologue
    .line 1201
    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/calendar/CalendarAppWidgetService;->getDayPendingIntent(Landroid/content/Context;J)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private getDayPendingIntent(Landroid/content/Context;J)Landroid/app/PendingIntent;
    .locals 7
    .parameter "context"
    .parameter "ms"

    .prologue
    const/4 v6, 0x0

    .line 1210
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    .line 1211
    .local v1, time:Landroid/text/format/Time;
    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-lez v2, :cond_0

    .line 1212
    invoke-virtual {v1, p2, p3}, Landroid/text/format/Time;->set(J)V

    .line 1218
    :goto_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1219
    .local v0, launchIntent:Landroid/content/Intent;
    const-string v2, "com.android.providers.calendar.LAUNCH_DAY"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1220
    const-string v2, "com.android.providers.calendar"

    iget v3, p0, Lcom/android/providers/calendar/CalendarAppWidgetService;->mWidgetId:I

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lcom/android/providers/calendar/CalendarWidgetProvider;->buildLaunchURI(Ljava/lang/String;IJ)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1221
    invoke-static {p1, v6, v0, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    return-object v2

    .line 1214
    .end local v0           #launchIntent:Landroid/content/Intent;
    :cond_0
    invoke-virtual {v1}, Landroid/text/format/Time;->setToNow()V

    goto :goto_0
.end method

.method private getEventFlip(Landroid/database/Cursor;JJZ)J
    .locals 4
    .parameter "cursor"
    .parameter "start"
    .parameter "end"
    .parameter "allDay"

    .prologue
    .line 468
    if-eqz p6, :cond_0

    move-wide v0, p2

    .line 471
    :goto_0
    return-wide v0

    :cond_0
    add-long v0, p2, p4

    const-wide/16 v2, 0x2

    div-long/2addr v0, v2

    goto :goto_0
.end method

.method private getEventPendingIntent(Landroid/content/Context;Landroid/database/Cursor;)Landroid/app/PendingIntent;
    .locals 10
    .parameter "context"
    .parameter "cursor"

    .prologue
    const/4 v9, 0x0

    .line 1233
    const/16 v0, 0x9

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 1234
    .local v2, eventId:J
    const/4 v0, 0x1

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 1235
    .local v4, start:J
    const/4 v0, 0x2

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 1237
    .local v6, end:J
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 1238
    .local v8, launchIntent:Landroid/content/Intent;
    const-string v0, "com.android.providers.calendar.VIEW_EVENT"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1239
    const-string v0, "com.android.providers.calendar"

    iget v1, p0, Lcom/android/providers/calendar/CalendarAppWidgetService;->mWidgetId:I

    invoke-static/range {v0 .. v7}, Lcom/android/providers/calendar/CalendarWidgetProvider;->buildEventURI(Ljava/lang/String;IJJJ)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1241
    invoke-static {p1, v9, v8, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method static getIdVisibility(Landroid/content/Context;II)I
    .locals 9
    .parameter "context"
    .parameter "layoutId"
    .parameter "itemId"

    .prologue
    const-string v8, "CalAppWidgetService"

    .line 1891
    const/4 v4, -0x1

    .line 1896
    .local v4, visibility:I
    const-string v5, "layout_inflater"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 1898
    .local v1, inflater:Landroid/view/LayoutInflater;
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v1, p1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 1899
    .local v3, view:Landroid/view/View;
    if-eqz v3, :cond_1

    .line 1900
    invoke-virtual {v3, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    .line 1901
    .local v2, layout:Landroid/widget/FrameLayout;
    if-eqz v2, :cond_0

    .line 1902
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v4

    .line 1917
    .end local v2           #layout:Landroid/widget/FrameLayout;
    .end local v3           #view:Landroid/view/View;
    :goto_0
    return v4

    .line 1905
    .restart local v2       #layout:Landroid/widget/FrameLayout;
    .restart local v3       #view:Landroid/view/View;
    :cond_0
    const-string v5, "CalAppWidgetService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "item not found "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/view/InflateException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1911
    .end local v2           #layout:Landroid/widget/FrameLayout;
    .end local v3           #view:Landroid/view/View;
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 1912
    .local v0, e:Landroid/content/res/Resources$NotFoundException;
    const-string v5, "CalAppWidgetService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Couldn\'t find the layout: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1908
    .end local v0           #e:Landroid/content/res/Resources$NotFoundException;
    .restart local v3       #view:Landroid/view/View;
    :cond_1
    :try_start_1
    const-string v5, "CalAppWidgetService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "view not found "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/view/InflateException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1914
    .end local v3           #view:Landroid/view/View;
    :catch_1
    move-exception v5

    move-object v0, v5

    .line 1915
    .local v0, e:Landroid/view/InflateException;
    const-string v5, "CalAppWidgetService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Couldn\'t inflate layout: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static getLayoutData(Landroid/content/Context;II)Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;
    .locals 2
    .parameter "context"
    .parameter "spanX"
    .parameter "spanY"

    .prologue
    .line 1311
    const/4 v0, 0x0

    .line 1312
    .local v0, data:Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;
    invoke-static {p0}, Lcom/android/providers/calendar/AppWidgetShared;->getDensityDPI(Landroid/content/Context;)I

    move-result v1

    .line 1313
    .local v1, scaleDPI:I
    sparse-switch v1, :sswitch_data_0

    .line 1325
    invoke-static {p0, p1, p2}, Lcom/android/providers/calendar/CalendarAppWidgetService;->getmdpiLayoutData(Landroid/content/Context;II)Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;

    move-result-object v0

    .line 1328
    :goto_0
    return-object v0

    .line 1315
    :sswitch_0
    invoke-static {p0, p1, p2}, Lcom/android/providers/calendar/CalendarAppWidgetService;->getldpiLayoutData(Landroid/content/Context;II)Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;

    move-result-object v0

    .line 1317
    goto :goto_0

    .line 1320
    :sswitch_1
    invoke-static {p0, p1, p2}, Lcom/android/providers/calendar/CalendarAppWidgetService;->gethdpiLayoutData(Landroid/content/Context;II)Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;

    move-result-object v0

    .line 1322
    goto :goto_0

    .line 1313
    nop

    :sswitch_data_0
    .sparse-switch
        0x78 -> :sswitch_0
        0xf0 -> :sswitch_1
    .end sparse-switch
.end method

.method private getNextMidnightTimeMillis()J
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 450
    new-instance v2, Landroid/text/format/Time;

    iget-object v3, p0, Lcom/android/providers/calendar/CalendarAppWidgetService;->mTimeZone:Ljava/util/TimeZone;

    invoke-virtual {v3}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 451
    .local v2, time:Landroid/text/format/Time;
    invoke-virtual {v2}, Landroid/text/format/Time;->setToNow()V

    .line 452
    iget v3, v2, Landroid/text/format/Time;->monthDay:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Landroid/text/format/Time;->monthDay:I

    .line 453
    iput v4, v2, Landroid/text/format/Time;->hour:I

    .line 454
    iput v4, v2, Landroid/text/format/Time;->minute:I

    .line 455
    iput v4, v2, Landroid/text/format/Time;->second:I

    .line 456
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    .line 457
    .local v0, midnight:J
    return-wide v0
.end method

.method private static final getNoEventState(Landroid/content/Context;I)I
    .locals 8
    .parameter "context"
    .parameter "widgetId"

    .prologue
    .line 1810
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1812
    .local v0, resolver:Landroid/content/ContentResolver;
    new-instance p0, Ljava/lang/StringBuilder;

    .end local p0
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "chip_id="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1813
    .local v7, selection:Ljava/lang/String;
    const/4 v6, 0x2

    .line 1815
    .local v6, ret:I
    sget-object v1, Landroid/provider/Calendar$Calendars;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/providers/calendar/AppWidgetShared;->CALENDAR_PROJECTION:[Ljava/lang/String;

    const-string v3, ""

    const/4 v4, 0x0

    const-string v5, "displayName"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 1817
    .local p1, calendarCursor:Landroid/database/Cursor;
    const/4 p0, 0x0

    .line 1819
    .local p0, calendarCount:I
    if-eqz p1, :cond_2

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_2

    .line 1820
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result p0

    .line 1823
    const/4 v1, -0x1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1826
    const/4 v1, 0x0

    .line 1827
    .local v1, oneSelected:Z
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1828
    const-string v2, "selected"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 1829
    .local v2, selectedColumn:I
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 1830
    .local v2, selected:I
    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 1832
    const/4 v1, 0x1

    .line 1836
    .end local v2           #selected:I
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 1837
    if-nez v1, :cond_4

    .line 1838
    const/4 p1, 0x1

    move v0, p1

    move p1, v6

    .line 1887
    .end local v0           #resolver:Landroid/content/ContentResolver;
    .end local v1           #oneSelected:Z
    .end local v6           #ret:I
    .local p1, ret:I
    :goto_0
    return v0

    .line 1841
    .restart local v0       #resolver:Landroid/content/ContentResolver;
    .restart local v6       #ret:I
    .local p1, calendarCursor:Landroid/database/Cursor;
    :cond_2
    if-eqz p1, :cond_3

    .line 1842
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 1844
    :cond_3
    const/4 p1, 0x0

    move v0, p1

    move p1, v6

    .end local v6           #ret:I
    .local p1, ret:I
    goto :goto_0

    .line 1847
    .restart local v1       #oneSelected:Z
    .restart local v6       #ret:I
    .local p1, calendarCursor:Landroid/database/Cursor;
    :cond_4
    sget-object v1, Lcom/android/providers/calendar/AppWidgetShared;->CHIP_URI:Landroid/net/Uri;

    .end local v1           #oneSelected:Z
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, v7

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1849
    .local v0, chipCursor:Landroid/database/Cursor;
    if-eqz v0, :cond_9

    .line 1850
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result p1

    .line 1853
    .local p1, chipCount:I
    if-lez p1, :cond_8

    .line 1854
    const/4 p1, 0x0

    .line 1857
    .local p1, selected:I
    :cond_5
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1858
    const-string v1, "chip_calendar_selected"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 1859
    .local v1, selectedColumn:I
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p1

    .line 1860
    const/4 v1, 0x1

    if-ne p1, v1, :cond_5

    .line 1868
    .end local v1           #selectedColumn:I
    :cond_6
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1871
    :goto_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_7

    .line 1873
    .end local v0           #chipCursor:Landroid/database/Cursor;
    const/4 p1, 0x3

    .end local v6           #ret:I
    .local p1, ret:I
    :goto_2
    move v0, p1

    .line 1887
    goto :goto_0

    .line 1865
    .restart local v0       #chipCursor:Landroid/database/Cursor;
    .restart local v6       #ret:I
    .local p1, selected:I
    :catch_0
    move-exception v1

    .line 1868
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception p0

    .end local p0           #calendarCount:I
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw p0

    .line 1876
    .end local v0           #chipCursor:Landroid/database/Cursor;
    .restart local p0       #calendarCount:I
    :cond_7
    const/4 p1, 0x2

    .end local v6           #ret:I
    .local p1, ret:I
    goto :goto_2

    .line 1880
    .restart local v0       #chipCursor:Landroid/database/Cursor;
    .restart local v6       #ret:I
    .local p1, chipCount:I
    :cond_8
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .end local v0           #chipCursor:Landroid/database/Cursor;
    .end local p1           #chipCount:I
    :goto_3
    move p1, v6

    .end local v6           #ret:I
    .local p1, ret:I
    goto :goto_2

    .line 1884
    .restart local v0       #chipCursor:Landroid/database/Cursor;
    .restart local v6       #ret:I
    .local p1, calendarCursor:Landroid/database/Cursor;
    :cond_9
    const-string p1, "CalAppWidgetService"

    .end local p1           #calendarCursor:Landroid/database/Cursor;
    const-string v0, "getNoEventString Cursor is null"

    .end local v0           #chipCursor:Landroid/database/Cursor;
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method private getSettingPendingIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 5
    .parameter "context"
    .parameter "pkgName"
    .parameter "className"

    .prologue
    const/4 v4, 0x0

    .line 1248
    iget v3, p0, Lcom/android/providers/calendar/CalendarAppWidgetService;->mWidgetId:I

    invoke-static {p2, v3}, Lcom/android/providers/calendar/CalendarWidgetProvider;->getWidgetUri(Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v2

    .line 1249
    .local v2, uri:Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.EDIT"

    invoke-direct {v0, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1250
    .local v0, launchIntent:Landroid/content/Intent;
    invoke-static {p1, v4, v0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 1251
    .local v1, pendingIntent:Landroid/app/PendingIntent;
    return-object v1
.end method

.method private getUpcomingInstancesCursor(Landroid/content/Context;Landroid/content/ContentResolver;JJ)Landroid/database/Cursor;
    .locals 10
    .parameter "context"
    .parameter "resolver"
    .parameter "searchDuration"
    .parameter "now"

    .prologue
    .line 1777
    add-long v6, p5, p3

    .line 1779
    .local v6, end:J
    const/4 v3, 0x0

    .line 1780
    .local v3, selection:Ljava/lang/String;
    const/4 v1, 0x0

    .line 1781
    .local v1, uri:Landroid/net/Uri;
    iget v0, p0, Lcom/android/providers/calendar/CalendarAppWidgetService;->mWidgetId:I

    invoke-static {p2, v0}, Lcom/android/providers/calendar/CalendarSettingsActivity;->areAllCalendarsSelected(Landroid/content/ContentResolver;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1782
    sget-object v0, Landroid/provider/Calendar$Instances;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "%d/%d"

    .end local v1           #uri:Landroid/net/Uri;
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .end local v3           #selection:Ljava/lang/String;
    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1788
    .restart local v1       #uri:Landroid/net/Uri;
    const-string v3, "Calendars.SELECTED=1 AND Events.DELETED=0"

    .line 1797
    .restart local v3       #selection:Ljava/lang/String;
    :goto_0
    const-string v0, "com.android.calendar_preferences"

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 1798
    .local v9, prefs:Landroid/content/SharedPreferences;
    const-string v0, "preferences_hide_declined"

    const/4 v2, 0x0

    invoke-interface {v9, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    .line 1799
    .local v8, hideDeclined:Z
    if-eqz v8, :cond_0

    .line 1800
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " AND selfAttendeeStatus!=2"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1805
    :cond_0
    sget-object v2, Lcom/android/providers/calendar/CalendarAppWidgetService;->EVENT_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "startDay ASC, allDay DESC, begin ASC"

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 1790
    .end local v8           #hideDeclined:Z
    .end local v9           #prefs:Landroid/content/SharedPreferences;
    :cond_1
    sget-object v0, Lcom/android/providers/calendar/AppWidgetShared;->CHIP_SELECTED_URI:Landroid/net/Uri;

    const-string v1, "%d/%d"

    .end local v1           #uri:Landroid/net/Uri;
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .end local v3           #selection:Ljava/lang/String;
    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1792
    .restart local v1       #uri:Landroid/net/Uri;
    const-string v0, "Calendars.SELECTED=1 AND Events.DELETED=0 AND %s=1 AND %s=%d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "ChipCalendars.chip_calendar_selected"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "ChipCalendars.chip_id"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget v4, p0, Lcom/android/providers/calendar/CalendarAppWidgetService;->mWidgetId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .restart local v3       #selection:Ljava/lang/String;
    goto :goto_0
.end method

.method static gethdpiLayoutData(Landroid/content/Context;II)Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;
    .locals 7
    .parameter "context"
    .parameter "spanX"
    .parameter "spanY"

    .prologue
    const v6, 0x7f030029

    const/4 v5, 0x0

    const v4, 0x7f03002a

    const v3, 0x7f03002b

    const/4 v2, 0x1

    .line 1503
    new-instance v0, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;

    invoke-direct {v0}, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;-><init>()V

    .line 1504
    .local v0, data:Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;
    iput-boolean v2, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->displayFirstRow:Z

    .line 1505
    iput-boolean v2, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->displaySecondRow:Z

    .line 1506
    iput-boolean v5, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->displayThirdRow:Z

    .line 1507
    iput-boolean v5, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->displayFourthRow:Z

    .line 1508
    iput-boolean v5, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->displayFifthRow:Z

    .line 1509
    iput-boolean v5, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->displaySixthRow:Z

    .line 1510
    iput-boolean v5, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->displaySeventhRow:Z

    .line 1513
    iput v6, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->layoutId:I

    .line 1519
    if-ne p1, v2, :cond_0

    .line 1522
    sget-boolean v1, Lcom/android/providers/calendar/CalendarAppWidgetService;->sShowLunar:Z

    if-eqz v1, :cond_4

    .line 1523
    const v1, 0x7f030010

    iput v1, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->layoutId:I

    .line 1526
    :goto_0
    iput-boolean v5, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->displayFirstRow:Z

    .line 1527
    iput-boolean v5, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->displaySecondRow:Z

    .line 1531
    :cond_0
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 1532
    if-ne p2, v2, :cond_5

    .line 1534
    const v1, 0x7f03001a

    iput v1, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->layoutId:I

    .line 1535
    iput-boolean v5, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->displayFirstRow:Z

    .line 1536
    iput-boolean v5, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->displaySecondRow:Z

    .line 1570
    :cond_1
    :goto_1
    const/4 v1, 0x3

    if-ne p1, v1, :cond_2

    .line 1572
    if-ne p2, v2, :cond_8

    .line 1574
    const v1, 0x7f03001e

    iput v1, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->layoutId:I

    .line 1575
    iput-boolean v5, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->displayFirstRow:Z

    .line 1576
    iput-boolean v5, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->displaySecondRow:Z

    .line 1610
    :cond_2
    :goto_2
    const/4 v1, 0x4

    if-ne p1, v1, :cond_3

    .line 1611
    if-ne p2, v2, :cond_b

    .line 1613
    const v1, 0x7f030028

    iput v1, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->layoutId:I

    .line 1614
    iput-boolean v5, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->displaySecondRow:Z

    .line 1652
    :cond_3
    :goto_3
    return-object v0

    .line 1525
    :cond_4
    const v1, 0x7f030019

    iput v1, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->layoutId:I

    goto :goto_0

    .line 1537
    :cond_5
    const/4 v1, 0x2

    if-ne p2, v1, :cond_6

    .line 1540
    iput-boolean v2, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->displayThirdRow:Z

    .line 1541
    const v1, 0x7f0b0040

    invoke-static {p0, v6, v1}, Lcom/android/providers/calendar/CalendarAppWidgetService;->getIdVisibility(Landroid/content/Context;II)I

    move-result v1

    iput v1, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->forceSecondRow:I

    .line 1542
    const v1, 0x7f0b0042

    invoke-static {p0, v6, v1}, Lcom/android/providers/calendar/CalendarAppWidgetService;->getIdVisibility(Landroid/content/Context;II)I

    move-result v1

    iput v1, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->forceThirdRow:I

    goto :goto_1

    .line 1543
    :cond_6
    const/4 v1, 0x3

    if-ne p2, v1, :cond_7

    .line 1545
    iput v4, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->layoutId:I

    .line 1546
    iput-boolean v2, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->displayThirdRow:Z

    .line 1547
    iput-boolean v2, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->displayFourthRow:Z

    .line 1548
    iput-boolean v2, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->displayFifthRow:Z

    .line 1549
    const v1, 0x7f0b0040

    invoke-static {p0, v4, v1}, Lcom/android/providers/calendar/CalendarAppWidgetService;->getIdVisibility(Landroid/content/Context;II)I

    move-result v1

    iput v1, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->forceSecondRow:I

    .line 1550
    const v1, 0x7f0b0042

    invoke-static {p0, v4, v1}, Lcom/android/providers/calendar/CalendarAppWidgetService;->getIdVisibility(Landroid/content/Context;II)I

    move-result v1

    iput v1, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->forceThirdRow:I

    .line 1551
    const v1, 0x7f0b0044

    invoke-static {p0, v4, v1}, Lcom/android/providers/calendar/CalendarAppWidgetService;->getIdVisibility(Landroid/content/Context;II)I

    move-result v1

    iput v1, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->forceFourthRow:I

    .line 1552
    const v1, 0x7f0b0046

    invoke-static {p0, v4, v1}, Lcom/android/providers/calendar/CalendarAppWidgetService;->getIdVisibility(Landroid/content/Context;II)I

    move-result v1

    iput v1, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->forceFifthRow:I

    goto :goto_1

    .line 1553
    :cond_7
    const/4 v1, 0x4

    if-ne p2, v1, :cond_1

    .line 1555
    iput v3, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->layoutId:I

    .line 1556
    iput-boolean v2, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->displayThirdRow:Z

    .line 1557
    iput-boolean v2, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->displayFourthRow:Z

    .line 1558
    iput-boolean v2, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->displayFifthRow:Z

    .line 1559
    iput-boolean v2, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->displaySixthRow:Z

    .line 1560
    iput-boolean v2, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->displaySeventhRow:Z

    .line 1561
    const v1, 0x7f0b0040

    invoke-static {p0, v3, v1}, Lcom/android/providers/calendar/CalendarAppWidgetService;->getIdVisibility(Landroid/content/Context;II)I

    move-result v1

    iput v1, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->forceSecondRow:I

    .line 1562
    const v1, 0x7f0b0042

    invoke-static {p0, v3, v1}, Lcom/android/providers/calendar/CalendarAppWidgetService;->getIdVisibility(Landroid/content/Context;II)I

    move-result v1

    iput v1, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->forceThirdRow:I

    .line 1563
    const v1, 0x7f0b0044

    invoke-static {p0, v3, v1}, Lcom/android/providers/calendar/CalendarAppWidgetService;->getIdVisibility(Landroid/content/Context;II)I

    move-result v1

    iput v1, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->forceFourthRow:I

    .line 1564
    const v1, 0x7f0b0046

    invoke-static {p0, v3, v1}, Lcom/android/providers/calendar/CalendarAppWidgetService;->getIdVisibility(Landroid/content/Context;II)I

    move-result v1

    iput v1, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->forceFifthRow:I

    .line 1565
    const v1, 0x7f0b0048

    invoke-static {p0, v3, v1}, Lcom/android/providers/calendar/CalendarAppWidgetService;->getIdVisibility(Landroid/content/Context;II)I

    move-result v1

    iput v1, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->forceSixthRow:I

    .line 1566
    const v1, 0x7f0b004a

    invoke-static {p0, v3, v1}, Lcom/android/providers/calendar/CalendarAppWidgetService;->getIdVisibility(Landroid/content/Context;II)I

    move-result v1

    iput v1, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->forceSeventhRow:I

    goto/16 :goto_1

    .line 1577
    :cond_8
    const/4 v1, 0x2

    if-ne p2, v1, :cond_9

    .line 1580
    iput-boolean v2, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->displayThirdRow:Z

    .line 1581
    iput v6, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->layoutId:I

    .line 1582
    const v1, 0x7f0b0040

    invoke-static {p0, v6, v1}, Lcom/android/providers/calendar/CalendarAppWidgetService;->getIdVisibility(Landroid/content/Context;II)I

    move-result v1

    iput v1, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->forceSecondRow:I

    .line 1583
    const v1, 0x7f0b0042

    invoke-static {p0, v6, v1}, Lcom/android/providers/calendar/CalendarAppWidgetService;->getIdVisibility(Landroid/content/Context;II)I

    move-result v1

    iput v1, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->forceThirdRow:I

    goto/16 :goto_2

    .line 1584
    :cond_9
    const/4 v1, 0x3

    if-ne p2, v1, :cond_a

    .line 1586
    iput v4, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->layoutId:I

    .line 1587
    iput-boolean v2, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->displayThirdRow:Z

    .line 1588
    iput-boolean v2, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->displayFourthRow:Z

    .line 1589
    iput-boolean v2, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->displayFifthRow:Z

    .line 1590
    const v1, 0x7f0b0040

    invoke-static {p0, v4, v1}, Lcom/android/providers/calendar/CalendarAppWidgetService;->getIdVisibility(Landroid/content/Context;II)I

    move-result v1

    iput v1, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->forceSecondRow:I

    .line 1591
    const v1, 0x7f0b0042

    invoke-static {p0, v4, v1}, Lcom/android/providers/calendar/CalendarAppWidgetService;->getIdVisibility(Landroid/content/Context;II)I

    move-result v1

    iput v1, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->forceThirdRow:I

    .line 1592
    const v1, 0x7f0b0044

    invoke-static {p0, v4, v1}, Lcom/android/providers/calendar/CalendarAppWidgetService;->getIdVisibility(Landroid/content/Context;II)I

    move-result v1

    iput v1, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->forceFourthRow:I

    .line 1593
    const v1, 0x7f0b0046

    invoke-static {p0, v4, v1}, Lcom/android/providers/calendar/CalendarAppWidgetService;->getIdVisibility(Landroid/content/Context;II)I

    move-result v1

    iput v1, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->forceFifthRow:I

    goto/16 :goto_2

    .line 1594
    :cond_a
    const/4 v1, 0x4

    if-ne p2, v1, :cond_2

    .line 1596
    iput v3, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->layoutId:I

    .line 1597
    iput-boolean v2, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->displayThirdRow:Z

    .line 1598
    iput-boolean v2, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->displayFourthRow:Z

    .line 1599
    iput-boolean v2, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->displayFifthRow:Z

    .line 1600
    iput-boolean v2, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->displaySixthRow:Z

    .line 1601
    iput-boolean v2, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->displaySeventhRow:Z

    .line 1602
    const v1, 0x7f0b0040

    invoke-static {p0, v3, v1}, Lcom/android/providers/calendar/CalendarAppWidgetService;->getIdVisibility(Landroid/content/Context;II)I

    move-result v1

    iput v1, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->forceSecondRow:I

    .line 1603
    const v1, 0x7f0b0042

    invoke-static {p0, v3, v1}, Lcom/android/providers/calendar/CalendarAppWidgetService;->getIdVisibility(Landroid/content/Context;II)I

    move-result v1

    iput v1, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->forceThirdRow:I

    .line 1604
    const v1, 0x7f0b0044

    invoke-static {p0, v3, v1}, Lcom/android/providers/calendar/CalendarAppWidgetService;->getIdVisibility(Landroid/content/Context;II)I

    move-result v1

    iput v1, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->forceFourthRow:I

    .line 1605
    const v1, 0x7f0b0046

    invoke-static {p0, v3, v1}, Lcom/android/providers/calendar/CalendarAppWidgetService;->getIdVisibility(Landroid/content/Context;II)I

    move-result v1

    iput v1, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->forceFifthRow:I

    .line 1606
    const v1, 0x7f0b0048

    invoke-static {p0, v3, v1}, Lcom/android/providers/calendar/CalendarAppWidgetService;->getIdVisibility(Landroid/content/Context;II)I

    move-result v1

    iput v1, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->forceSixthRow:I

    .line 1607
    const v1, 0x7f0b004a

    invoke-static {p0, v3, v1}, Lcom/android/providers/calendar/CalendarAppWidgetService;->getIdVisibility(Landroid/content/Context;II)I

    move-result v1

    iput v1, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->forceSeventhRow:I

    goto/16 :goto_2

    .line 1615
    :cond_b
    const/4 v1, 0x2

    if-ne p2, v1, :cond_c

    .line 1617
    iput v6, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->layoutId:I

    .line 1618
    iput-boolean v2, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->displayThirdRow:Z

    .line 1619
    const v1, 0x7f0b0040

    invoke-static {p0, v6, v1}, Lcom/android/providers/calendar/CalendarAppWidgetService;->getIdVisibility(Landroid/content/Context;II)I

    move-result v1

    iput v1, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->forceSecondRow:I

    .line 1620
    const v1, 0x7f0b0042

    invoke-static {p0, v6, v1}, Lcom/android/providers/calendar/CalendarAppWidgetService;->getIdVisibility(Landroid/content/Context;II)I

    move-result v1

    iput v1, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->forceThirdRow:I

    goto/16 :goto_3

    .line 1621
    :cond_c
    const/4 v1, 0x3

    if-ne p2, v1, :cond_d

    .line 1623
    iput v4, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->layoutId:I

    .line 1624
    iput-boolean v2, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->displayThirdRow:Z

    .line 1625
    iput-boolean v2, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->displayFourthRow:Z

    .line 1626
    iput-boolean v2, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->displayFifthRow:Z

    .line 1627
    const v1, 0x7f0b0040

    invoke-static {p0, v4, v1}, Lcom/android/providers/calendar/CalendarAppWidgetService;->getIdVisibility(Landroid/content/Context;II)I

    move-result v1

    iput v1, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->forceSecondRow:I

    .line 1628
    const v1, 0x7f0b0042

    invoke-static {p0, v4, v1}, Lcom/android/providers/calendar/CalendarAppWidgetService;->getIdVisibility(Landroid/content/Context;II)I

    move-result v1

    iput v1, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->forceThirdRow:I

    .line 1629
    const v1, 0x7f0b0044

    invoke-static {p0, v4, v1}, Lcom/android/providers/calendar/CalendarAppWidgetService;->getIdVisibility(Landroid/content/Context;II)I

    move-result v1

    iput v1, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->forceFourthRow:I

    .line 1630
    const v1, 0x7f0b0046

    invoke-static {p0, v4, v1}, Lcom/android/providers/calendar/CalendarAppWidgetService;->getIdVisibility(Landroid/content/Context;II)I

    move-result v1

    iput v1, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->forceFifthRow:I

    goto/16 :goto_3

    .line 1631
    :cond_d
    const/4 v1, 0x4

    if-ne p2, v1, :cond_3

    .line 1633
    iput v3, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->layoutId:I

    .line 1634
    iput-boolean v2, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->displayThirdRow:Z

    .line 1635
    iput-boolean v2, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->displayFourthRow:Z

    .line 1636
    iput-boolean v2, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->displayFifthRow:Z

    .line 1637
    iput-boolean v2, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->displaySixthRow:Z

    .line 1638
    iput-boolean v2, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->displaySeventhRow:Z

    .line 1639
    const v1, 0x7f0b0040

    invoke-static {p0, v3, v1}, Lcom/android/providers/calendar/CalendarAppWidgetService;->getIdVisibility(Landroid/content/Context;II)I

    move-result v1

    iput v1, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->forceSecondRow:I

    .line 1640
    const v1, 0x7f0b0042

    invoke-static {p0, v3, v1}, Lcom/android/providers/calendar/CalendarAppWidgetService;->getIdVisibility(Landroid/content/Context;II)I

    move-result v1

    iput v1, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->forceThirdRow:I

    .line 1641
    const v1, 0x7f0b0044

    invoke-static {p0, v3, v1}, Lcom/android/providers/calendar/CalendarAppWidgetService;->getIdVisibility(Landroid/content/Context;II)I

    move-result v1

    iput v1, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->forceFourthRow:I

    .line 1642
    const v1, 0x7f0b0046

    invoke-static {p0, v3, v1}, Lcom/android/providers/calendar/CalendarAppWidgetService;->getIdVisibility(Landroid/content/Context;II)I

    move-result v1

    iput v1, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->forceFifthRow:I

    .line 1643
    const v1, 0x7f0b0048

    invoke-static {p0, v3, v1}, Lcom/android/providers/calendar/CalendarAppWidgetService;->getIdVisibility(Landroid/content/Context;II)I

    move-result v1

    iput v1, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->forceSixthRow:I

    .line 1644
    const v1, 0x7f0b004a

    invoke-static {p0, v3, v1}, Lcom/android/providers/calendar/CalendarAppWidgetService;->getIdVisibility(Landroid/content/Context;II)I

    move-result v1

    iput v1, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->forceSeventhRow:I

    goto/16 :goto_3
.end method

.method static getldpiLayoutData(Landroid/content/Context;II)Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;
    .locals 6
    .parameter "context"
    .parameter "spanX"
    .parameter "spanY"

    .prologue
    const v5, 0x7f0b0040

    const v4, 0x7f03002a

    const/4 v1, 0x0

    const v3, 0x7f03002b

    const/4 v2, 0x1

    .line 1434
    new-instance v0, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;

    invoke-direct {v0}, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;-><init>()V

    .line 1435
    .local v0, data:Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;
    iput-boolean v2, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->displayFirstRow:Z

    .line 1436
    iput-boolean v1, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->displaySecondRow:Z

    .line 1437
    iput-boolean v1, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->displayThirdRow:Z

    .line 1438
    iput-boolean v1, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->displayFourthRow:Z

    .line 1439
    iput-boolean v1, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->displayFifthRow:Z

    .line 1440
    iput-boolean v1, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->displaySixthRow:Z

    .line 1441
    iput-boolean v1, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->displaySeventhRow:Z

    .line 1442
    const v1, 0x7f030029

    iput v1, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->layoutId:I

    .line 1444
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 1445
    const/4 v1, 0x2

    if-ne p2, v1, :cond_3

    .line 1461
    :cond_0
    :goto_0
    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    .line 1462
    const/4 v1, 0x2

    if-ne p2, v1, :cond_5

    .line 1464
    const v1, 0x7f030029

    iput v1, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->layoutId:I

    .line 1479
    :cond_1
    :goto_1
    const/4 v1, 0x4

    if-ne p1, v1, :cond_2

    .line 1480
    const/4 v1, 0x2

    if-ne p2, v1, :cond_7

    .line 1482
    const v1, 0x7f030029

    iput v1, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->layoutId:I

    .line 1498
    :cond_2
    :goto_2
    return-object v0

    .line 1447
    :cond_3
    const/4 v1, 0x3

    if-ne p2, v1, :cond_4

    .line 1449
    iput v4, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->layoutId:I

    .line 1450
    iput-boolean v2, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->displaySecondRow:Z

    .line 1451
    invoke-static {p0, v4, v5}, Lcom/android/providers/calendar/CalendarAppWidgetService;->getIdVisibility(Landroid/content/Context;II)I

    move-result v1

    iput v1, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->forceSecondRow:I

    goto :goto_0

    .line 1452
    :cond_4
    const/4 v1, 0x4

    if-ne p2, v1, :cond_0

    .line 1454
    iput v3, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->layoutId:I

    .line 1455
    iput-boolean v2, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->displaySecondRow:Z

    .line 1456
    iput-boolean v2, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->displayThirdRow:Z

    .line 1457
    invoke-static {p0, v3, v5}, Lcom/android/providers/calendar/CalendarAppWidgetService;->getIdVisibility(Landroid/content/Context;II)I

    move-result v1

    iput v1, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->forceSecondRow:I

    .line 1458
    const v1, 0x7f0b0042

    invoke-static {p0, v3, v1}, Lcom/android/providers/calendar/CalendarAppWidgetService;->getIdVisibility(Landroid/content/Context;II)I

    move-result v1

    iput v1, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->forceThirdRow:I

    goto :goto_0

    .line 1465
    :cond_5
    const/4 v1, 0x3

    if-ne p2, v1, :cond_6

    .line 1467
    iput v4, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->layoutId:I

    .line 1468
    iput-boolean v2, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->displaySecondRow:Z

    .line 1469
    invoke-static {p0, v4, v5}, Lcom/android/providers/calendar/CalendarAppWidgetService;->getIdVisibility(Landroid/content/Context;II)I

    move-result v1

    iput v1, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->forceSecondRow:I

    goto :goto_1

    .line 1470
    :cond_6
    const/4 v1, 0x4

    if-ne p2, v1, :cond_1

    .line 1472
    iput v3, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->layoutId:I

    .line 1473
    iput-boolean v2, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->displaySecondRow:Z

    .line 1474
    iput-boolean v2, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->displayThirdRow:Z

    .line 1475
    invoke-static {p0, v3, v5}, Lcom/android/providers/calendar/CalendarAppWidgetService;->getIdVisibility(Landroid/content/Context;II)I

    move-result v1

    iput v1, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->forceSecondRow:I

    .line 1476
    const v1, 0x7f0b0042

    invoke-static {p0, v3, v1}, Lcom/android/providers/calendar/CalendarAppWidgetService;->getIdVisibility(Landroid/content/Context;II)I

    move-result v1

    iput v1, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->forceThirdRow:I

    goto :goto_1

    .line 1483
    :cond_7
    const/4 v1, 0x3

    if-ne p2, v1, :cond_8

    .line 1485
    iput v4, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->layoutId:I

    .line 1486
    iput-boolean v2, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->displaySecondRow:Z

    .line 1487
    invoke-static {p0, v4, v5}, Lcom/android/providers/calendar/CalendarAppWidgetService;->getIdVisibility(Landroid/content/Context;II)I

    move-result v1

    iput v1, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->forceSecondRow:I

    goto :goto_2

    .line 1488
    :cond_8
    const/4 v1, 0x4

    if-ne p2, v1, :cond_2

    .line 1490
    iput v3, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->layoutId:I

    .line 1491
    iput-boolean v2, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->displaySecondRow:Z

    .line 1492
    iput-boolean v2, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->displayThirdRow:Z

    .line 1493
    invoke-static {p0, v3, v5}, Lcom/android/providers/calendar/CalendarAppWidgetService;->getIdVisibility(Landroid/content/Context;II)I

    move-result v1

    iput v1, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->forceSecondRow:I

    .line 1494
    const v1, 0x7f0b0042

    invoke-static {p0, v3, v1}, Lcom/android/providers/calendar/CalendarAppWidgetService;->getIdVisibility(Landroid/content/Context;II)I

    move-result v1

    iput v1, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->forceThirdRow:I

    goto :goto_2
.end method

.method static getmdpiLayoutData(Landroid/content/Context;II)Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;
    .locals 7
    .parameter "context"
    .parameter "spanX"
    .parameter "spanY"

    .prologue
    const/4 v6, 0x0

    const v5, 0x7f0b0040

    const v4, 0x7f03002a

    const v3, 0x7f03002b

    const/4 v2, 0x1

    .line 1333
    new-instance v0, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;

    invoke-direct {v0}, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;-><init>()V

    .line 1334
    .local v0, data:Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;
    iput-boolean v2, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->displayFirstRow:Z

    .line 1335
    iput-boolean v6, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->displaySecondRow:Z

    .line 1336
    iput-boolean v6, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->displayThirdRow:Z

    .line 1337
    iput-boolean v6, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->displayFourthRow:Z

    .line 1338
    iput-boolean v6, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->displayFifthRow:Z

    .line 1339
    iput-boolean v6, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->displaySixthRow:Z

    .line 1340
    iput-boolean v6, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->displaySeventhRow:Z

    .line 1341
    const v1, 0x7f030029

    iput v1, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->layoutId:I

    .line 1343
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 1344
    const/4 v1, 0x2

    if-ne p2, v1, :cond_3

    .line 1346
    const v1, 0x7f030029

    iput v1, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->layoutId:I

    .line 1347
    iput-boolean v2, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->displaySecondRow:Z

    .line 1348
    const v1, 0x7f030029

    invoke-static {p0, v1, v5}, Lcom/android/providers/calendar/CalendarAppWidgetService;->getIdVisibility(Landroid/content/Context;II)I

    move-result v1

    iput v1, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->forceSecondRow:I

    .line 1371
    :cond_0
    :goto_0
    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    .line 1372
    const/4 v1, 0x2

    if-ne p2, v1, :cond_5

    .line 1374
    const v1, 0x7f030029

    iput v1, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->layoutId:I

    .line 1375
    iput-boolean v2, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->displaySecondRow:Z

    .line 1376
    const v1, 0x7f030029

    invoke-static {p0, v1, v5}, Lcom/android/providers/calendar/CalendarAppWidgetService;->getIdVisibility(Landroid/content/Context;II)I

    move-result v1

    iput v1, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->forceSecondRow:I

    .line 1398
    :cond_1
    :goto_1
    const/4 v1, 0x4

    if-ne p1, v1, :cond_2

    .line 1399
    if-ne p2, v2, :cond_7

    .line 1401
    const v1, 0x7f030028

    iput v1, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->layoutId:I

    .line 1402
    iput-boolean v6, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->displaySecondRow:Z

    .line 1429
    :cond_2
    :goto_2
    return-object v0

    .line 1349
    :cond_3
    const/4 v1, 0x3

    if-ne p2, v1, :cond_4

    .line 1351
    iput v4, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->layoutId:I

    .line 1352
    iput-boolean v2, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->displaySecondRow:Z

    .line 1353
    iput-boolean v2, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->displayThirdRow:Z

    .line 1354
    invoke-static {p0, v4, v5}, Lcom/android/providers/calendar/CalendarAppWidgetService;->getIdVisibility(Landroid/content/Context;II)I

    move-result v1

    iput v1, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->forceSecondRow:I

    .line 1355
    const v1, 0x7f0b0042

    invoke-static {p0, v4, v1}, Lcom/android/providers/calendar/CalendarAppWidgetService;->getIdVisibility(Landroid/content/Context;II)I

    move-result v1

    iput v1, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->forceThirdRow:I

    goto :goto_0

    .line 1357
    :cond_4
    const/4 v1, 0x4

    if-ne p2, v1, :cond_0

    .line 1359
    iput v3, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->layoutId:I

    .line 1360
    iput-boolean v2, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->displaySecondRow:Z

    .line 1361
    iput-boolean v2, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->displayThirdRow:Z

    .line 1362
    iput-boolean v2, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->displayFourthRow:Z

    .line 1363
    iput-boolean v2, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->displayFifthRow:Z

    .line 1364
    invoke-static {p0, v3, v5}, Lcom/android/providers/calendar/CalendarAppWidgetService;->getIdVisibility(Landroid/content/Context;II)I

    move-result v1

    iput v1, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->forceSecondRow:I

    .line 1365
    const v1, 0x7f0b0042

    invoke-static {p0, v3, v1}, Lcom/android/providers/calendar/CalendarAppWidgetService;->getIdVisibility(Landroid/content/Context;II)I

    move-result v1

    iput v1, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->forceThirdRow:I

    .line 1366
    const v1, 0x7f0b0044

    invoke-static {p0, v3, v1}, Lcom/android/providers/calendar/CalendarAppWidgetService;->getIdVisibility(Landroid/content/Context;II)I

    move-result v1

    iput v1, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->forceFourthRow:I

    .line 1367
    const v1, 0x7f0b0046

    invoke-static {p0, v3, v1}, Lcom/android/providers/calendar/CalendarAppWidgetService;->getIdVisibility(Landroid/content/Context;II)I

    move-result v1

    iput v1, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->forceFifthRow:I

    goto :goto_0

    .line 1377
    :cond_5
    const/4 v1, 0x3

    if-ne p2, v1, :cond_6

    .line 1379
    iput v4, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->layoutId:I

    .line 1380
    iput-boolean v2, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->displaySecondRow:Z

    .line 1381
    iput-boolean v2, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->displayThirdRow:Z

    .line 1382
    invoke-static {p0, v4, v5}, Lcom/android/providers/calendar/CalendarAppWidgetService;->getIdVisibility(Landroid/content/Context;II)I

    move-result v1

    iput v1, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->forceSecondRow:I

    .line 1383
    const v1, 0x7f0b0042

    invoke-static {p0, v4, v1}, Lcom/android/providers/calendar/CalendarAppWidgetService;->getIdVisibility(Landroid/content/Context;II)I

    move-result v1

    iput v1, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->forceThirdRow:I

    goto :goto_1

    .line 1384
    :cond_6
    const/4 v1, 0x4

    if-ne p2, v1, :cond_1

    .line 1386
    iput v3, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->layoutId:I

    .line 1387
    iput-boolean v2, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->displaySecondRow:Z

    .line 1388
    iput-boolean v2, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->displayThirdRow:Z

    .line 1389
    iput-boolean v2, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->displayFourthRow:Z

    .line 1390
    iput-boolean v2, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->displayFifthRow:Z

    .line 1391
    invoke-static {p0, v3, v5}, Lcom/android/providers/calendar/CalendarAppWidgetService;->getIdVisibility(Landroid/content/Context;II)I

    move-result v1

    iput v1, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->forceSecondRow:I

    .line 1392
    const v1, 0x7f0b0042

    invoke-static {p0, v3, v1}, Lcom/android/providers/calendar/CalendarAppWidgetService;->getIdVisibility(Landroid/content/Context;II)I

    move-result v1

    iput v1, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->forceThirdRow:I

    .line 1393
    const v1, 0x7f0b0044

    invoke-static {p0, v3, v1}, Lcom/android/providers/calendar/CalendarAppWidgetService;->getIdVisibility(Landroid/content/Context;II)I

    move-result v1

    iput v1, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->forceFourthRow:I

    .line 1394
    const v1, 0x7f0b0046

    invoke-static {p0, v3, v1}, Lcom/android/providers/calendar/CalendarAppWidgetService;->getIdVisibility(Landroid/content/Context;II)I

    move-result v1

    iput v1, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->forceFifthRow:I

    goto/16 :goto_1

    .line 1403
    :cond_7
    const/4 v1, 0x2

    if-ne p2, v1, :cond_8

    .line 1405
    const v1, 0x7f030029

    iput v1, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->layoutId:I

    .line 1406
    iput-boolean v2, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->displaySecondRow:Z

    .line 1407
    const v1, 0x7f030029

    invoke-static {p0, v1, v5}, Lcom/android/providers/calendar/CalendarAppWidgetService;->getIdVisibility(Landroid/content/Context;II)I

    move-result v1

    iput v1, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->forceSecondRow:I

    goto/16 :goto_2

    .line 1408
    :cond_8
    const/4 v1, 0x3

    if-ne p2, v1, :cond_9

    .line 1410
    iput v4, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->layoutId:I

    .line 1411
    iput-boolean v2, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->displaySecondRow:Z

    .line 1412
    iput-boolean v2, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->displayThirdRow:Z

    .line 1413
    invoke-static {p0, v4, v5}, Lcom/android/providers/calendar/CalendarAppWidgetService;->getIdVisibility(Landroid/content/Context;II)I

    move-result v1

    iput v1, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->forceSecondRow:I

    .line 1414
    const v1, 0x7f0b0042

    invoke-static {p0, v4, v1}, Lcom/android/providers/calendar/CalendarAppWidgetService;->getIdVisibility(Landroid/content/Context;II)I

    move-result v1

    iput v1, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->forceThirdRow:I

    goto/16 :goto_2

    .line 1415
    :cond_9
    const/4 v1, 0x4

    if-ne p2, v1, :cond_2

    .line 1417
    iput v3, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->layoutId:I

    .line 1418
    iput-boolean v2, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->displaySecondRow:Z

    .line 1419
    iput-boolean v2, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->displayThirdRow:Z

    .line 1420
    iput-boolean v2, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->displayFourthRow:Z

    .line 1421
    iput-boolean v2, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->displayFifthRow:Z

    .line 1422
    invoke-static {p0, v3, v5}, Lcom/android/providers/calendar/CalendarAppWidgetService;->getIdVisibility(Landroid/content/Context;II)I

    move-result v1

    iput v1, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->forceSecondRow:I

    .line 1423
    const v1, 0x7f0b0042

    invoke-static {p0, v3, v1}, Lcom/android/providers/calendar/CalendarAppWidgetService;->getIdVisibility(Landroid/content/Context;II)I

    move-result v1

    iput v1, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->forceThirdRow:I

    .line 1424
    const v1, 0x7f0b0044

    invoke-static {p0, v3, v1}, Lcom/android/providers/calendar/CalendarAppWidgetService;->getIdVisibility(Landroid/content/Context;II)I

    move-result v1

    iput v1, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->forceFourthRow:I

    .line 1425
    const v1, 0x7f0b0046

    invoke-static {p0, v3, v1}, Lcom/android/providers/calendar/CalendarAppWidgetService;->getIdVisibility(Landroid/content/Context;II)I

    move-result v1

    iput v1, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;->forceFifthRow:I

    goto/16 :goto_2
.end method

.method private performUpdate(Landroid/content/Context;[ILjava/util/Set;J)V
    .locals 26
    .parameter "context"
    .parameter "appWidgetIds"
    .parameter
    .parameter "now"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[I",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 292
    .local p3, changedEventIds:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 294
    .local v5, resolver:Landroid/content/ContentResolver;
    const/4 v14, 0x0

    .line 295
    .local v14, cursor:Landroid/database/Cursor;
    const/16 v23, 0x0

    .line 296
    .local v23, tzCursor:Landroid/database/Cursor;
    const/16 v25, 0x0

    .line 297
    .local v25, views:Landroid/widget/RemoteViews;
    const-wide/16 v20, -0x1

    .line 300
    .local v20, triggerTime:J
    :try_start_0
    sget-object v6, Landroid/provider/Calendar$CalendarCache;->URI:Landroid/net/Uri;

    sget-object v7, Landroid/provider/Calendar$CalendarCache;->POJECTION:[Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v23

    .line 302
    const/16 v22, 0x0

    .line 303
    .local v22, tz:Ljava/lang/String;
    if-eqz v23, :cond_1

    .line 304
    const-string v6, "key"

    move-object/from16 v0, v23

    move-object v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v17

    .line 305
    .local v17, keyColumn:I
    const-string v6, "value"

    move-object/from16 v0, v23

    move-object v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v24

    .line 306
    .local v24, valueColumn:I
    :cond_0
    :goto_0
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 307
    move-object/from16 v0, v23

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "timezoneInstances"

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 309
    invoke-interface/range {v23 .. v24}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    goto :goto_0

    .line 313
    .end local v17           #keyColumn:I
    .end local v24           #valueColumn:I
    :cond_1
    if-nez v22, :cond_2

    .line 314
    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v22

    .line 316
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/CalendarAppWidgetService;->mTimeZone:Ljava/util/TimeZone;

    move-object v6, v0

    if-eqz v6, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/CalendarAppWidgetService;->mTimeZone:Ljava/util/TimeZone;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v22

    move-object v1, v6

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 317
    :cond_3
    invoke-static/range {v22 .. v22}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/providers/calendar/CalendarAppWidgetService;->mTimeZone:Ljava/util/TimeZone;

    .line 319
    :cond_4
    const-wide/32 v9, 0x240c8400

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object v8, v5

    move-wide/from16 v11, p4

    invoke-direct/range {v6 .. v12}, Lcom/android/providers/calendar/CalendarAppWidgetService;->getUpcomingInstancesCursor(Landroid/content/Context;Landroid/content/ContentResolver;JJ)Landroid/database/Cursor;

    move-result-object v14

    .line 320
    if-eqz v14, :cond_a

    .line 321
    move-object/from16 v0, p0

    move-object v1, v14

    move-object/from16 v2, p3

    move-wide/from16 v3, p4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/providers/calendar/CalendarAppWidgetService;->buildMarkedEvents(Landroid/database/Cursor;Ljava/util/Set;J)Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;

    move-result-object v15

    .line 323
    .local v15, events:Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;
    const/16 v19, 0x1

    .line 324
    .local v19, shouldUpdate:Z
    invoke-interface/range {p3 .. p3}, Ljava/util/Set;->size()I

    move-result v6

    if-lez v6, :cond_5

    .line 325
    move-object v0, v15

    iget-boolean v0, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;->watchFound:Z

    move/from16 v19, v0

    .line 327
    :cond_5
    const-string v6, "CalAppWidgetService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cursor is not null, primaryCount is: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v15, Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;->primaryCount:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    iget v6, v15, Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;->primaryCount:I

    if-nez v6, :cond_9

    .line 329
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/calendar/CalendarAppWidgetService;->getAppWidgetNoEvents(Landroid/content/Context;)Landroid/widget/RemoteViews;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v25

    .line 338
    .end local v15           #events:Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;
    .end local v19           #shouldUpdate:Z
    :cond_6
    :goto_1
    if-eqz v14, :cond_7

    .line 339
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 341
    :cond_7
    if-eqz v23, :cond_8

    .line 342
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V

    .line 347
    :cond_8
    if-nez v25, :cond_d

    .line 378
    :goto_2
    return-void

    .line 330
    .restart local v15       #events:Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;
    .restart local v19       #shouldUpdate:Z
    :cond_9
    if-eqz v19, :cond_6

    .line 331
    :try_start_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v14

    move-object v3, v15

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/calendar/CalendarAppWidgetService;->getAppWidgetUpdate(Landroid/content/Context;Landroid/database/Cursor;Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;)Landroid/widget/RemoteViews;

    move-result-object v25

    .line 332
    move-object/from16 v0, p0

    move-object v1, v14

    move-object v2, v15

    invoke-direct {v0, v1, v2}, Lcom/android/providers/calendar/CalendarAppWidgetService;->calculateUpdateTime(Landroid/database/Cursor;Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;)J

    move-result-wide v20

    goto :goto_1

    .line 335
    .end local v15           #events:Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;
    .end local v19           #shouldUpdate:Z
    :cond_a
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/calendar/CalendarAppWidgetService;->getAppWidgetNoEvents(Landroid/content/Context;)Landroid/widget/RemoteViews;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v25

    goto :goto_1

    .line 338
    .end local v22           #tz:Ljava/lang/String;
    :catchall_0
    move-exception v6

    if-eqz v14, :cond_b

    .line 339
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 341
    :cond_b
    if-eqz v23, :cond_c

    .line 342
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V

    :cond_c
    throw v6

    .line 353
    .restart local v22       #tz:Ljava/lang/String;
    :cond_d
    invoke-static/range {p1 .. p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v16

    .line 354
    .local v16, gm:Landroid/appwidget/AppWidgetManager;
    if-eqz p2, :cond_11

    move-object/from16 v0, p2

    array-length v0, v0

    move v6, v0

    if-lez v6, :cond_11

    .line 355
    move-object/from16 v0, v16

    move-object/from16 v1, p2

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/appwidget/AppWidgetManager;->updateAppWidget([ILandroid/widget/RemoteViews;)V

    .line 367
    :cond_e
    :goto_3
    const-wide/16 v6, -0x1

    cmp-long v6, v20, v6

    if-eqz v6, :cond_f

    cmp-long v6, v20, p4

    if-gez v6, :cond_10

    .line 369
    :cond_f
    const-wide/32 v6, 0x1499700

    add-long v20, p4, v6

    .line 372
    :cond_10
    const-string v6, "alarm"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/app/AlarmManager;

    .line 373
    .local v13, am:Landroid/app/AlarmManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/CalendarAppWidgetService;->mComponentName:Landroid/content/ComponentName;

    move-object v6, v0

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-static {v0, v1}, Lcom/android/providers/calendar/CalendarWidgetProvider;->getUpdateIntent(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/app/PendingIntent;

    move-result-object v18

    .line 374
    .local v18, pendingUpdate:Landroid/app/PendingIntent;
    move-object v0, v13

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 375
    const/4 v6, 0x1

    move-object v0, v13

    move v1, v6

    move-wide/from16 v2, v20

    move-object/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_2

    .line 357
    .end local v13           #am:Landroid/app/AlarmManager;
    .end local v18           #pendingUpdate:Landroid/app/PendingIntent;
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/CalendarAppWidgetService;->mComponentName:Landroid/content/ComponentName;

    move-object v6, v0

    if-eqz v6, :cond_e

    .line 358
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/CalendarAppWidgetService;->mComponentName:Landroid/content/ComponentName;

    move-object v6, v0

    move-object/from16 v0, v16

    move-object v1, v6

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    goto :goto_3
.end method

.method private setEventRow(Landroid/content/Context;Landroid/database/Cursor;Landroid/widget/RemoteViews;Lcom/android/providers/calendar/CalendarAppWidgetService$EventInfoIds;)Landroid/widget/RemoteViews;
    .locals 24
    .parameter "context"
    .parameter "cursor"
    .parameter "views"
    .parameter "eventInfoIds"

    .prologue
    .line 609
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p2

    move v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/providers/calendar/CalendarAppWidgetService;->setNoEventsVisibleEventRow(Landroid/widget/RemoteViews;Lcom/android/providers/calendar/CalendarAppWidgetService$EventInfoIds;Landroid/database/Cursor;Z)V

    .line 611
    new-instance v18, Landroid/text/format/Time;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/CalendarAppWidgetService;->mTimeZone:Ljava/util/TimeZone;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v18

    move-object v1, v5

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 612
    .local v18, time:Landroid/text/format/Time;
    invoke-virtual/range {v18 .. v18}, Landroid/text/format/Time;->setToNow()V

    .line 613
    move-object/from16 v0, v18

    iget v0, v0, Landroid/text/format/Time;->yearDay:I

    move/from16 v23, v0

    .line 616
    .local v23, yearDay:I
    const/4 v5, 0x1

    move-object/from16 v0, p2

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 617
    .local v7, start:J
    const/4 v5, 0x0

    move-object/from16 v0, p2

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-eqz v5, :cond_6

    const/4 v5, 0x1

    move v13, v5

    .line 622
    .local v13, allDay:Z
    :goto_0
    if-eqz v13, :cond_7

    .line 623
    const-string v12, "UTC"

    .line 624
    .local v12, tz:Ljava/lang/String;
    const v11, 0x80010

    .line 635
    .local v11, flags:I
    :cond_0
    :goto_1
    invoke-static/range {p1 .. p1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 636
    or-int/lit16 v11, v11, 0x80

    .line 638
    :cond_1
    sget-object v5, Lcom/android/providers/calendar/CalendarAppWidgetService;->mSB:Ljava/lang/StringBuilder;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 639
    sget-object v6, Lcom/android/providers/calendar/CalendarAppWidgetService;->mF:Ljava/util/Formatter;

    move-object/from16 v5, p1

    move-wide v9, v7

    invoke-static/range {v5 .. v12}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v21

    .line 641
    .local v21, whenString:Ljava/lang/String;
    if-nez v13, :cond_2

    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v5

    invoke-static {v12, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 642
    new-instance v19, Ljava/lang/StringBuilder;

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 643
    .local v19, title:Ljava/lang/StringBuilder;
    move-object/from16 v0, v18

    iget v0, v0, Landroid/text/format/Time;->isDst:I

    move v5, v0

    if-eqz v5, :cond_8

    const/4 v5, 0x1

    move v14, v5

    .line 644
    .local v14, isDST:Z
    :goto_2
    const-string v5, " ("

    move-object/from16 v0, v19

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/CalendarAppWidgetService;->mTimeZone:Ljava/util/TimeZone;

    move-object v6, v0

    const/4 v9, 0x0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v10

    invoke-virtual {v6, v14, v9, v10}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 646
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 648
    .end local v14           #isDST:Z
    .end local v19           #title:Ljava/lang/StringBuilder;
    :cond_2
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$EventInfoIds;->whenId:I

    move v5, v0

    move-object/from16 v0, p3

    move v1, v5

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 651
    const/4 v5, 0x4

    move-object/from16 v0, p2

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 652
    .local v20, titleString:Ljava/lang/String;
    if-eqz v20, :cond_3

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_4

    .line 653
    :cond_3
    const v5, 0x7f080002

    move-object/from16 v0, p1

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 655
    :cond_4
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$EventInfoIds;->titleId:I

    move v5, v0

    move-object/from16 v0, p3

    move v1, v5

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 658
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$EventInfoIds;->conflictCount:I

    move v5, v0

    const/4 v6, 0x1

    if-le v5, v6, :cond_9

    .line 659
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$EventInfoIds;->conflictId:I

    move v5, v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "+"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$EventInfoIds;->conflictCount:I

    move v9, v0

    const/4 v10, 0x1

    sub-int/2addr v9, v10

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p3

    move v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 660
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$EventInfoIds;->conflictId:I

    move v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p3

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 662
    move-wide v15, v7

    .line 663
    .local v15, launchStart:J
    if-eqz v13, :cond_5

    .line 664
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v5

    move-wide v2, v7

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/calendar/CalendarAppWidgetService;->convertUtcToLocal(Landroid/text/format/Time;J)J

    move-result-wide v15

    .line 668
    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide v2, v15

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/calendar/CalendarAppWidgetService;->getDayPendingIntent(Landroid/content/Context;J)Landroid/app/PendingIntent;

    move-result-object v17

    .line 669
    .local v17, pendingIntent:Landroid/app/PendingIntent;
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$EventInfoIds;->rowId:I

    move v5, v0

    move-object/from16 v0, p3

    move v1, v5

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 678
    .end local v15           #launchStart:J
    :goto_3
    const/4 v5, 0x7

    move-object/from16 v0, p2

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 679
    .local v22, whereString:Ljava/lang/String;
    if-eqz v22, :cond_a

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_a

    .line 680
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$EventInfoIds;->whereId:I

    move v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p3

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 681
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$EventInfoIds;->whereId:I

    move v5, v0

    move-object/from16 v0, p3

    move v1, v5

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 687
    :goto_4
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$EventInfoIds;->statusImageId:I

    move v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p3

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 691
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$EventInfoIds;->statusImageId:I

    move v5, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/providers/calendar/CalendarAppWidgetService;->drawStatusImage(Landroid/database/Cursor;)Landroid/graphics/Bitmap;

    move-result-object v6

    move-object/from16 v0, p3

    move v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 693
    return-object p3

    .line 617
    .end local v11           #flags:I
    .end local v12           #tz:Ljava/lang/String;
    .end local v13           #allDay:Z
    .end local v17           #pendingIntent:Landroid/app/PendingIntent;
    .end local v20           #titleString:Ljava/lang/String;
    .end local v21           #whenString:Ljava/lang/String;
    .end local v22           #whereString:Ljava/lang/String;
    :cond_6
    const/4 v5, 0x0

    move v13, v5

    goto/16 :goto_0

    .line 626
    .restart local v13       #allDay:Z
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/CalendarAppWidgetService;->mTimeZone:Ljava/util/TimeZone;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v12

    .line 627
    .restart local v12       #tz:Ljava/lang/String;
    const v11, 0x80001

    .line 630
    .restart local v11       #flags:I
    move-object/from16 v0, v18

    move-wide v1, v7

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 631
    move-object/from16 v0, v18

    iget v0, v0, Landroid/text/format/Time;->yearDay:I

    move v5, v0

    move/from16 v0, v23

    move v1, v5

    if-eq v0, v1, :cond_0

    .line 632
    or-int/lit8 v11, v11, 0x10

    goto/16 :goto_1

    .line 643
    .restart local v19       #title:Ljava/lang/StringBuilder;
    .restart local v21       #whenString:Ljava/lang/String;
    :cond_8
    const/4 v5, 0x0

    move v14, v5

    goto/16 :goto_2

    .line 671
    .end local v19           #title:Ljava/lang/StringBuilder;
    .restart local v20       #titleString:Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$EventInfoIds;->conflictId:I

    move v5, v0

    const/16 v6, 0x8

    move-object/from16 v0, p3

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 673
    invoke-direct/range {p0 .. p2}, Lcom/android/providers/calendar/CalendarAppWidgetService;->getEventPendingIntent(Landroid/content/Context;Landroid/database/Cursor;)Landroid/app/PendingIntent;

    move-result-object v17

    .line 674
    .restart local v17       #pendingIntent:Landroid/app/PendingIntent;
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$EventInfoIds;->rowId:I

    move v5, v0

    move-object/from16 v0, p3

    move v1, v5

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    goto/16 :goto_3

    .line 683
    .restart local v22       #whereString:Ljava/lang/String;
    :cond_a
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$EventInfoIds;->whereId:I

    move v5, v0

    const/16 v6, 0x8

    move-object/from16 v0, p3

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_4
.end method

.method private setHeader(Landroid/content/Context;Landroid/widget/RemoteViews;Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;)Landroid/widget/RemoteViews;
    .locals 2
    .parameter "context"
    .parameter "views"
    .parameter "layoutData"

    .prologue
    .line 523
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/CalendarAppWidgetService;->getDayPendingIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 524
    .local v0, pendingIntent:Landroid/app/PendingIntent;
    const v1, 0x7f0b003d

    invoke-virtual {p2, v1, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 526
    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3, v1}, Lcom/android/providers/calendar/CalendarAppWidgetService;->setHeader(Landroid/content/Context;Landroid/widget/RemoteViews;Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;Landroid/app/PendingIntent;)Landroid/widget/RemoteViews;

    move-result-object v1

    return-object v1
.end method

.method private setHeader(Landroid/content/Context;Landroid/widget/RemoteViews;Lcom/android/providers/calendar/CalendarAppWidgetService$LayoutData;Landroid/app/PendingIntent;)Landroid/widget/RemoteViews;
    .locals 9
    .parameter "context"
    .parameter "views"
    .parameter "layoutData"
    .parameter "pendingIntent"

    .prologue
    .line 534
    new-instance v4, Landroid/text/format/Time;

    iget-object v5, p0, Lcom/android/providers/calendar/CalendarAppWidgetService;->mTimeZone:Ljava/util/TimeZone;

    invoke-virtual {v5}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 535
    .local v4, time:Landroid/text/format/Time;
    invoke-virtual {v4}, Landroid/text/format/Time;->setToNow()V

    .line 537
    iget v5, v4, Landroid/text/format/Time;->monthDay:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 538
    .local v0, dayOfMonth:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 539
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 543
    :cond_0
    const v5, 0x7f0b0003

    invoke-virtual {p2, v5, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 548
    iget v5, v4, Landroid/text/format/Time;->weekDay:I

    add-int/lit8 v5, v5, 0x1

    const/16 v6, 0xa

    invoke-static {v5, v6}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 550
    .local v1, dayOfWeek:Ljava/lang/String;
    const-string v5, "CalAppWidgetService"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "setHeader() - went into high density if"

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Lcom/motorola/blur/util/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 552
    const v5, 0x7f0b0004

    invoke-virtual {p2, v5, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 554
    iget v5, v4, Landroid/text/format/Time;->weekDay:I

    add-int/lit8 v5, v5, 0x1

    const/16 v6, 0x14

    invoke-static {v5, v6}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 557
    const v5, 0x7f0b0037

    invoke-virtual {p2, v5, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 561
    iget v5, v4, Landroid/text/format/Time;->month:I

    const/16 v6, 0xa

    invoke-static {v5, v6}, Landroid/text/format/DateUtils;->getMonthString(II)Ljava/lang/String;

    move-result-object v3

    .line 562
    .local v3, month:Ljava/lang/String;
    const v5, 0x7f0b0038

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 563
    iget v5, v4, Landroid/text/format/Time;->month:I

    const/16 v6, 0x14

    invoke-static {v5, v6}, Landroid/text/format/DateUtils;->getMonthString(II)Ljava/lang/String;

    move-result-object v3

    .line 564
    const v5, 0x7f0b0039

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 568
    invoke-static {p1, v4}, Lcom/android/providers/calendar/Utils;->lunarMonthAndDay(Landroid/content/Context;Landroid/text/format/Time;)Ljava/lang/String;

    move-result-object v2

    .line 569
    .local v2, lunarMonth:Ljava/lang/String;
    const v5, 0x7f0b0034

    invoke-virtual {p2, v5, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 570
    invoke-static {p1, v4}, Lcom/android/providers/calendar/Utils;->lunarDate(Landroid/content/Context;Landroid/text/format/Time;)Ljava/lang/String;

    move-result-object v2

    .line 571
    const v5, 0x7f0b003a

    invoke-virtual {p2, v5, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 573
    iget v5, p0, Lcom/android/providers/calendar/CalendarAppWidgetService;->mWidgetSpanX:I

    const/4 v6, 0x4

    if-ne v5, v6, :cond_1

    iget v5, p0, Lcom/android/providers/calendar/CalendarAppWidgetService;->mWidgetSpanY:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_2

    :cond_1
    iget v5, p0, Lcom/android/providers/calendar/CalendarAppWidgetService;->mWidgetSpanX:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_4

    .line 574
    :cond_2
    const v5, 0x7f0b0039

    const/4 v6, 0x0

    invoke-virtual {p2, v5, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 575
    const v5, 0x7f0b0038

    const/16 v6, 0x8

    invoke-virtual {p2, v5, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 576
    const v5, 0x7f0b0037

    const/4 v6, 0x0

    invoke-virtual {p2, v5, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 577
    const v5, 0x7f0b0004

    const/16 v6, 0x8

    invoke-virtual {p2, v5, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 578
    const v5, 0x7f0b0034

    const/4 v6, 0x0

    invoke-virtual {p2, v5, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 579
    const v5, 0x7f0b003a

    const/16 v6, 0x8

    invoke-virtual {p2, v5, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 588
    :goto_0
    sget-boolean v5, Lcom/android/providers/calendar/CalendarAppWidgetService;->sShowLunar:Z

    if-eqz v5, :cond_5

    .line 589
    const v5, 0x7f0b003a

    const/16 v6, 0x8

    invoke-virtual {p2, v5, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 590
    const v5, 0x7f0b0034

    const/4 v6, 0x0

    invoke-virtual {p2, v5, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 597
    :goto_1
    if-eqz p4, :cond_3

    .line 598
    const v5, 0x7f0b003d

    invoke-virtual {p2, v5, p4}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 601
    :cond_3
    return-object p2

    .line 581
    :cond_4
    const v5, 0x7f0b0038

    const/4 v6, 0x0

    invoke-virtual {p2, v5, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 582
    const v5, 0x7f0b0039

    const/16 v6, 0x8

    invoke-virtual {p2, v5, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 583
    const v5, 0x7f0b0004

    const/4 v6, 0x0

    invoke-virtual {p2, v5, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 584
    const v5, 0x7f0b0037

    const/16 v6, 0x8

    invoke-virtual {p2, v5, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 585
    const v5, 0x7f0b003a

    const/4 v6, 0x0

    invoke-virtual {p2, v5, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 586
    const v5, 0x7f0b0034

    const/16 v6, 0x8

    invoke-virtual {p2, v5, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_0

    .line 592
    :cond_5
    const v5, 0x7f0b003a

    const/16 v6, 0x8

    invoke-virtual {p2, v5, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 593
    const v5, 0x7f0b0034

    const/16 v6, 0x8

    invoke-virtual {p2, v5, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_1
.end method

.method private setNoEventsVisible(Landroid/widget/RemoteViews;Z)V
    .locals 5
    .parameter "views"
    .parameter "noEvents"

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 483
    const v1, 0x7f0b0002

    if-eqz p2, :cond_1

    move v2, v3

    :goto_0
    invoke-virtual {p1, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 485
    if-eqz p2, :cond_2

    move v0, v4

    .line 486
    .local v0, otherViews:I
    :goto_1
    const v1, 0x7f0b0006

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 487
    const v1, 0x7f0b0009

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 490
    if-eqz p2, :cond_0

    .line 491
    const v1, 0x7f0b0008

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 492
    const v1, 0x7f0b0007

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 493
    const v1, 0x7f0b000a

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 494
    const v1, 0x7f0b000b

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 496
    :cond_0
    return-void

    .end local v0           #otherViews:I
    :cond_1
    move v2, v4

    .line 483
    goto :goto_0

    :cond_2
    move v0, v3

    .line 485
    goto :goto_1
.end method

.method private setNoEventsVisibleEventRow(Landroid/widget/RemoteViews;Lcom/android/providers/calendar/CalendarAppWidgetService$EventInfoIds;Landroid/database/Cursor;Z)V
    .locals 5
    .parameter "views"
    .parameter "eventInfoIds"
    .parameter "cursor"
    .parameter "noEvents"

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 506
    const v1, 0x7f0b0002

    if-eqz p4, :cond_1

    move v2, v3

    :goto_0
    invoke-virtual {p1, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 508
    if-eqz p4, :cond_2

    move v0, v4

    .line 509
    .local v0, otherViews:I
    :goto_1
    iget v1, p2, Lcom/android/providers/calendar/CalendarAppWidgetService$EventInfoIds;->whenId:I

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 510
    iget v1, p2, Lcom/android/providers/calendar/CalendarAppWidgetService$EventInfoIds;->titleId:I

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 511
    iget v1, p2, Lcom/android/providers/calendar/CalendarAppWidgetService$EventInfoIds;->bkgImageId:I

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 512
    iget v1, p2, Lcom/android/providers/calendar/CalendarAppWidgetService$EventInfoIds;->statusImageId:I

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 515
    if-eqz p4, :cond_0

    .line 516
    iget v1, p2, Lcom/android/providers/calendar/CalendarAppWidgetService$EventInfoIds;->conflictId:I

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 517
    iget v1, p2, Lcom/android/providers/calendar/CalendarAppWidgetService$EventInfoIds;->whereId:I

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 519
    :cond_0
    return-void

    .end local v0           #otherViews:I
    :cond_1
    move v2, v4

    .line 506
    goto :goto_0

    :cond_2
    move v0, v3

    .line 508
    goto :goto_1
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 185
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 191
    const-string v2, "alarm"

    invoke-virtual {p0, v2}, Lcom/android/providers/calendar/CalendarAppWidgetService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 192
    .local v0, am:Landroid/app/AlarmManager;
    iget-object v2, p0, Lcom/android/providers/calendar/CalendarAppWidgetService;->mComponentName:Landroid/content/ComponentName;

    invoke-static {p0, v2}, Lcom/android/providers/calendar/CalendarWidgetProvider;->getUpdateIntent(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 193
    .local v1, pendingUpdate:Landroid/app/PendingIntent;
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 194
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 5
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    const-string v1, "provider_class_name"

    .line 165
    sget-object v1, Lcom/android/providers/calendar/AppWidgetShared;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 166
    :try_start_0
    sget-boolean v2, Lcom/android/providers/calendar/AppWidgetShared;->sUpdateRunning:Z

    if-nez v2, :cond_1

    .line 168
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/providers/calendar/AppWidgetShared;->sUpdateRunning:Z

    .line 169
    if-eqz p1, :cond_0

    const-string v2, "provider_class_name"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 170
    const-string v2, "provider_class_name"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 171
    .local v0, className:Ljava/lang/String;
    const-string v2, "CalAppWidgetService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Caller className :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 173
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.android.providers.calendar"

    invoke-direct {v2, v3, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/providers/calendar/CalendarAppWidgetService;->mComponentName:Landroid/content/ComponentName;

    .line 177
    .end local v0           #className:Ljava/lang/String;
    :cond_0
    new-instance v2, Ljava/lang/Thread;

    invoke-direct {v2, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 179
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v1

    return v1

    .line 179
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public run()V
    .locals 19

    .prologue
    .line 202
    :cond_0
    :goto_0
    const-wide/16 v7, -0x1

    .line 206
    .local v7, now:J
    sget-object v3, Lcom/android/providers/calendar/AppWidgetShared;->sLock:Ljava/lang/Object;

    monitor-enter v3

    .line 208
    :try_start_0
    sget-boolean v4, Lcom/android/providers/calendar/AppWidgetShared;->sUpdateRequested:Z

    if-nez v4, :cond_1

    .line 211
    invoke-static {}, Lcom/android/providers/calendar/AppWidgetShared;->clearLocked()V

    .line 213
    new-instance v16, Landroid/content/Intent;

    invoke-direct/range {v16 .. v16}, Landroid/content/Intent;-><init>()V

    .line 214
    .local v16, i:Landroid/content/Intent;
    const-string v4, "com.android.providers.calendar.NEXT_WIDGET_UPDATE"

    move-object/from16 v0, v16

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 215
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/providers/calendar/CalendarAppWidgetService;->sendBroadcast(Landroid/content/Intent;)V

    .line 216
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/calendar/CalendarAppWidgetService;->stopSelf()V

    .line 217
    monitor-exit v3

    return-void

    .line 221
    .end local v16           #i:Landroid/content/Intent;
    :cond_1
    const/4 v4, 0x0

    sput-boolean v4, Lcom/android/providers/calendar/AppWidgetShared;->sUpdateRequested:Z

    .line 223
    sget-wide v7, Lcom/android/providers/calendar/AppWidgetShared;->sLastRequest:J

    .line 224
    invoke-static {}, Lcom/android/providers/calendar/AppWidgetShared;->collectAppWidgetIdsLocked()[I

    move-result-object v11

    .line 225
    .local v11, appWidgetIds:[I
    invoke-static {}, Lcom/android/providers/calendar/AppWidgetShared;->collectChangedEventIdsLocked()Ljava/util/Set;

    move-result-object v6

    .line 227
    .local v6, changedEventIds:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    if-eqz v11, :cond_2

    .line 228
    const/16 v16, 0x0

    .local v16, i:I
    :goto_1
    array-length v4, v11

    move/from16 v0, v16

    move v1, v4

    if-ge v0, v1, :cond_2

    .line 229
    aget v4, v11, v16

    invoke-static {v4}, Lcom/android/providers/calendar/AppWidgetShared;->removeNextWidgetId(I)V

    .line 228
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 232
    .end local v16           #i:I
    :cond_2
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 236
    :try_start_1
    const-string v3, "com.android.calendar"

    const/4 v4, 0x2

    move-object/from16 v0, p0

    move-object v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/calendar/CalendarAppWidgetService;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/providers/calendar/CalendarAppWidgetService;->mContextOfCalendar:Landroid/content/Context;

    .line 237
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/CalendarAppWidgetService;->mContextOfCalendar:Landroid/content/Context;

    move-object v3, v0

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v17

    .line 239
    .local v17, prefs:Landroid/content/SharedPreferences;
    const-string v3, "preferences_show_lunar"

    const/4 v4, 0x1

    move-object/from16 v0, v17

    move-object v1, v3

    move v2, v4

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/android/providers/calendar/CalendarAppWidgetService;->sShowLunar:Z
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 245
    .end local v17           #prefs:Landroid/content/SharedPreferences;
    :goto_2
    invoke-static/range {p0 .. p0}, Lcom/android/providers/calendar/AppWidgetShared;->getDensityDPI(Landroid/content/Context;)I

    move-result v3

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/providers/calendar/CalendarAppWidgetService;->mScaleDPI:I

    .line 246
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/calendar/CalendarAppWidgetService;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/providers/calendar/CalendarAppWidgetService;->mOrientation:I

    .line 248
    const/16 v18, 0x0

    .line 249
    .local v18, span:[I
    if-eqz v11, :cond_4

    array-length v3, v11

    if-lez v3, :cond_4

    .line 250
    const/4 v3, 0x1

    new-array v5, v3, [I

    .line 251
    .local v5, ids:[I
    const/16 v16, 0x0

    .restart local v16       #i:I
    :goto_3
    array-length v3, v11

    move/from16 v0, v16

    move v1, v3

    if-ge v0, v1, :cond_0

    .line 252
    aget v3, v11, v16

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/providers/calendar/CalendarAppWidgetService;->mWidgetId:I

    .line 254
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/providers/calendar/CalendarAppWidgetService;->mWidgetId:I

    move v3, v0

    move-object/from16 v0, p0

    move v1, v3

    invoke-static {v0, v1}, Lcom/motorola/blur/home/widget/ChipWidgetProvider;->getWidgetSpan(Landroid/content/Context;I)[I

    move-result-object v18

    .line 255
    if-eqz v18, :cond_3

    .line 256
    const/4 v3, 0x0

    aget v3, v18, v3

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/providers/calendar/CalendarAppWidgetService;->mWidgetSpanX:I

    .line 257
    const/4 v3, 0x1

    aget v3, v18, v3

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/providers/calendar/CalendarAppWidgetService;->mWidgetSpanY:I

    .line 261
    :cond_3
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/providers/calendar/CalendarAppWidgetService;->mWidgetId:I

    move v4, v0

    aput v4, v5, v3

    move-object/from16 v3, p0

    move-object/from16 v4, p0

    .line 262
    invoke-direct/range {v3 .. v8}, Lcom/android/providers/calendar/CalendarAppWidgetService;->performUpdate(Landroid/content/Context;[ILjava/util/Set;J)V

    .line 251
    add-int/lit8 v16, v16, 0x1

    goto :goto_3

    .line 232
    .end local v5           #ids:[I
    .end local v6           #changedEventIds:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    .end local v11           #appWidgetIds:[I
    .end local v16           #i:I
    .end local v18           #span:[I
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 240
    .restart local v6       #changedEventIds:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    .restart local v11       #appWidgetIds:[I
    :catch_0
    move-exception v3

    move-object v15, v3

    .line 241
    .local v15, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v15}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_2

    .line 265
    .end local v15           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v18       #span:[I
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/providers/calendar/CalendarAppWidgetService;->mWidgetId:I

    move v3, v0

    move-object/from16 v0, p0

    move v1, v3

    invoke-static {v0, v1}, Lcom/motorola/blur/home/widget/ChipWidgetProvider;->getWidgetSpan(Landroid/content/Context;I)[I

    move-result-object v18

    .line 266
    if-eqz v18, :cond_5

    .line 267
    const/4 v3, 0x0

    aget v3, v18, v3

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/providers/calendar/CalendarAppWidgetService;->mWidgetSpanX:I

    .line 268
    const/4 v3, 0x1

    aget v3, v18, v3

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/providers/calendar/CalendarAppWidgetService;->mWidgetSpanY:I

    .line 272
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/providers/calendar/CalendarAppWidgetService;->mWidgetId:I

    move v3, v0

    invoke-static {v3}, Lcom/android/providers/calendar/AppWidgetShared;->removeNextWidgetId(I)V

    .line 275
    const-string v3, "CalAppWidgetService"

    const-string v4, "performUpdate"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v9, p0

    move-object/from16 v10, p0

    move-object v12, v6

    move-wide v13, v7

    .line 276
    invoke-direct/range {v9 .. v14}, Lcom/android/providers/calendar/CalendarAppWidgetService;->performUpdate(Landroid/content/Context;[ILjava/util/Set;J)V

    goto/16 :goto_0
.end method
