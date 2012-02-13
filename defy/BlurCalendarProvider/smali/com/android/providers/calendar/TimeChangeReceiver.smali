.class public Lcom/android/providers/calendar/TimeChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "TimeChangeReceiver.java"


# static fields
.field static final LOGD:Z = false

.field static final TAG:Ljava/lang/String; = "TimeChangeReceiver"


# instance fields
.field mAppWidgetProvider:Lcom/android/providers/calendar/CalendarWidgetProvider;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 29
    invoke-static {}, Lcom/android/providers/calendar/CalendarWidgetProvider;->getInstance()Lcom/android/providers/calendar/CalendarWidgetProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/calendar/TimeChangeReceiver;->mAppWidgetProvider:Lcom/android/providers/calendar/CalendarWidgetProvider;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 38
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 39
    .local v0, considerIgnore:Z
    iget-object v1, p0, Lcom/android/providers/calendar/TimeChangeReceiver;->mAppWidgetProvider:Lcom/android/providers/calendar/CalendarWidgetProvider;

    invoke-virtual {v1, p1, v0}, Lcom/android/providers/calendar/CalendarWidgetProvider;->timeUpdated(Landroid/content/Context;Z)V

    .line 40
    return-void
.end method
