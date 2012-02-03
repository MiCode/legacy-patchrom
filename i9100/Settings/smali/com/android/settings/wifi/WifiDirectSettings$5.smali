.class Lcom/android/settings/wifi/WifiDirectSettings$5;
.super Ljava/lang/Object;
.source "WifiDirectSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiDirectSettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiDirectSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiDirectSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 345
    iput-object p1, p0, Lcom/android/settings/wifi/WifiDirectSettings$5;->this$0:Lcom/android/settings/wifi/WifiDirectSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 347
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectSettings$5;->this$0:Lcom/android/settings/wifi/WifiDirectSettings;

    #getter for: Lcom/android/settings/wifi/WifiDirectSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiDirectSettings;->access$200(Lcom/android/settings/wifi/WifiDirectSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->disconnect()Z

    .line 348
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectSettings$5;->this$0:Lcom/android/settings/wifi/WifiDirectSettings;

    #getter for: Lcom/android/settings/wifi/WifiDirectSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiDirectSettings;->access$200(Lcom/android/settings/wifi/WifiDirectSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setSupplicantAutoScan(Z)Z

    .line 353
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectSettings$5;->this$0:Lcom/android/settings/wifi/WifiDirectSettings;

    #getter for: Lcom/android/settings/wifi/WifiDirectSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiDirectSettings;->access$200(Lcom/android/settings/wifi/WifiDirectSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectSettings$5;->this$0:Lcom/android/settings/wifi/WifiDirectSettings;

    #getter for: Lcom/android/settings/wifi/WifiDirectSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiDirectSettings;->access$200(Lcom/android/settings/wifi/WifiDirectSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isDirectInitialized()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 355
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectSettings$5;->this$0:Lcom/android/settings/wifi/WifiDirectSettings;

    #getter for: Lcom/android/settings/wifi/WifiDirectSettings;->mDirectEnabler:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiDirectSettings;->access$300(Lcom/android/settings/wifi/WifiDirectSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 356
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectSettings$5;->this$0:Lcom/android/settings/wifi/WifiDirectSettings;

    #getter for: Lcom/android/settings/wifi/WifiDirectSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiDirectSettings;->access$200(Lcom/android/settings/wifi/WifiDirectSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isDirectConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 357
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectSettings$5;->this$0:Lcom/android/settings/wifi/WifiDirectSettings;

    #getter for: Lcom/android/settings/wifi/WifiDirectSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiDirectSettings;->access$200(Lcom/android/settings/wifi/WifiDirectSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Landroid/net/wifi/WifiManager;->setDeviceDiscoveryEnabled(ZZ)Z

    .line 363
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectSettings$5;->this$0:Lcom/android/settings/wifi/WifiDirectSettings;

    #getter for: Lcom/android/settings/wifi/WifiDirectSettings;->mAccessPoints:Lcom/android/settings/ProgressCategory;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiDirectSettings;->access$400(Lcom/android/settings/wifi/WifiDirectSettings;)Lcom/android/settings/ProgressCategory;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/settings/ProgressCategory;->setProgress(Z)V

    .line 364
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectSettings$5;->this$0:Lcom/android/settings/wifi/WifiDirectSettings;

    #getter for: Lcom/android/settings/wifi/WifiDirectSettings;->mScanner:Lcom/android/settings/wifi/WifiDirectSettings$Scanner;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiDirectSettings;->access$500(Lcom/android/settings/wifi/WifiDirectSettings;)Lcom/android/settings/wifi/WifiDirectSettings$Scanner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiDirectSettings$Scanner;->resume()V

    .line 365
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectSettings$5;->this$0:Lcom/android/settings/wifi/WifiDirectSettings;

    #calls: Lcom/android/settings/wifi/WifiDirectSettings;->updateConnectionStatus()V
    invoke-static {v0}, Lcom/android/settings/wifi/WifiDirectSettings;->access$600(Lcom/android/settings/wifi/WifiDirectSettings;)V

    .line 370
    :goto_0
    const-string v0, "WifiDirectSettings"

    const-string v1, "Disconnect AP, and continue Wi-Fi Direct"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    return-void

    .line 367
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectSettings$5;->this$0:Lcom/android/settings/wifi/WifiDirectSettings;

    #getter for: Lcom/android/settings/wifi/WifiDirectSettings;->mDirectEnabler:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiDirectSettings;->access$300(Lcom/android/settings/wifi/WifiDirectSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 368
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectSettings$5;->this$0:Lcom/android/settings/wifi/WifiDirectSettings;

    #getter for: Lcom/android/settings/wifi/WifiDirectSettings;->mStatus:Landroid/preference/Preference;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiDirectSettings;->access$700(Lcom/android/settings/wifi/WifiDirectSettings;)Landroid/preference/Preference;

    move-result-object v0

    const v1, 0x7f08018b

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0
.end method
