.class public Lcom/android/providers/calendar/AppWidgetShared;
.super Ljava/lang/Object;
.source "AppWidgetShared.java"


# static fields
.field public static final CALENDAR_ID:Ljava/lang/String; = "chip_calendar_id"

.field public static final CALENDAR_PROJECTION:[Ljava/lang/String; = null

.field public static final CHIP_ID:Ljava/lang/String; = "chip_id"

.field public static final CHIP_SELECTED:Ljava/lang/String; = "chip_calendar_selected"

.field public static final CHIP_SELECTED_URI:Landroid/net/Uri; = null

.field public static final CHIP_URI:Landroid/net/Uri; = null

.field static final LOGD:Z = false

.field static final TAG:Ljava/lang/String; = "AppWidgetShared"

.field private static sAppWidgetIds:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sChangedEventIds:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field static sLastRequest:J

.field static sLock:Ljava/lang/Object;

.field private static sNextWidgetIds:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static sUpdateRequested:Z

.field static sUpdateRunning:Z

.field static sWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 40
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/providers/calendar/AppWidgetShared;->sLock:Ljava/lang/Object;

    .line 42
    sput-boolean v2, Lcom/android/providers/calendar/AppWidgetShared;->sUpdateRequested:Z

    .line 43
    sput-boolean v2, Lcom/android/providers/calendar/AppWidgetShared;->sUpdateRunning:Z

    .line 45
    const-string v0, "content://com.android.calendar/chipcalendars"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/providers/calendar/AppWidgetShared;->CHIP_URI:Landroid/net/Uri;

    .line 46
    const-string v0, "content://com.android.calendar/chipselected"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/providers/calendar/AppWidgetShared;->CHIP_SELECTED_URI:Landroid/net/Uri;

    .line 51
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "displayName"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "color"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "selected"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "sync_events"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "_sync_account"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "sync_type"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "ownerAccount"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/calendar/AppWidgetShared;->CALENDAR_PROJECTION:[Ljava/lang/String;

    .line 64
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/android/providers/calendar/AppWidgetShared;->sLastRequest:J

    .line 66
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/providers/calendar/AppWidgetShared;->sAppWidgetIds:Ljava/util/HashSet;

    .line 67
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/providers/calendar/AppWidgetShared;->sChangedEventIds:Ljava/util/HashSet;

    .line 68
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/providers/calendar/AppWidgetShared;->sNextWidgetIds:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static addNextWidgetId(I)V
    .locals 3
    .parameter "id"

    .prologue
    .line 159
    sget-object v0, Lcom/android/providers/calendar/AppWidgetShared;->sNextWidgetIds:Ljava/util/HashSet;

    monitor-enter v0

    .line 160
    :try_start_0
    sget-object v1, Lcom/android/providers/calendar/AppWidgetShared;->sNextWidgetIds:Ljava/util/HashSet;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 161
    monitor-exit v0

    .line 162
    return-void

    .line 161
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static clearLocked()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 181
    sget-object v0, Lcom/android/providers/calendar/AppWidgetShared;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/providers/calendar/AppWidgetShared;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    sget-object v0, Lcom/android/providers/calendar/AppWidgetShared;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 185
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/android/providers/calendar/AppWidgetShared;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 187
    sput-boolean v1, Lcom/android/providers/calendar/AppWidgetShared;->sUpdateRequested:Z

    .line 188
    sput-boolean v1, Lcom/android/providers/calendar/AppWidgetShared;->sUpdateRunning:Z

    .line 190
    sget-object v0, Lcom/android/providers/calendar/AppWidgetShared;->sAppWidgetIds:Ljava/util/HashSet;

    monitor-enter v0

    .line 191
    :try_start_0
    sget-object v1, Lcom/android/providers/calendar/AppWidgetShared;->sAppWidgetIds:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 192
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    sget-object v0, Lcom/android/providers/calendar/AppWidgetShared;->sChangedEventIds:Ljava/util/HashSet;

    monitor-enter v0

    .line 194
    :try_start_1
    sget-object v1, Lcom/android/providers/calendar/AppWidgetShared;->sChangedEventIds:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 195
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 196
    return-void

    .line 192
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 195
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method static collectAppWidgetIdsLocked()[I
    .locals 6

    .prologue
    .line 117
    sget-object v5, Lcom/android/providers/calendar/AppWidgetShared;->sAppWidgetIds:Ljava/util/HashSet;

    monitor-enter v5

    .line 118
    :try_start_0
    sget-object v4, Lcom/android/providers/calendar/AppWidgetShared;->sAppWidgetIds:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v3

    .line 119
    .local v3, size:I
    new-array v0, v3, [I

    .line 120
    .local v0, array:[I
    sget-object v4, Lcom/android/providers/calendar/AppWidgetShared;->sAppWidgetIds:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 121
    .local v2, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 122
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v0, v1

    .line 121
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 124
    :cond_0
    sget-object v4, Lcom/android/providers/calendar/AppWidgetShared;->sAppWidgetIds:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->clear()V

    .line 125
    monitor-exit v5

    return-object v0

    .line 126
    .end local v0           #array:[I
    .end local v1           #i:I
    .end local v2           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v3           #size:I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method static collectChangedEventIdsLocked()Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 136
    sget-object v3, Lcom/android/providers/calendar/AppWidgetShared;->sChangedEventIds:Ljava/util/HashSet;

    monitor-enter v3

    .line 137
    :try_start_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 138
    .local v1, set:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    sget-object v4, Lcom/android/providers/calendar/AppWidgetShared;->sChangedEventIds:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 139
    .local v2, value:Ljava/lang/Long;
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 143
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #set:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    .end local v2           #value:Ljava/lang/Long;
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 141
    .restart local v0       #i$:Ljava/util/Iterator;
    .restart local v1       #set:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    :cond_0
    :try_start_1
    sget-object v4, Lcom/android/providers/calendar/AppWidgetShared;->sChangedEventIds:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->clear()V

    .line 142
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v1
.end method

.method static getDensityDPI(Landroid/content/Context;)I
    .locals 1
    .parameter "context"

    .prologue
    .line 171
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    return v0
.end method

.method static getNextWidgetId()I
    .locals 4

    .prologue
    .line 147
    sget-object v3, Lcom/android/providers/calendar/AppWidgetShared;->sNextWidgetIds:Ljava/util/HashSet;

    monitor-enter v3

    .line 148
    const/4 v0, -0x1

    .line 149
    .local v0, id:I
    :try_start_0
    sget-object v2, Lcom/android/providers/calendar/AppWidgetShared;->sNextWidgetIds:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 150
    .local v1, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 151
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 154
    :cond_0
    monitor-exit v3

    return v0

    .line 155
    .end local v1           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method static mergeAppWidgetIdsLocked([IZ)V
    .locals 7
    .parameter "appWidgetIds"
    .parameter "updateRequested"

    .prologue
    .line 77
    sget-object v4, Lcom/android/providers/calendar/AppWidgetShared;->sAppWidgetIds:Ljava/util/HashSet;

    monitor-enter v4

    .line 78
    if-nez p1, :cond_0

    .line 80
    :try_start_0
    sget-object v5, Lcom/android/providers/calendar/AppWidgetShared;->sAppWidgetIds:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->clear()V

    .line 82
    :cond_0
    if-eqz p0, :cond_1

    .line 83
    move-object v1, p0

    .local v1, arr$:[I
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_2

    aget v0, v1, v2

    .line 84
    .local v0, appWidgetId:I
    sget-object v5, Lcom/android/providers/calendar/AppWidgetShared;->sAppWidgetIds:Ljava/util/HashSet;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 83
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 87
    .end local v0           #appWidgetId:I
    .end local v1           #arr$:[I
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_1
    sget-object v5, Lcom/android/providers/calendar/AppWidgetShared;->sAppWidgetIds:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->clear()V

    .line 89
    :cond_2
    monitor-exit v4

    .line 90
    return-void

    .line 89
    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method static mergeChangedEventIdsLocked([J)V
    .locals 8
    .parameter "changedEventIds"

    .prologue
    .line 99
    sget-object v5, Lcom/android/providers/calendar/AppWidgetShared;->sChangedEventIds:Ljava/util/HashSet;

    monitor-enter v5

    .line 100
    if-eqz p0, :cond_0

    .line 101
    move-object v0, p0

    .local v0, arr$:[J
    :try_start_0
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-wide v1, v0, v3

    .line 102
    .local v1, changedEventId:J
    sget-object v6, Lcom/android/providers/calendar/AppWidgetShared;->sChangedEventIds:Ljava/util/HashSet;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 101
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 105
    .end local v0           #arr$:[J
    .end local v1           #changedEventId:J
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_0
    sget-object v6, Lcom/android/providers/calendar/AppWidgetShared;->sChangedEventIds:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->clear()V

    .line 107
    :cond_1
    monitor-exit v5

    .line 108
    return-void

    .line 107
    :catchall_0
    move-exception v6

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6
.end method

.method static removeNextWidgetId(I)V
    .locals 3
    .parameter "id"

    .prologue
    .line 165
    sget-object v0, Lcom/android/providers/calendar/AppWidgetShared;->sNextWidgetIds:Ljava/util/HashSet;

    monitor-enter v0

    .line 166
    :try_start_0
    sget-object v1, Lcom/android/providers/calendar/AppWidgetShared;->sNextWidgetIds:Ljava/util/HashSet;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 167
    monitor-exit v0

    .line 168
    return-void

    .line 167
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
