.class Lcom/android/settings/wifi/WifiApSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiApSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiApSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiApSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiApSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 95
    iput-object p1, p0, Lcom/android/settings/wifi/WifiApSettings$1;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 98
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, action:Ljava/lang/String;
    const-string v3, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 101
    iget-object v3, p0, Lcom/android/settings/wifi/WifiApSettings$1;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    const-string v4, "wifi_state"

    const/4 v5, 0x4

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    #calls: Lcom/android/settings/wifi/WifiApSettings;->handleWifiApStateChanged(I)V
    invoke-static {v3, v4}, Lcom/android/settings/wifi/WifiApSettings;->access$000(Lcom/android/settings/wifi/WifiApSettings;I)V

    .line 118
    :cond_0
    :goto_0
    return-void

    .line 103
    :cond_1
    const-string v3, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 105
    const-string v3, "state"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 107
    .local v1, extra:Z
    if-eqz v1, :cond_3

    .line 108
    iget-object v3, p0, Lcom/android/settings/wifi/WifiApSettings$1;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    #getter for: Lcom/android/settings/wifi/WifiApSettings;->mEnableWifiAp:Landroid/preference/CheckBoxPreference;
    invoke-static {v3}, Lcom/android/settings/wifi/WifiApSettings;->access$100(Lcom/android/settings/wifi/WifiApSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-ne v3, v4, :cond_2

    .line 109
    iget-object v3, p0, Lcom/android/settings/wifi/WifiApSettings$1;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    const v4, 0x7f0801ed

    invoke-virtual {v3, v4}, Lcom/android/settings/wifi/WifiApSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 110
    .local v2, s:Ljava/lang/String;
    invoke-static {p1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 113
    .end local v2           #s:Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lcom/android/settings/wifi/WifiApSettings$1;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    #getter for: Lcom/android/settings/wifi/WifiApSettings;->mEnableWifiAp:Landroid/preference/CheckBoxPreference;
    invoke-static {v3}, Lcom/android/settings/wifi/WifiApSettings;->access$100(Lcom/android/settings/wifi/WifiApSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    .line 115
    :cond_3
    iget-object v3, p0, Lcom/android/settings/wifi/WifiApSettings$1;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    #getter for: Lcom/android/settings/wifi/WifiApSettings;->mEnableWifiAp:Landroid/preference/CheckBoxPreference;
    invoke-static {v3}, Lcom/android/settings/wifi/WifiApSettings;->access$100(Lcom/android/settings/wifi/WifiApSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0
.end method
