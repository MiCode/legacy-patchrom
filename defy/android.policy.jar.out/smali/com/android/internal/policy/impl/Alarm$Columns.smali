.class public Lcom/android/internal/policy/impl/Alarm$Columns;
.super Ljava/lang/Object;
.source "Alarm.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/Alarm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Columns"
.end annotation


# static fields
.field public static final ALARM_ALERT_INDEX:I = 0x8

.field public static final ALARM_DAYS_OF_WEEK_INDEX:I = 0x3

.field public static final ALARM_ENABLED_INDEX:I = 0x5

.field public static final ALARM_HOUR_INDEX:I = 0x1

.field public static final ALARM_ID_INDEX:I = 0x0

.field public static final ALARM_MESSAGE_INDEX:I = 0x7

.field public static final ALARM_MINUTES_INDEX:I = 0x2

.field static final ALARM_QUERY_COLUMNS:[Ljava/lang/String; = null

.field public static final ALARM_SNOOZED_INDEX:I = 0x9

.field public static final ALARM_TIME:Ljava/lang/String; = "alarmtime"

.field public static final ALARM_TIME_INDEX:I = 0x4

.field public static final ALARM_VIBRATE_INDEX:I = 0x6

.field public static final ALERT:Ljava/lang/String; = "alert"

.field public static final CONTENT_ENABLE_URI:Landroid/net/Uri; = null

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final DAYS_OF_WEEK:Ljava/lang/String; = "daysofweek"

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "hour, minutes ASC"

.field public static final ENABLED:Ljava/lang/String; = "enabled"

.field public static final HOUR:Ljava/lang/String; = "hour"

.field public static final MESSAGE:Ljava/lang/String; = "message"

.field public static final MINUTES:Ljava/lang/String; = "minutes"

.field public static final POWEROFF_ALARM:Ljava/lang/String; = "poweroff_alarm"

.field public static final SNOOZED:Ljava/lang/String; = "snoozed"

.field public static final VIBRATE:Ljava/lang/String; = "vibrate"

.field public static final WHERE_ENABLED:Ljava/lang/String; = "enabled=1"

.field public static final WHERE_POWEROFF_AND_ENABLED_OR_SNOOZED:Ljava/lang/String; = "(poweroff=1) AND (enabled=1 or snoozed=1)"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const-string v0, "content://com.motorola.blur.alarmclock/alarm"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/policy/impl/Alarm$Columns;->CONTENT_URI:Landroid/net/Uri;

    const-string v0, "content://com.motorola.blur.alarmclock/alarm/enabled"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/policy/impl/Alarm$Columns;->CONTENT_ENABLE_URI:Landroid/net/Uri;

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "hour"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "minutes"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "daysofweek"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "alarmtime"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "enabled"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "vibrate"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "message"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "alert"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "snoozed"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/policy/impl/Alarm$Columns;->ALARM_QUERY_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
