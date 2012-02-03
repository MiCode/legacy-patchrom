.class Landroid/util/CalendarUtils$TimeZoneUtils$AsyncTZHandler;
.super Landroid/content/AsyncQueryHandler;
.source "CalendarUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/CalendarUtils$TimeZoneUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsyncTZHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/util/CalendarUtils$TimeZoneUtils;


# direct methods
.method public constructor <init>(Landroid/util/CalendarUtils$TimeZoneUtils;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter "cr"

    .prologue
    .line 84
    iput-object p1, p0, Landroid/util/CalendarUtils$TimeZoneUtils$AsyncTZHandler;->this$0:Landroid/util/CalendarUtils$TimeZoneUtils;

    .line 85
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 86
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 12
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    const/4 v11, 0x0

    .line 90
    invoke-static {}, Landroid/util/CalendarUtils$TimeZoneUtils;->access$000()Ljava/util/HashSet;

    move-result-object v9

    monitor-enter v9

    .line 91
    const/4 v8, 0x0

    .line 93
    .local v8, writePrefs:Z
    :try_start_0
    const-string v10, "key"

    invoke-interface {p3, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 94
    .local v3, keyColumn:I
    const-string/jumbo v10, "value"

    invoke-interface {p3, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 95
    .local v7, valueColumn:I
    :cond_0
    :goto_0
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 96
    invoke-interface {p3, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 97
    .local v2, key:Ljava/lang/String;
    invoke-interface {p3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 98
    .local v6, value:Ljava/lang/String;
    const-string/jumbo v10, "timezoneType"

    invoke-static {v2, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 99
    const-string v10, "auto"

    invoke-static {v6, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    const/4 v10, 0x1

    move v5, v10

    .line 101
    .local v5, useHomeTZ:Z
    :goto_1
    invoke-static {}, Landroid/util/CalendarUtils$TimeZoneUtils;->access$100()Z

    move-result v10

    if-eq v5, v10, :cond_0

    .line 102
    const/4 v8, 0x1

    .line 103
    invoke-static {v5}, Landroid/util/CalendarUtils$TimeZoneUtils;->access$102(Z)Z

    goto :goto_0

    .line 128
    .end local v2           #key:Ljava/lang/String;
    .end local v3           #keyColumn:I
    .end local v5           #useHomeTZ:Z
    .end local v6           #value:Ljava/lang/String;
    .end local v7           #valueColumn:I
    .end local p2
    :catchall_0
    move-exception v10

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v10

    .restart local v2       #key:Ljava/lang/String;
    .restart local v3       #keyColumn:I
    .restart local v6       #value:Ljava/lang/String;
    .restart local v7       #valueColumn:I
    .restart local p2
    :cond_1
    move v5, v11

    .line 99
    goto :goto_1

    .line 105
    :cond_2
    :try_start_1
    const-string/jumbo v10, "timezoneInstancesPrevious"

    invoke-static {v2, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 107
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    invoke-static {}, Landroid/util/CalendarUtils$TimeZoneUtils;->access$200()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 108
    const/4 v8, 0x1

    .line 109
    invoke-static {v6}, Landroid/util/CalendarUtils$TimeZoneUtils;->access$202(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 113
    .end local v2           #key:Ljava/lang/String;
    .end local v6           #value:Ljava/lang/String;
    :cond_3
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 114
    if-eqz v8, :cond_4

    .line 115
    check-cast p2, Landroid/content/Context;

    .end local p2
    iget-object v10, p0, Landroid/util/CalendarUtils$TimeZoneUtils$AsyncTZHandler;->this$0:Landroid/util/CalendarUtils$TimeZoneUtils;

    #getter for: Landroid/util/CalendarUtils$TimeZoneUtils;->mPrefsName:Ljava/lang/String;
    invoke-static {v10}, Landroid/util/CalendarUtils$TimeZoneUtils;->access$300(Landroid/util/CalendarUtils$TimeZoneUtils;)Ljava/lang/String;

    move-result-object v10

    invoke-static {p2, v10}, Landroid/util/CalendarUtils;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 117
    .local v4, prefs:Landroid/content/SharedPreferences;
    const-string/jumbo v10, "preferences_home_tz_enabled"

    invoke-static {}, Landroid/util/CalendarUtils$TimeZoneUtils;->access$100()Z

    move-result v11

    invoke-static {v4, v10, v11}, Landroid/util/CalendarUtils;->setSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    .line 118
    const-string/jumbo v10, "preferences_home_tz"

    invoke-static {}, Landroid/util/CalendarUtils$TimeZoneUtils;->access$200()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v10, v11}, Landroid/util/CalendarUtils;->setSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    .end local v4           #prefs:Landroid/content/SharedPreferences;
    :cond_4
    const/4 v10, 0x0

    invoke-static {v10}, Landroid/util/CalendarUtils$TimeZoneUtils;->access$402(Z)Z

    .line 122
    invoke-static {}, Landroid/util/CalendarUtils$TimeZoneUtils;->access$000()Ljava/util/HashSet;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_5
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 123
    .local v0, callback:Ljava/lang/Runnable;
    if-eqz v0, :cond_5

    .line 124
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_2

    .line 127
    .end local v0           #callback:Ljava/lang/Runnable;
    :cond_6
    invoke-static {}, Landroid/util/CalendarUtils$TimeZoneUtils;->access$000()Ljava/util/HashSet;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/HashSet;->clear()V

    .line 128
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 129
    return-void
.end method
