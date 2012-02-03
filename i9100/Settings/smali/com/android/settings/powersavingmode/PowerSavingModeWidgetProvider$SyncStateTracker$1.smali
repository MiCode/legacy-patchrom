.class Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$SyncStateTracker$1;
.super Landroid/os/AsyncTask;
.source "PowerSavingModeWidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$SyncStateTracker;->requestStateChange(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$SyncStateTracker;

.field final synthetic val$backgroundData:Z

.field final synthetic val$connManager:Landroid/net/ConnectivityManager;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$desiredState:Z

.field final synthetic val$sync:Z


# direct methods
.method constructor <init>(Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$SyncStateTracker;ZZLandroid/net/ConnectivityManager;ZLandroid/content/Context;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 492
    iput-object p1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$SyncStateTracker$1;->this$0:Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$SyncStateTracker;

    iput-boolean p2, p0, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$SyncStateTracker$1;->val$desiredState:Z

    iput-boolean p3, p0, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$SyncStateTracker$1;->val$backgroundData:Z

    iput-object p4, p0, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$SyncStateTracker$1;->val$connManager:Landroid/net/ConnectivityManager;

    iput-boolean p5, p0, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$SyncStateTracker$1;->val$sync:Z

    iput-object p6, p0, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$SyncStateTracker$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 3
    .parameter "args"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 496
    iget-boolean v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$SyncStateTracker$1;->val$desiredState:Z

    if-eqz v0, :cond_2

    .line 497
    iget-boolean v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$SyncStateTracker$1;->val$backgroundData:Z

    if-nez v0, :cond_0

    .line 498
    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$SyncStateTracker$1;->val$connManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->setBackgroundDataSetting(Z)V

    .line 500
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$SyncStateTracker$1;->val$sync:Z

    if-nez v0, :cond_1

    .line 501
    invoke-static {v1}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    .line 503
    :cond_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 509
    :goto_0
    return-object v0

    .line 506
    :cond_2
    iget-boolean v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$SyncStateTracker$1;->val$sync:Z

    if-eqz v0, :cond_3

    .line 507
    invoke-static {v2}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    .line 509
    :cond_3
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 492
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$SyncStateTracker$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 514
    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$SyncStateTracker$1;->this$0:Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$SyncStateTracker;

    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$SyncStateTracker$1;->val$context:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v0, v1, v2}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$SyncStateTracker;->setCurrentState(Landroid/content/Context;I)V

    .line 515
    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$SyncStateTracker$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->updateWidget(Landroid/content/Context;)V

    .line 516
    return-void

    .line 514
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 492
    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$SyncStateTracker$1;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
