.class final Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$SyncStateTracker;
.super Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;
.source "PowerSavingModeWidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SyncStateTracker"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 460
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;-><init>(Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 460
    invoke-direct {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$SyncStateTracker;-><init>()V

    return-void
.end method


# virtual methods
.method public getActualState(Landroid/content/Context;)I
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 476
    #calls: Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->getBackgroundDataState(Landroid/content/Context;)Z
    invoke-static {p1}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->access$600(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v1

    if-eqz v1, :cond_0

    move v0, v3

    .line 478
    .local v0, on:Z
    :goto_0
    if-eqz v0, :cond_1

    move v1, v3

    :goto_1
    return v1

    .end local v0           #on:Z
    :cond_0
    move v0, v2

    .line 476
    goto :goto_0

    .restart local v0       #on:Z
    :cond_1
    move v1, v2

    .line 478
    goto :goto_1
.end method

.method public onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "unused"

    .prologue
    .line 483
    invoke-virtual {p0, p1}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$SyncStateTracker;->getActualState(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$SyncStateTracker;->setCurrentState(Landroid/content/Context;I)V

    .line 484
    return-void
.end method

.method public requestStateChange(Landroid/content/Context;Z)V
    .locals 7
    .parameter "context"
    .parameter "desiredState"

    .prologue
    .line 488
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/ConnectivityManager;

    .line 490
    .local v4, connManager:Landroid/net/ConnectivityManager;
    #calls: Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->getBackgroundDataState(Landroid/content/Context;)Z
    invoke-static {p1}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->access$600(Landroid/content/Context;)Z

    move-result v3

    .line 491
    .local v3, backgroundData:Z
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v5

    .line 492
    .local v5, sync:Z
    new-instance v0, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$SyncStateTracker$1;

    move-object v1, p0

    move v2, p2

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$SyncStateTracker$1;-><init>(Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$SyncStateTracker;ZZLandroid/net/ConnectivityManager;ZLandroid/content/Context;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$SyncStateTracker$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 518
    return-void
.end method
