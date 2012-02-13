.class public Lcom/android/providers/calendar/CalendarService;
.super Landroid/app/IntentService;
.source "CalendarService.java"


# static fields
.field static final SCHEDULE:Ljava/lang/String; = "com.android.providers.calendar.SCHEDULE_ALARM"

.field private static final TAG:Ljava/lang/String; = "CalendarService"


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    const-string v0, "CalendarService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 15
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 1

    .prologue
    .line 19
    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    .line 20
    invoke-virtual {p0}, Lcom/android/providers/calendar/CalendarService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/calendar/CalendarService;->mContentResolver:Landroid/content/ContentResolver;

    .line 21
    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 5
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    const-string v4, "CalendarService"

    .line 30
    if-nez p1, :cond_1

    .line 52
    :cond_0
    :goto_0
    return-void

    .line 32
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 33
    .local v0, action:Ljava/lang/String;
    const-string v1, "CalendarService"

    const/4 v1, 0x2

    invoke-static {v4, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 34
    const-string v1, "CalendarService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received action "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    :cond_2
    if-eqz v0, :cond_0

    .line 38
    const-string v1, "com.android.providers.calendar.SCHEDULE_ALARM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 39
    iget-object v1, p0, Lcom/android/providers/calendar/CalendarService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/providers/calendar/CalendarProvider2;->SCHEDULE_ALARM_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 41
    :cond_3
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 48
    iget-object v1, p0, Lcom/android/providers/calendar/CalendarService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/providers/calendar/CalendarProvider2;->SCHEDULE_ALARM_REMOVE_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method
