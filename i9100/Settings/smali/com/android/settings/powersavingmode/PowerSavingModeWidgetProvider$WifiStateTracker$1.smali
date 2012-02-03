.class Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$WifiStateTracker$1;
.super Landroid/os/AsyncTask;
.source "PowerSavingModeWidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$WifiStateTracker;->requestStateChange(Landroid/content/Context;Z)V
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$WifiStateTracker;

.field final synthetic val$desiredState:Z

.field final synthetic val$wifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method constructor <init>(Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$WifiStateTracker;Landroid/net/wifi/WifiManager;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 296
    iput-object p1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$WifiStateTracker$1;->this$0:Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$WifiStateTracker;

    iput-object p2, p0, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$WifiStateTracker$1;->val$wifiManager:Landroid/net/wifi/WifiManager;

    iput-boolean p3, p0, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$WifiStateTracker$1;->val$desiredState:Z

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 296
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$WifiStateTracker$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4
    .parameter "args"

    .prologue
    const/4 v3, 0x0

    .line 302
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$WifiStateTracker$1;->val$wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    .line 303
    .local v0, wifiApState:I
    iget-boolean v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$WifiStateTracker$1;->val$desiredState:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 305
    :cond_0
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$WifiStateTracker$1;->val$wifiManager:Landroid/net/wifi/WifiManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v3, v2}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 307
    :cond_1
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$WifiStateTracker$1;->val$wifiManager:Landroid/net/wifi/WifiManager;

    iget-boolean v2, p0, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$WifiStateTracker$1;->val$desiredState:Z

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 308
    return-object v3
.end method
