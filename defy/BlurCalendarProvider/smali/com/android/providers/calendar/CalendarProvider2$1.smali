.class Lcom/android/providers/calendar/CalendarProvider2$1;
.super Landroid/content/BroadcastReceiver;
.source "CalendarProvider2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/calendar/CalendarProvider2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/calendar/CalendarProvider2;


# direct methods
.method constructor <init>(Lcom/android/providers/calendar/CalendarProvider2;)V
    .locals 0
    .parameter

    .prologue
    .line 357
    iput-object p1, p0, Lcom/android/providers/calendar/CalendarProvider2$1;->this$0:Lcom/android/providers/calendar/CalendarProvider2;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    const-string v4, "CalendarProvider2"

    .line 360
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 361
    .local v0, action:Ljava/lang/String;
    const-string v1, "CalendarProvider2"

    const/4 v1, 0x3

    invoke-static {v4, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 362
    const-string v1, "CalendarProvider2"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    :cond_0
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 365
    iget-object v1, p0, Lcom/android/providers/calendar/CalendarProvider2$1;->this$0:Lcom/android/providers/calendar/CalendarProvider2;

    invoke-virtual {v1}, Lcom/android/providers/calendar/CalendarProvider2;->updateTimezoneDependentFields()V

    .line 366
    iget-object v1, p0, Lcom/android/providers/calendar/CalendarProvider2$1;->this$0:Lcom/android/providers/calendar/CalendarProvider2;

    invoke-virtual {v1, v3}, Lcom/android/providers/calendar/CalendarProvider2;->scheduleNextAlarm(Z)V

    .line 374
    :cond_1
    :goto_0
    return-void

    .line 367
    :cond_2
    const-string v1, "android.intent.action.DEVICE_STORAGE_OK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 369
    iget-object v1, p0, Lcom/android/providers/calendar/CalendarProvider2$1;->this$0:Lcom/android/providers/calendar/CalendarProvider2;

    invoke-virtual {v1}, Lcom/android/providers/calendar/CalendarProvider2;->updateTimezoneDependentFields()V

    .line 370
    iget-object v1, p0, Lcom/android/providers/calendar/CalendarProvider2$1;->this$0:Lcom/android/providers/calendar/CalendarProvider2;

    invoke-virtual {v1, v3}, Lcom/android/providers/calendar/CalendarProvider2;->scheduleNextAlarm(Z)V

    goto :goto_0

    .line 371
    :cond_3
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 372
    iget-object v1, p0, Lcom/android/providers/calendar/CalendarProvider2$1;->this$0:Lcom/android/providers/calendar/CalendarProvider2;

    invoke-virtual {v1, v3}, Lcom/android/providers/calendar/CalendarProvider2;->scheduleNextAlarm(Z)V

    goto :goto_0
.end method
