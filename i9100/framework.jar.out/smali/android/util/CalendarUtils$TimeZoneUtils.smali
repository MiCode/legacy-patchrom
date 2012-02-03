.class public Landroid/util/CalendarUtils$TimeZoneUtils;
.super Ljava/lang/Object;
.source "CalendarUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/CalendarUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TimeZoneUtils"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/CalendarUtils$TimeZoneUtils$AsyncTZHandler;
    }
.end annotation


# static fields
.field public static final KEY_HOME_TZ:Ljava/lang/String; = "preferences_home_tz"

.field public static final KEY_HOME_TZ_ENABLED:Ljava/lang/String; = "preferences_home_tz_enabled"

.field private static final TIMEZONE_INSTANCES_ARGS:[Ljava/lang/String;

.field private static final TIMEZONE_TYPE_ARGS:[Ljava/lang/String;

.field private static mF:Ljava/util/Formatter;

.field private static volatile mFirstTZRequest:Z

.field private static mHandler:Landroid/util/CalendarUtils$TimeZoneUtils$AsyncTZHandler;

.field private static volatile mHomeTZ:Ljava/lang/String;

.field private static mSB:Ljava/lang/StringBuilder;

.field private static mTZCallbacks:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile mTZQueryInProgress:Z

.field private static mToken:I

.field private static volatile mUseHomeTZ:Z


# instance fields
.field private final mPrefsName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 48
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "timezoneType"

    aput-object v1, v0, v3

    sput-object v0, Landroid/util/CalendarUtils$TimeZoneUtils;->TIMEZONE_TYPE_ARGS:[Ljava/lang/String;

    .line 49
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "timezoneInstances"

    aput-object v1, v0, v3

    sput-object v0, Landroid/util/CalendarUtils$TimeZoneUtils;->TIMEZONE_INSTANCES_ARGS:[Ljava/lang/String;

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    sput-object v0, Landroid/util/CalendarUtils$TimeZoneUtils;->mSB:Ljava/lang/StringBuilder;

    .line 53
    new-instance v0, Ljava/util/Formatter;

    sget-object v1, Landroid/util/CalendarUtils$TimeZoneUtils;->mSB:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    sput-object v0, Landroid/util/CalendarUtils$TimeZoneUtils;->mF:Ljava/util/Formatter;

    .line 54
    sput-boolean v4, Landroid/util/CalendarUtils$TimeZoneUtils;->mFirstTZRequest:Z

    .line 55
    sput-boolean v3, Landroid/util/CalendarUtils$TimeZoneUtils;->mTZQueryInProgress:Z

    .line 57
    sput-boolean v3, Landroid/util/CalendarUtils$TimeZoneUtils;->mUseHomeTZ:Z

    .line 58
    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/util/CalendarUtils$TimeZoneUtils;->mHomeTZ:Ljava/lang/String;

    .line 60
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Landroid/util/CalendarUtils$TimeZoneUtils;->mTZCallbacks:Ljava/util/HashSet;

    .line 61
    sput v4, Landroid/util/CalendarUtils$TimeZoneUtils;->mToken:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "prefsName"

    .prologue
    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    iput-object p1, p0, Landroid/util/CalendarUtils$TimeZoneUtils;->mPrefsName:Ljava/lang/String;

    .line 141
    return-void
.end method

.method static synthetic access$000()Ljava/util/HashSet;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Landroid/util/CalendarUtils$TimeZoneUtils;->mTZCallbacks:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 47
    sget-boolean v0, Landroid/util/CalendarUtils$TimeZoneUtils;->mUseHomeTZ:Z

    return v0
.end method

.method static synthetic access$102(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 47
    sput-boolean p0, Landroid/util/CalendarUtils$TimeZoneUtils;->mUseHomeTZ:Z

    return p0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Landroid/util/CalendarUtils$TimeZoneUtils;->mHomeTZ:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"

    .prologue
    .line 47
    sput-object p0, Landroid/util/CalendarUtils$TimeZoneUtils;->mHomeTZ:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Landroid/util/CalendarUtils$TimeZoneUtils;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Landroid/util/CalendarUtils$TimeZoneUtils;->mPrefsName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 47
    sput-boolean p0, Landroid/util/CalendarUtils$TimeZoneUtils;->mTZQueryInProgress:Z

    return p0
.end method


# virtual methods
.method public forceDBRequery(Landroid/content/Context;Ljava/lang/Runnable;)V
    .locals 2
    .parameter "context"
    .parameter "callback"

    .prologue
    .line 297
    sget-object v0, Landroid/util/CalendarUtils$TimeZoneUtils;->mTZCallbacks:Ljava/util/HashSet;

    monitor-enter v0

    .line 298
    :try_start_0
    sget-boolean v1, Landroid/util/CalendarUtils$TimeZoneUtils;->mTZQueryInProgress:Z

    if-eqz v1, :cond_0

    .line 299
    sget-object v1, Landroid/util/CalendarUtils$TimeZoneUtils;->mTZCallbacks:Ljava/util/HashSet;

    invoke-virtual {v1, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 300
    monitor-exit v0

    .line 305
    :goto_0
    return-void

    .line 302
    :cond_0
    const/4 v1, 0x1

    sput-boolean v1, Landroid/util/CalendarUtils$TimeZoneUtils;->mFirstTZRequest:Z

    .line 303
    invoke-virtual {p0, p1, p2}, Landroid/util/CalendarUtils$TimeZoneUtils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    .line 304
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;
    .locals 11
    .parameter "context"
    .parameter "startMillis"
    .parameter "endMillis"
    .parameter "flags"

    .prologue
    .line 163
    move/from16 v0, p6

    and-int/lit16 v0, v0, 0x2000

    move v1, v0

    if-eqz v1, :cond_0

    .line 164
    const-string v8, "UTC"

    .line 168
    .local v8, tz:Ljava/lang/String;
    :goto_0
    sget-object v10, Landroid/util/CalendarUtils$TimeZoneUtils;->mSB:Ljava/lang/StringBuilder;

    monitor-enter v10

    .line 169
    :try_start_0
    sget-object v1, Landroid/util/CalendarUtils$TimeZoneUtils;->mSB:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 170
    sget-object v2, Landroid/util/CalendarUtils$TimeZoneUtils;->mF:Ljava/util/Formatter;

    move-object v1, p1

    move-wide v3, p2

    move-wide v5, p4

    move/from16 v7, p6

    invoke-static/range {v1 .. v8}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v9

    .line 172
    .local v9, date:Ljava/lang/String;
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    return-object v9

    .line 166
    .end local v8           #tz:Ljava/lang/String;
    .end local v9           #date:Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Landroid/util/CalendarUtils$TimeZoneUtils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v8

    .restart local v8       #tz:Ljava/lang/String;
    goto :goto_0

    .line 172
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;
    .locals 10
    .parameter "context"
    .parameter "callback"

    .prologue
    .line 260
    sget-object v9, Landroid/util/CalendarUtils$TimeZoneUtils;->mTZCallbacks:Ljava/util/HashSet;

    monitor-enter v9

    .line 261
    :try_start_0
    sget-boolean v0, Landroid/util/CalendarUtils$TimeZoneUtils;->mFirstTZRequest:Z

    if-eqz v0, :cond_1

    .line 262
    const/4 v0, 0x1

    sput-boolean v0, Landroid/util/CalendarUtils$TimeZoneUtils;->mTZQueryInProgress:Z

    .line 263
    const/4 v0, 0x0

    sput-boolean v0, Landroid/util/CalendarUtils$TimeZoneUtils;->mFirstTZRequest:Z

    .line 265
    iget-object v0, p0, Landroid/util/CalendarUtils$TimeZoneUtils;->mPrefsName:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/util/CalendarUtils;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 266
    .local v8, prefs:Landroid/content/SharedPreferences;
    const-string/jumbo v0, "preferences_home_tz_enabled"

    const/4 v1, 0x0

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/util/CalendarUtils$TimeZoneUtils;->mUseHomeTZ:Z

    .line 267
    const-string/jumbo v0, "preferences_home_tz"

    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/util/CalendarUtils$TimeZoneUtils;->mHomeTZ:Ljava/lang/String;

    .line 273
    sget-object v0, Landroid/util/CalendarUtils$TimeZoneUtils;->mHandler:Landroid/util/CalendarUtils$TimeZoneUtils$AsyncTZHandler;

    if-nez v0, :cond_0

    .line 274
    new-instance v0, Landroid/util/CalendarUtils$TimeZoneUtils$AsyncTZHandler;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/util/CalendarUtils$TimeZoneUtils$AsyncTZHandler;-><init>(Landroid/util/CalendarUtils$TimeZoneUtils;Landroid/content/ContentResolver;)V

    sput-object v0, Landroid/util/CalendarUtils$TimeZoneUtils;->mHandler:Landroid/util/CalendarUtils$TimeZoneUtils$AsyncTZHandler;

    .line 276
    :cond_0
    sget-object v0, Landroid/util/CalendarUtils$TimeZoneUtils;->mHandler:Landroid/util/CalendarUtils$TimeZoneUtils$AsyncTZHandler;

    const/4 v1, 0x0

    sget-object v3, Landroid/provider/Calendar$CalendarCache;->URI:Landroid/net/Uri;

    sget-object v4, Landroid/provider/Calendar$CalendarCache;->POJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p1

    invoke-virtual/range {v0 .. v7}, Landroid/util/CalendarUtils$TimeZoneUtils$AsyncTZHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    .end local v8           #prefs:Landroid/content/SharedPreferences;
    :cond_1
    sget-boolean v0, Landroid/util/CalendarUtils$TimeZoneUtils;->mTZQueryInProgress:Z

    if-eqz v0, :cond_2

    .line 280
    sget-object v0, Landroid/util/CalendarUtils$TimeZoneUtils;->mTZCallbacks:Ljava/util/HashSet;

    invoke-virtual {v0, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 282
    :cond_2
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 283
    sget-boolean v0, Landroid/util/CalendarUtils$TimeZoneUtils;->mUseHomeTZ:Z

    if-eqz v0, :cond_3

    sget-object v0, Landroid/util/CalendarUtils$TimeZoneUtils;->mHomeTZ:Ljava/lang/String;

    :goto_0
    return-object v0

    .line 282
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 283
    :cond_3
    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public setTimeZone(Landroid/content/Context;Ljava/lang/String;)V
    .locals 17
    .parameter "context"
    .parameter "timeZone"

    .prologue
    .line 189
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 243
    :cond_0
    :goto_0
    return-void

    .line 195
    :cond_1
    const/16 v16, 0x0

    .line 196
    .local v16, updatePrefs:Z
    sget-object v3, Landroid/util/CalendarUtils$TimeZoneUtils;->mTZCallbacks:Ljava/util/HashSet;

    monitor-enter v3

    .line 197
    :try_start_0
    const-string v4, "auto"

    move-object v0, v4

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 198
    sget-boolean v4, Landroid/util/CalendarUtils$TimeZoneUtils;->mUseHomeTZ:Z

    if-eqz v4, :cond_2

    .line 199
    const/16 v16, 0x1

    .line 201
    :cond_2
    const/4 v4, 0x0

    sput-boolean v4, Landroid/util/CalendarUtils$TimeZoneUtils;->mUseHomeTZ:Z

    .line 209
    :goto_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    if-eqz v16, :cond_0

    .line 212
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/util/CalendarUtils$TimeZoneUtils;->mPrefsName:Ljava/lang/String;

    move-object v3, v0

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-static {v0, v1}, Landroid/util/CalendarUtils;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v15

    .line 213
    .local v15, prefs:Landroid/content/SharedPreferences;
    const-string/jumbo v3, "preferences_home_tz_enabled"

    sget-boolean v4, Landroid/util/CalendarUtils$TimeZoneUtils;->mUseHomeTZ:Z

    invoke-static {v15, v3, v4}, Landroid/util/CalendarUtils;->setSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    .line 214
    const-string/jumbo v3, "preferences_home_tz"

    sget-object v4, Landroid/util/CalendarUtils$TimeZoneUtils;->mHomeTZ:Ljava/lang/String;

    invoke-static {v15, v3, v4}, Landroid/util/CalendarUtils;->setSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 218
    .local v7, values:Landroid/content/ContentValues;
    sget-object v3, Landroid/util/CalendarUtils$TimeZoneUtils;->mHandler:Landroid/util/CalendarUtils$TimeZoneUtils$AsyncTZHandler;

    if-eqz v3, :cond_3

    .line 219
    sget-object v3, Landroid/util/CalendarUtils$TimeZoneUtils;->mHandler:Landroid/util/CalendarUtils$TimeZoneUtils$AsyncTZHandler;

    sget v4, Landroid/util/CalendarUtils$TimeZoneUtils;->mToken:I

    invoke-virtual {v3, v4}, Landroid/util/CalendarUtils$TimeZoneUtils$AsyncTZHandler;->cancelOperation(I)V

    .line 222
    :cond_3
    new-instance v3, Landroid/util/CalendarUtils$TimeZoneUtils$AsyncTZHandler;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    move-object v0, v3

    move-object/from16 v1, p0

    move-object v2, v4

    invoke-direct {v0, v1, v2}, Landroid/util/CalendarUtils$TimeZoneUtils$AsyncTZHandler;-><init>(Landroid/util/CalendarUtils$TimeZoneUtils;Landroid/content/ContentResolver;)V

    sput-object v3, Landroid/util/CalendarUtils$TimeZoneUtils;->mHandler:Landroid/util/CalendarUtils$TimeZoneUtils$AsyncTZHandler;

    .line 225
    sget v3, Landroid/util/CalendarUtils$TimeZoneUtils;->mToken:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Landroid/util/CalendarUtils$TimeZoneUtils;->mToken:I

    if-nez v3, :cond_4

    .line 226
    const/4 v3, 0x1

    sput v3, Landroid/util/CalendarUtils$TimeZoneUtils;->mToken:I

    .line 230
    :cond_4
    const-string/jumbo v3, "value"

    sget-boolean v4, Landroid/util/CalendarUtils$TimeZoneUtils;->mUseHomeTZ:Z

    if-eqz v4, :cond_8

    const-string v4, "home"

    :goto_2
    invoke-virtual {v7, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    sget-object v3, Landroid/util/CalendarUtils$TimeZoneUtils;->mHandler:Landroid/util/CalendarUtils$TimeZoneUtils$AsyncTZHandler;

    sget v4, Landroid/util/CalendarUtils$TimeZoneUtils;->mToken:I

    const/4 v5, 0x0

    sget-object v6, Landroid/provider/Calendar$CalendarCache;->URI:Landroid/net/Uri;

    const-string v8, "key=?"

    sget-object v9, Landroid/util/CalendarUtils$TimeZoneUtils;->TIMEZONE_TYPE_ARGS:[Ljava/lang/String;

    invoke-virtual/range {v3 .. v9}, Landroid/util/CalendarUtils$TimeZoneUtils$AsyncTZHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    .line 236
    sget-boolean v3, Landroid/util/CalendarUtils$TimeZoneUtils;->mUseHomeTZ:Z

    if-eqz v3, :cond_0

    .line 237
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 238
    .local v12, values2:Landroid/content/ContentValues;
    const-string/jumbo v3, "value"

    sget-object v4, Landroid/util/CalendarUtils$TimeZoneUtils;->mHomeTZ:Ljava/lang/String;

    invoke-virtual {v12, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    sget-object v8, Landroid/util/CalendarUtils$TimeZoneUtils;->mHandler:Landroid/util/CalendarUtils$TimeZoneUtils$AsyncTZHandler;

    sget v9, Landroid/util/CalendarUtils$TimeZoneUtils;->mToken:I

    const/4 v10, 0x0

    sget-object v11, Landroid/provider/Calendar$CalendarCache;->URI:Landroid/net/Uri;

    const-string v13, "key=?"

    sget-object v14, Landroid/util/CalendarUtils$TimeZoneUtils;->TIMEZONE_INSTANCES_ARGS:[Ljava/lang/String;

    invoke-virtual/range {v8 .. v14}, Landroid/util/CalendarUtils$TimeZoneUtils$AsyncTZHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 203
    .end local v7           #values:Landroid/content/ContentValues;
    .end local v12           #values2:Landroid/content/ContentValues;
    .end local v15           #prefs:Landroid/content/SharedPreferences;
    :cond_5
    :try_start_1
    sget-boolean v4, Landroid/util/CalendarUtils$TimeZoneUtils;->mUseHomeTZ:Z

    if-eqz v4, :cond_6

    sget-object v4, Landroid/util/CalendarUtils$TimeZoneUtils;->mHomeTZ:Ljava/lang/String;

    move-object v0, v4

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 204
    :cond_6
    const/16 v16, 0x1

    .line 206
    :cond_7
    const/4 v4, 0x1

    sput-boolean v4, Landroid/util/CalendarUtils$TimeZoneUtils;->mUseHomeTZ:Z

    .line 207
    sput-object p2, Landroid/util/CalendarUtils$TimeZoneUtils;->mHomeTZ:Ljava/lang/String;

    goto/16 :goto_1

    .line 209
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 230
    .restart local v7       #values:Landroid/content/ContentValues;
    .restart local v15       #prefs:Landroid/content/SharedPreferences;
    :cond_8
    const-string v4, "auto"

    goto :goto_2
.end method
