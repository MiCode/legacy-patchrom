.class public final Landroid/database/sqlite/SQLiteDebug;
.super Ljava/lang/Object;
.source "SQLiteDebug.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/database/sqlite/SQLiteDebug$DbStats;,
        Landroid/database/sqlite/SQLiteDebug$PagerStats;
    }
.end annotation


# static fields
.field public static final DEBUG_ACTIVE_CURSOR_FINALIZATION:Z

.field public static final DEBUG_LOCK_TIME_TRACKING:Z

.field public static final DEBUG_LOCK_TIME_TRACKING_STACK_TRACE:Z

.field public static final DEBUG_SQL_CACHE:Z

.field public static final DEBUG_SQL_STATEMENTS:Z

.field public static final DEBUG_SQL_TIME:Z

.field private static sNumActiveCursorsFinalized:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    const-string v0, "SQLiteStatements"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/database/sqlite/SQLiteDebug;->DEBUG_SQL_STATEMENTS:Z

    const-string v0, "SQLiteTime"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/database/sqlite/SQLiteDebug;->DEBUG_SQL_TIME:Z

    const-string v0, "SQLiteCompiledSql"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/database/sqlite/SQLiteDebug;->DEBUG_SQL_CACHE:Z

    const-string v0, "SQLiteCursorClosing"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/database/sqlite/SQLiteDebug;->DEBUG_ACTIVE_CURSOR_FINALIZATION:Z

    const-string v0, "SQLiteLockTime"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/database/sqlite/SQLiteDebug;->DEBUG_LOCK_TIME_TRACKING:Z

    const-string v0, "SQLiteLockStackTrace"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/database/sqlite/SQLiteDebug;->DEBUG_LOCK_TIME_TRACKING_STACK_TRACE:Z

    const/4 v0, 0x0

    sput v0, Landroid/database/sqlite/SQLiteDebug;->sNumActiveCursorsFinalized:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDatabaseInfo()Landroid/database/sqlite/SQLiteDebug$PagerStats;
    .locals 2

    .prologue
    new-instance v0, Landroid/database/sqlite/SQLiteDebug$PagerStats;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteDebug$PagerStats;-><init>()V

    .local v0, stats:Landroid/database/sqlite/SQLiteDebug$PagerStats;
    invoke-static {v0}, Landroid/database/sqlite/SQLiteDebug;->getPagerStats(Landroid/database/sqlite/SQLiteDebug$PagerStats;)V

    invoke-static {}, Landroid/database/sqlite/SQLiteDatabase;->getDbStats()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Landroid/database/sqlite/SQLiteDebug$PagerStats;->dbStats:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static native getHeapAllocatedSize()J
.end method

.method public static native getHeapDirtyPages([I)V
.end method

.method public static native getHeapFreeSize()J
.end method

.method public static native getHeapSize()J
.end method

.method public static getNumActiveCursorsFinalized()I
    .locals 1

    .prologue
    sget v0, Landroid/database/sqlite/SQLiteDebug;->sNumActiveCursorsFinalized:I

    return v0
.end method

.method public static native getPagerStats(Landroid/database/sqlite/SQLiteDebug$PagerStats;)V
.end method

.method static declared-synchronized notifyActiveCursorFinalized()V
    .locals 2

    .prologue
    const-class v0, Landroid/database/sqlite/SQLiteDebug;

    monitor-enter v0

    :try_start_0
    sget v1, Landroid/database/sqlite/SQLiteDebug;->sNumActiveCursorsFinalized:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Landroid/database/sqlite/SQLiteDebug;->sNumActiveCursorsFinalized:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
