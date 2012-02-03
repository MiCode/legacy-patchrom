.class final Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$GpsStateTracker;
.super Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;
.source "PowerSavingModeWidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "GpsStateTracker"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 408
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;-><init>(Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 408
    invoke-direct {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$GpsStateTracker;-><init>()V

    return-void
.end method


# virtual methods
.method public getActualState(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    .line 424
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 425
    .local v1, resolver:Landroid/content/ContentResolver;
    const-string v2, "gps"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    .line 427
    .local v0, on:Z
    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "unused"

    .prologue
    .line 434
    invoke-virtual {p0, p1}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$GpsStateTracker;->getActualState(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$GpsStateTracker;->setCurrentState(Landroid/content/Context;I)V

    .line 435
    return-void
.end method

.method public requestStateChange(Landroid/content/Context;Z)V
    .locals 3
    .parameter "context"
    .parameter "desiredState"

    .prologue
    .line 439
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 440
    .local v0, resolver:Landroid/content/ContentResolver;
    new-instance v1, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$GpsStateTracker$1;

    invoke-direct {v1, p0, v0, p2, p1}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$GpsStateTracker$1;-><init>(Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$GpsStateTracker;Landroid/content/ContentResolver;ZLandroid/content/Context;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$GpsStateTracker$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 454
    return-void
.end method
