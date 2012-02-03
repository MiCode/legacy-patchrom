.class public Landroid/appwidget/AppWidgetProvider;
.super Landroid/content/BroadcastReceiver;
.source "AppWidgetProvider.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 42
    return-void
.end method


# virtual methods
.method public onDeleted(Landroid/content/Context;[I)V
    .locals 0
    .parameter "context"
    .parameter "appWidgetIds"

    .prologue
    .line 115
    return-void
.end method

.method public onDisabled(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 149
    return-void
.end method

.method public onEnabled(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 134
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const-string v5, "appWidgetId"

    .line 55
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, action:Ljava/lang/String;
    const-string v4, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 57
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 58
    .local v3, extras:Landroid/os/Bundle;
    if-eqz v3, :cond_0

    .line 59
    const-string v4, "appWidgetIds"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v2

    .line 60
    .local v2, appWidgetIds:[I
    if-eqz v2, :cond_0

    array-length v4, v2

    if-lez v4, :cond_0

    .line 61
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v4

    invoke-virtual {p0, p1, v4, v2}, Landroid/appwidget/AppWidgetProvider;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    .line 78
    .end local v2           #appWidgetIds:[I
    .end local v3           #extras:Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    const-string v4, "android.appwidget.action.APPWIDGET_DELETED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 66
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 67
    .restart local v3       #extras:Landroid/os/Bundle;
    if-eqz v3, :cond_0

    const-string v4, "appWidgetId"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 68
    const-string v4, "appWidgetId"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 69
    .local v1, appWidgetId:I
    const/4 v4, 0x1

    new-array v4, v4, [I

    const/4 v5, 0x0

    aput v1, v4, v5

    invoke-virtual {p0, p1, v4}, Landroid/appwidget/AppWidgetProvider;->onDeleted(Landroid/content/Context;[I)V

    goto :goto_0

    .line 72
    .end local v1           #appWidgetId:I
    .end local v3           #extras:Landroid/os/Bundle;
    :cond_2
    const-string v4, "android.appwidget.action.APPWIDGET_ENABLED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 73
    invoke-virtual {p0, p1}, Landroid/appwidget/AppWidgetProvider;->onEnabled(Landroid/content/Context;)V

    goto :goto_0

    .line 75
    :cond_3
    const-string v4, "android.appwidget.action.APPWIDGET_DISABLED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 76
    invoke-virtual {p0, p1}, Landroid/appwidget/AppWidgetProvider;->onDisabled(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 0
    .parameter "context"
    .parameter "appWidgetManager"
    .parameter "appWidgetIds"

    .prologue
    .line 99
    return-void
.end method
