.class public Landroid/provider/Tasks$TaskReminderAlerts;
.super Ljava/lang/Object;
.source "Tasks.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Landroid/provider/Tasks$TaskReminderColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Tasks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TaskReminderAlerts"
.end annotation


# static fields
.field public static final REMINDER_CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/provider/Tasks;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "TasksReminders"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Tasks$TaskReminderAlerts;->REMINDER_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static removeReminder(Landroid/content/Context;J)V
    .locals 13
    .parameter "context"
    .parameter "task_id"

    .prologue
    const/4 v10, 0x1

    const/4 v5, 0x0

    const/4 v12, 0x0

    .line 232
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 233
    .local v0, cr:Landroid/content/ContentResolver;
    const-string/jumbo v3, "task_id=?"

    .line 234
    .local v3, selection:Ljava/lang/String;
    new-array v2, v10, [Ljava/lang/String;

    const-string v9, "_id"

    aput-object v9, v2, v12

    .line 236
    .local v2, projectionIn:[Ljava/lang/String;
    new-array v4, v10, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v12

    .line 237
    .local v4, selectionArgs:[Ljava/lang/String;
    sget-object v1, Landroid/provider/Tasks$TaskReminderAlerts;->REMINDER_CONTENT_URI:Landroid/net/Uri;

    .line 239
    .local v1, reminderUri:Landroid/net/Uri;
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 240
    .local v6, c1:Landroid/database/Cursor;
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 241
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 242
    .local v7, id:J
    sget-object v9, Landroid/provider/Tasks$TaskReminderAlerts;->REMINDER_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v9, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 243
    const-string v9, "inside removereminder of task provider for reminder delete id is "

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    invoke-virtual {v0, v1, v5, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 246
    .end local v7           #id:J
    :cond_0
    return-void
.end method

.method public static scheduleReminder(Landroid/content/Context;Landroid/app/AlarmManager;JJ)V
    .locals 7
    .parameter "context"
    .parameter "manager"
    .parameter "alarmTime"
    .parameter "task_id"

    .prologue
    const/4 v5, 0x0

    const-string v6, "Tasks"

    .line 215
    const-string v4, "Tasks"

    const-string v4, " inside schedule reminder to set a reminder for a task "

    invoke-static {v6, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    if-nez p1, :cond_0

    .line 218
    const-string v4, "alarm"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/app/AlarmManager;

    .line 220
    .restart local p1
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.TASK_REMINDER"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 221
    .local v0, intent:Landroid/content/Intent;
    sget-object v4, Landroid/provider/Tasks;->TASK_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, p4, p5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 222
    invoke-static {p0, v5, v0, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 223
    .local v1, pi:Landroid/app/PendingIntent;
    invoke-virtual {p1, v5, p2, p3, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 225
    new-instance v3, Landroid/text/format/Time;

    invoke-direct {v3}, Landroid/text/format/Time;-><init>()V

    .line 226
    .local v3, time:Landroid/text/format/Time;
    invoke-virtual {v3, p2, p3}, Landroid/text/format/Time;->set(J)V

    .line 227
    const-string v4, " %a, %b %d, %Y %I:%M%P"

    invoke-virtual {v3, v4}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 228
    .local v2, schedTime:Ljava/lang/String;
    const-string v4, "Tasks"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Scheduled reminder at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    return-void
.end method
