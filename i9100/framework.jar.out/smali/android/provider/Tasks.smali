.class public final Landroid/provider/Tasks;
.super Ljava/lang/Object;
.source "Tasks.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/Tasks$TasksAccounts;,
        Landroid/provider/Tasks$TaskReminderAlerts;,
        Landroid/provider/Tasks$TaskReminderColumns;,
        Landroid/provider/Tasks$TasksTbl;,
        Landroid/provider/Tasks$TasksColumns;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "tasks"

.field public static final CALLER_IS_SYNCADAPTER:Ljava/lang/String; = "caller_is_syncadapter"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final DELETED_CONTENT_URI:Landroid/net/Uri; = null

.field public static final DELETED_TABLE_NAME:Ljava/lang/String; = "DeletedTasks"

.field public static final REMINDER_TASKS:Ljava/lang/String; = "TasksReminders"

.field public static final SYNCHED_TASKS_CONTENT_URI:Landroid/net/Uri; = null

.field public static final SYNC_TASKS:Ljava/lang/String; = "syncTasks"

.field public static final TABLE_NAME:Ljava/lang/String; = "tasks"

.field public static final TAG:Ljava/lang/String; = "Tasks"

.field public static final TASKS_ACCOUNTS_CONTENT_URI:Landroid/net/Uri; = null

.field public static final TASKS_ACCOUNTS_TABLE_NAME:Ljava/lang/String; = "TasksAccounts"

.field public static final TASK_CONTENT_URI:Landroid/net/Uri; = null

.field public static final TASK_REMINDER_ACTION:Ljava/lang/String; = "android.intent.action.TASK_REMINDER"

.field public static final UPDATED_CONTENT_URI:Landroid/net/Uri; = null

.field public static final UPDATED_TABLE_NAME:Ljava/lang/String; = "UpdatedTasks"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const-string v0, "content://tasks"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Tasks;->CONTENT_URI:Landroid/net/Uri;

    .line 66
    const-string v0, "content://tasks/tasks"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Tasks;->TASK_CONTENT_URI:Landroid/net/Uri;

    .line 71
    const-string v0, "content://tasks/UpdatedTasks"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Tasks;->UPDATED_CONTENT_URI:Landroid/net/Uri;

    .line 74
    const-string v0, "content://tasks/DeletedTasks"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Tasks;->DELETED_CONTENT_URI:Landroid/net/Uri;

    .line 77
    const-string v0, "content://tasks/syncTasks"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Tasks;->SYNCHED_TASKS_CONTENT_URI:Landroid/net/Uri;

    .line 80
    const-string v0, "content://tasks/TasksAccounts"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Tasks;->TASKS_ACCOUNTS_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 248
    return-void
.end method
