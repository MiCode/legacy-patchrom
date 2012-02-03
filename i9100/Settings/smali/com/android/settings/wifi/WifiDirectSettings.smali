.class public Lcom/android/settings/wifi/WifiDirectSettings;
.super Landroid/preference/PreferenceActivity;
.source "WifiDirectSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/WifiDirectSettings$Scanner;
    }
.end annotation


# instance fields
.field private autoFinish:Z

.field private mAccessPoints:Lcom/android/settings/ProgressCategory;

.field private mConfigureNetwork:Landroid/preference/Preference;

.field private mDialog:Lcom/android/settings/wifi/WifiDirectDialog;

.field private mDirectEnabler:Landroid/preference/CheckBoxPreference;

.field private mDisconnectDirect:Landroid/preference/Preference;

.field private mEnablingDirect:Z

.field private final mFilter:Landroid/content/IntentFilter;

.field private mNotifyDialog:Landroid/app/AlertDialog;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mScanner:Lcom/android/settings/wifi/WifiDirectSettings$Scanner;

.field private mSelected:Lcom/android/settings/wifi/WifiDirectPreference;

.field private mStatus:Landroid/preference/Preference;

.field private mWifiConfig:Landroid/net/wifi/WifiConfiguration;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 112
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 99
    iput-object v2, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mNotifyDialog:Landroid/app/AlertDialog;

    .line 103
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mEnablingDirect:Z

    .line 109
    iput-object v2, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 113
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mFilter:Landroid/content/IntentFilter;

    .line 114
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifidirect.FOUND_PEERS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifidirect.DIRECT_PEER_CONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifidirect.CREATE_LINK_FAIL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifidirect.GO_LINK_DOWN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifidirect.STA_DISASSOC"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 121
    new-instance v0, Lcom/android/settings/wifi/WifiDirectSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiDirectSettings$1;-><init>(Lcom/android/settings/wifi/WifiDirectSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 128
    new-instance v0, Lcom/android/settings/wifi/WifiDirectSettings$Scanner;

    invoke-direct {v0, p0, v2}, Lcom/android/settings/wifi/WifiDirectSettings$Scanner;-><init>(Lcom/android/settings/wifi/WifiDirectSettings;Lcom/android/settings/wifi/WifiDirectSettings$1;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mScanner:Lcom/android/settings/wifi/WifiDirectSettings$Scanner;

    .line 129
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/WifiDirectSettings;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiDirectSettings;->handleEvent(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/WifiDirectSettings;)Landroid/net/wifi/WifiManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/WifiDirectSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mDirectEnabler:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/wifi/WifiDirectSettings;)Lcom/android/settings/ProgressCategory;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mAccessPoints:Lcom/android/settings/ProgressCategory;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/wifi/WifiDirectSettings;)Lcom/android/settings/wifi/WifiDirectSettings$Scanner;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mScanner:Lcom/android/settings/wifi/WifiDirectSettings$Scanner;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/wifi/WifiDirectSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiDirectSettings;->updateConnectionStatus()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/wifi/WifiDirectSettings;)Landroid/preference/Preference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mStatus:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/wifi/WifiDirectSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiDirectSettings;->updateAccessPoints()V

    return-void
.end method

.method private generateDefaultSSID()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v8, 0x4

    .line 695
    const-string v5, "gsm.sim.msisdn"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 697
    .local v1, mNumber:Ljava/lang/String;
    const-string v4, "AndroidP2P"

    .line 699
    .local v4, tempSSID:Ljava/lang/String;
    const-string v5, "WifiDirectSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "generateDefaultSSID()    mNumber: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "   mNumber.length()  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v5, v8, :cond_0

    .line 703
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v8

    invoke-static {v5, v6, v8}, Ljava/lang/String;->copyValueOf([CII)Ljava/lang/String;

    move-result-object v0

    .line 705
    .local v0, mLast4digitNum:Ljava/lang/String;
    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 710
    .end local v0           #mLast4digitNum:Ljava/lang/String;
    :goto_0
    return-object v5

    .line 708
    :cond_0
    new-instance v2, Ljava/util/Random;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    invoke-direct {v2, v5, v6}, Ljava/util/Random;-><init>(J)V

    .line 709
    .local v2, rnd:Ljava/util/Random;
    const/16 v5, 0x2327

    invoke-virtual {v2, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    add-int/lit16 v3, v5, 0x3e8

    .line 710
    .local v3, sequence:I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method private handleEvent(Landroid/content/Intent;)V
    .locals 6
    .parameter "intent"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 555
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 556
    .local v0, action:Ljava/lang/String;
    const-string v1, "WifiDirectSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 559
    const-string v1, "wifi_state"

    const/4 v2, 0x4

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WifiDirectSettings;->updateWifiState(I)V

    .line 584
    :cond_0
    :goto_0
    return-void

    .line 561
    :cond_1
    const-string v1, "android.net.wifidirect.FOUND_PEERS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 562
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiDirectSettings;->updateAccessPoints()V

    goto :goto_0

    .line 563
    :cond_2
    const-string v1, "android.net.wifidirect.STA_DISASSOC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 564
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiDirectSettings;->updateAccessPoints()V

    goto :goto_0

    .line 565
    :cond_3
    const-string v1, "android.net.wifidirect.CREATE_LINK_FAIL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 566
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mAccessPoints:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v1}, Lcom/android/settings/ProgressCategory;->removeAll()V

    .line 567
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mDisconnectDirect:Landroid/preference/Preference;

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 568
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isDirectInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 569
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mStatus:Landroid/preference/Preference;

    const v2, 0x7f08018b

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(I)V

    .line 570
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v4, v4}, Landroid/net/wifi/WifiManager;->setDeviceDiscoveryEnabled(ZZ)Z

    .line 571
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v5, v4}, Landroid/net/wifi/WifiManager;->setDeviceDiscoveryEnabled(ZZ)Z

    goto :goto_0

    .line 573
    :cond_4
    const-string v1, "android.net.wifidirect.DIRECT_PEER_CONNECTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 574
    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiDirectSettings;->autoFinish:Z

    if-eqz v1, :cond_5

    .line 575
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiDirectSettings;->finish()V

    .line 577
    :cond_5
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiDirectSettings;->updateConnectionStatus()V

    goto :goto_0

    .line 578
    :cond_6
    const-string v1, "android.net.wifidirect.CREATE_LINK_COMPLETE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 579
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiDirectSettings;->updateAccessPoints()V

    goto :goto_0

    .line 580
    :cond_7
    const-string v1, "android.net.wifidirect.GO_LINK_DOWN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 581
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v4, v4}, Landroid/net/wifi/WifiManager;->setDeviceDiscoveryEnabled(ZZ)Z

    .line 582
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v5, v4}, Landroid/net/wifi/WifiManager;->setDeviceDiscoveryEnabled(ZZ)Z

    goto :goto_0
.end method

.method private showDialog(Lcom/android/settings/wifi/WifiDirectPreference;ZLandroid/net/wifi/WifiConfiguration;)V
    .locals 6
    .parameter "accessPoint"
    .parameter "edit"
    .parameter "wifiConfig"

    .prologue
    .line 513
    const-string v0, "WifiDirectSettings"

    const-string v1, "showDialog - edit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mDialog:Lcom/android/settings/wifi/WifiDirectDialog;

    if-eqz v0, :cond_0

    .line 515
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mDialog:Lcom/android/settings/wifi/WifiDirectDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiDirectDialog;->dismiss()V

    .line 517
    :cond_0
    new-instance v0, Lcom/android/settings/wifi/WifiDirectDialog;

    move-object v1, p0

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/wifi/WifiDirectDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/settings/wifi/WifiDirectPreference;ZLandroid/net/wifi/WifiConfiguration;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mDialog:Lcom/android/settings/wifi/WifiDirectDialog;

    .line 518
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mDialog:Lcom/android/settings/wifi/WifiDirectDialog;

    invoke-virtual {v0, p0}, Lcom/android/settings/wifi/WifiDirectDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 519
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mDialog:Lcom/android/settings/wifi/WifiDirectDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiDirectDialog;->show()V

    .line 520
    return-void
.end method

.method private updateAccessPoints()V
    .locals 8

    .prologue
    const-string v7, "WifiDirectSettings"

    .line 530
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 532
    .local v1, accessPoints:Ljava/util/List;,"Ljava/util/List<Lcom/android/settings/wifi/WifiDirectPreference;>;"
    iget-object v5, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getP2PScanResults()Ljava/util/List;

    move-result-object v4

    .line 533
    .local v4, results:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    if-eqz v4, :cond_1

    .line 534
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/ScanResult;

    .line 536
    .local v3, result:Landroid/net/wifi/ScanResult;
    iget-object v5, v3, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-object v5, v3, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, v3, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v6, "[IBSS]"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 541
    const-string v5, "WifiDirectSettings"

    invoke-virtual {v3}, Landroid/net/wifi/ScanResult;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    new-instance v5, Lcom/android/settings/wifi/WifiDirectPreference;

    invoke-direct {v5, p0, v3}, Lcom/android/settings/wifi/WifiDirectPreference;-><init>(Landroid/content/Context;Landroid/net/wifi/ScanResult;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 545
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #result:Landroid/net/wifi/ScanResult;
    :cond_1
    const-string v5, "WifiDirectSettings"

    const-string v5, "updateAccessPoints(), ScanResult list updated"

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    iget-object v5, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mAccessPoints:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v5}, Lcom/android/settings/ProgressCategory;->removeAll()V

    .line 548
    iget-object v5, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mAccessPoints:Lcom/android/settings/ProgressCategory;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/settings/ProgressCategory;->setProgress(Z)V

    .line 549
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/WifiDirectPreference;

    .line 550
    .local v0, accessPoint:Lcom/android/settings/wifi/WifiDirectPreference;
    iget-object v5, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mAccessPoints:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v5, v0}, Lcom/android/settings/ProgressCategory;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_1

    .line 552
    .end local v0           #accessPoint:Lcom/android/settings/wifi/WifiDirectPreference;
    :cond_2
    return-void
.end method

.method private updateConnectionStatus()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const v5, 0x7f08018a

    const-string v3, "WifiDirectSettings"

    .line 587
    iget-object v2, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isDirectConnected()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 588
    const-string v2, "WifiDirectSettings"

    const-string v2, "updateConnectionStatus : Connected"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    iget-object v2, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 590
    .local v1, mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiDirectSettings;->updateAccessPoints()V

    .line 591
    iget-object v2, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mDisconnectDirect:Landroid/preference/Preference;

    invoke-virtual {v2, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 594
    if-eqz v1, :cond_2

    .line 595
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v0

    .line 596
    .local v0, address:I
    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isGOCreated()Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x12ba8c0

    if-ne v0, v2, :cond_1

    .line 597
    :cond_0
    iget-object v2, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mStatus:Landroid/preference/Preference;

    const v3, 0x7f080191

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/WifiDirectSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/WifiDirectSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v0}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 612
    .end local v0           #address:I
    .end local v1           #mWifiInfo:Landroid/net/wifi/WifiInfo;
    :goto_0
    return-void

    .line 601
    .restart local v0       #address:I
    .restart local v1       #mWifiInfo:Landroid/net/wifi/WifiInfo;
    :cond_1
    const-string v2, "WifiDirectSettings"

    const-string v2, "GO && ip is not vaild"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    iget-object v2, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mStatus:Landroid/preference/Preference;

    invoke-virtual {v2, v5}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 605
    .end local v0           #address:I
    :cond_2
    iget-object v2, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mStatus:Landroid/preference/Preference;

    invoke-virtual {v2, v5}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 608
    .end local v1           #mWifiInfo:Landroid/net/wifi/WifiInfo;
    :cond_3
    const-string v2, "WifiDirectSettings"

    const-string v2, "updateConnectionStatus : Not connected"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    iget-object v2, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mDisconnectDirect:Landroid/preference/Preference;

    invoke-virtual {v2, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 610
    iget-object v2, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mStatus:Landroid/preference/Preference;

    const v3, 0x7f08018b

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0
.end method

.method private updateWifiState(I)V
    .locals 5
    .parameter "state"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const-string v2, "WifiDirectSettings"

    .line 615
    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    .line 616
    const-string v1, "WifiDirectSettings"

    const-string v1, "updateWifiState()"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v4}, Landroid/net/wifi/WifiManager;->setSupplicantAutoScan(Z)Z

    .line 623
    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mEnablingDirect:Z

    if-eqz v1, :cond_0

    .line 624
    const-string v1, "WifiDirectSettings"

    const-string v1, "Enabling Direct"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v3}, Landroid/net/wifi/WifiManager;->setWifiDirectSetting(Z)Z

    .line 626
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mDirectEnabler:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 627
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 629
    .local v0, directConfig:Landroid/net/wifi/WifiConfiguration;
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/16 v2, 0x8

    invoke-virtual {v1, v3, v0, v2}, Landroid/net/wifi/WifiManager;->setWifiDirectEnabled(ZLandroid/net/wifi/WifiConfiguration;I)Z

    .line 630
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v3, v4}, Landroid/net/wifi/WifiManager;->setDeviceDiscoveryEnabled(ZZ)Z

    .line 632
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mAccessPoints:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v1, v3}, Lcom/android/settings/ProgressCategory;->setProgress(Z)V

    .line 633
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiDirectSettings;->updateConnectionStatus()V

    .line 634
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mScanner:Lcom/android/settings/wifi/WifiDirectSettings$Scanner;

    invoke-virtual {v1}, Lcom/android/settings/wifi/WifiDirectSettings$Scanner;->resume()V

    .line 635
    iput-boolean v4, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mEnablingDirect:Z

    .line 645
    .end local v0           #directConfig:Landroid/net/wifi/WifiConfiguration;
    :cond_0
    :goto_0
    return-void

    .line 637
    :cond_1
    if-ne p1, v3, :cond_2

    .line 638
    const-string v1, "WifiDirectSettings"

    const-string v1, "updateWifiState(), WIFI_STATE_DISABLED"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mDirectEnabler:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 640
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v4}, Landroid/net/wifi/WifiManager;->setWifiDirectSetting(Z)Z

    goto :goto_0

    .line 642
    :cond_2
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mScanner:Lcom/android/settings/wifi/WifiDirectSettings$Scanner;

    invoke-virtual {v1}, Lcom/android/settings/wifi/WifiDirectSettings$Scanner;->pause()V

    .line 643
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mAccessPoints:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v1}, Lcom/android/settings/ProgressCategory;->removeAll()V

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v6, "WifiDirectSettings"

    const-string v5, " )"

    .line 477
    const/4 v0, -0x3

    if-ne p2, v0, :cond_2

    .line 478
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mSelected:Lcom/android/settings/wifi/WifiDirectPreference;

    if-eqz v0, :cond_1

    .line 479
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mSelected:Lcom/android/settings/wifi/WifiDirectPreference;

    iget-object v1, v1, Lcom/android/settings/wifi/WifiDirectPreference;->bssid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->disconnectWifiDirectPeer(Ljava/lang/String;)Z

    .line 480
    const-string v0, "WifiDirectSettings"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mWifiManager.disconnectWifiDirectPeer( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mSelected:Lcom/android/settings/wifi/WifiDirectPreference;

    iget-object v1, v1, Lcom/android/settings/wifi/WifiDirectPreference;->bssid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " )"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mAccessPoints:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0}, Lcom/android/settings/ProgressCategory;->removeAll()V

    .line 485
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v3, v3}, Landroid/net/wifi/WifiManager;->setDeviceDiscoveryEnabled(ZZ)Z

    .line 486
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v4, v3}, Landroid/net/wifi/WifiManager;->setDeviceDiscoveryEnabled(ZZ)Z

    .line 509
    :cond_0
    :goto_1
    return-void

    .line 482
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->disconnectWifiDirectPeer(Ljava/lang/String;)Z

    goto :goto_0

    .line 487
    :cond_2
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mDialog:Lcom/android/settings/wifi/WifiDirectDialog;

    if-eqz v0, :cond_0

    .line 488
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mSelected:Lcom/android/settings/wifi/WifiDirectPreference;

    if-eqz v0, :cond_3

    .line 489
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mSelected:Lcom/android/settings/wifi/WifiDirectPreference;

    iget-object v2, v2, Lcom/android/settings/wifi/WifiDirectPreference;->bssid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->sendProvisionRequest(ILjava/lang/String;)Z

    .line 490
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 491
    const-class v1, Lcom/android/settings/wifi/WifiDirectProgressDialog;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 493
    const-string v1, "dev_address"

    iget-object v2, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mSelected:Lcom/android/settings/wifi/WifiDirectPreference;

    iget-object v2, v2, Lcom/android/settings/wifi/WifiDirectPreference;->bssid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 494
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiDirectSettings;->startActivity(Landroid/content/Intent;)V

    .line 495
    const-string v0, "WifiDirectSettings"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mWifiManager.sendProvisionRequest( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mSelected:Lcom/android/settings/wifi/WifiDirectPreference;

    iget-object v1, v1, Lcom/android/settings/wifi/WifiDirectPreference;->bssid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " )"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 496
    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mDialog:Lcom/android/settings/wifi/WifiDirectDialog;

    iget-boolean v0, v0, Lcom/android/settings/wifi/WifiDirectDialog;->edit:Z

    if-eqz v0, :cond_0

    .line 497
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mDialog:Lcom/android/settings/wifi/WifiDirectDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiDirectDialog;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 498
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiDirectSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "direct_ssid"

    iget-object v2, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 499
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mConfigureNetwork:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 500
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isDirectInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 501
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiDirectSSID(Ljava/lang/String;)I

    .line 502
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isDirectConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 503
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v3, v3}, Landroid/net/wifi/WifiManager;->setDeviceDiscoveryEnabled(ZZ)Z

    .line 504
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v4, v3}, Landroid/net/wifi/WifiManager;->setDeviceDiscoveryEnabled(ZZ)Z

    goto/16 :goto_1
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 407
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mSelected:Lcom/android/settings/wifi/WifiDirectPreference;

    if-nez v0, :cond_0

    .line 408
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 410
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v7, "direct_ssid"

    .line 133
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 135
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiDirectSettings;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 136
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "AUTO_FINISH"

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/wifi/WifiDirectSettings;->autoFinish:Z

    .line 138
    const-string v3, "wifi"

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/WifiDirectSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    iput-object v3, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 140
    const v3, 0x7f040037

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/WifiDirectSettings;->addPreferencesFromResource(I)V

    .line 142
    const-string v3, "enable_direct"

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/WifiDirectSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mDirectEnabler:Landroid/preference/CheckBoxPreference;

    .line 143
    const-string v3, "direct_status"

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/WifiDirectSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mStatus:Landroid/preference/Preference;

    .line 144
    const-string v3, "direct_ssid"

    invoke-virtual {p0, v7}, Lcom/android/settings/wifi/WifiDirectSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mConfigureNetwork:Landroid/preference/Preference;

    .line 145
    const-string v3, "direct_disconnect"

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/WifiDirectSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mDisconnectDirect:Landroid/preference/Preference;

    .line 147
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiDirectSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "direct_ssid"

    invoke-static {v3, v7}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 148
    .local v2, str:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 149
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiDirectSettings;->generateDefaultSSID()Ljava/lang/String;

    move-result-object v2

    .line 150
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiDirectSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "direct_ssid"

    invoke-static {v3, v7, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 152
    :cond_0
    iget-object v3, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mConfigureNetwork:Landroid/preference/Preference;

    invoke-virtual {v3, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 154
    const-string v3, "access_points"

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/WifiDirectSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/settings/ProgressCategory;

    iput-object v3, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mAccessPoints:Lcom/android/settings/ProgressCategory;

    .line 155
    iget-object v3, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mAccessPoints:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v3, v5}, Lcom/android/settings/ProgressCategory;->setOrderingAsAdded(Z)V

    .line 157
    iget-boolean v3, p0, Lcom/android/settings/wifi/WifiDirectSettings;->autoFinish:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->isDirectInitialized()Z

    move-result v3

    if-nez v3, :cond_1

    .line 158
    iput-boolean v6, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mEnablingDirect:Z

    .line 161
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiDirectSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "direct_not_show_again"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 162
    .local v1, showNotify:I
    if-nez v1, :cond_2

    .line 163
    invoke-virtual {p0, v6}, Lcom/android/settings/wifi/WifiDirectSettings;->showDialog(I)V

    .line 166
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiDirectSettings;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/WifiDirectSettings;->registerForContextMenu(Landroid/view/View;)V

    .line 168
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiDirectSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "direct_enter"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 170
    const-string v3, "WifiDirectSettings"

    const-string v4, "onCreate() finish"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 2
    .parameter "menu"
    .parameter "view"
    .parameter "info"

    .prologue
    .line 287
    instance-of v0, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    if-eqz v0, :cond_0

    .line 288
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiDirectSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .end local p3
    iget v1, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/preference/Preference;

    .line 291
    :cond_0
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 13
    .parameter "id"

    .prologue
    const v12, 0x7f0801ad

    const v11, 0x7f08018c

    const v10, 0x1080027

    const/4 v9, 0x0

    const v8, 0x7f08038b

    .line 295
    const-string v5, "WifiDirectSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onCreateDialog id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    packed-switch p1, :pswitch_data_0

    move-object v5, v9

    .line 402
    :goto_0
    return-object v5

    .line 298
    :pswitch_0
    iget-object v5, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mNotifyDialog:Landroid/app/AlertDialog;

    if-eqz v5, :cond_0

    move-object v5, v9

    .line 299
    goto :goto_0

    .line 301
    :cond_0
    const-string v5, "layout_inflater"

    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/WifiDirectSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 302
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v5, 0x7f03006e

    invoke-virtual {v2, v5, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 304
    .local v1, discover_notify:Landroid/widget/LinearLayout;
    const v5, 0x7f0b015e

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 307
    .local v4, notify_confirm:Landroid/widget/LinearLayout;
    const v5, 0x7f0b015f

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    .line 310
    .local v3, not_show_again:Landroid/widget/CheckBox;
    new-instance v5, Lcom/android/settings/wifi/WifiDirectSettings$2;

    invoke-direct {v5, p0, v3}, Lcom/android/settings/wifi/WifiDirectSettings$2;-><init>(Lcom/android/settings/wifi/WifiDirectSettings;Landroid/widget/CheckBox;)V

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 318
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 319
    .local v0, b:Landroid/app/AlertDialog$Builder;
    const v5, 0x7f080192

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 320
    const v5, 0x7f080193

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 321
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 322
    new-instance v5, Lcom/android/settings/wifi/WifiDirectSettings$3;

    invoke-direct {v5, p0, v3}, Lcom/android/settings/wifi/WifiDirectSettings$3;-><init>(Lcom/android/settings/wifi/WifiDirectSettings;Landroid/widget/CheckBox;)V

    invoke-virtual {v0, v8, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 329
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mNotifyDialog:Landroid/app/AlertDialog;

    .line 330
    iget-object v5, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mNotifyDialog:Landroid/app/AlertDialog;

    goto :goto_0

    .line 333
    .end local v0           #b:Landroid/app/AlertDialog$Builder;
    .end local v1           #discover_notify:Landroid/widget/LinearLayout;
    .end local v2           #inflater:Landroid/view/LayoutInflater;
    .end local v3           #not_show_again:Landroid/widget/CheckBox;
    .end local v4           #notify_confirm:Landroid/widget/LinearLayout;
    :pswitch_1
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v10}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f080181

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v11}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {p0, v12}, Lcom/android/settings/wifi/WifiDirectSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/android/settings/wifi/WifiDirectSettings$6;

    invoke-direct {v7, p0}, Lcom/android/settings/wifi/WifiDirectSettings$6;-><init>(Lcom/android/settings/wifi/WifiDirectSettings;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {p0, v8}, Lcom/android/settings/wifi/WifiDirectSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/android/settings/wifi/WifiDirectSettings$5;

    invoke-direct {v7, p0}, Lcom/android/settings/wifi/WifiDirectSettings$5;-><init>(Lcom/android/settings/wifi/WifiDirectSettings;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/android/settings/wifi/WifiDirectSettings$4;

    invoke-direct {v6, p0}, Lcom/android/settings/wifi/WifiDirectSettings$4;-><init>(Lcom/android/settings/wifi/WifiDirectSettings;)V

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    goto/16 :goto_0

    .line 379
    :pswitch_2
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v10}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f08018f

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v11}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {p0, v12}, Lcom/android/settings/wifi/WifiDirectSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/android/settings/wifi/WifiDirectSettings$8;

    invoke-direct {v7, p0}, Lcom/android/settings/wifi/WifiDirectSettings$8;-><init>(Lcom/android/settings/wifi/WifiDirectSettings;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {p0, v8}, Lcom/android/settings/wifi/WifiDirectSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/android/settings/wifi/WifiDirectSettings$7;

    invoke-direct {v7, p0}, Lcom/android/settings/wifi/WifiDirectSettings$7;-><init>(Lcom/android/settings/wifi/WifiDirectSettings;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    goto/16 :goto_0

    .line 296
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    .line 252
    const/4 v0, 0x1

    const v1, 0x7f080170

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020033

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 254
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 243
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 245
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiDirectSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "direct_enter"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 247
    const-string v0, "WifiDirectSettings"

    const-string v1, "onDestroy() finish"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 523
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mDialog:Lcom/android/settings/wifi/WifiDirectDialog;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 524
    const-string v0, "WifiDirectSettings"

    const-string v1, "onDismiss(), dismiss mDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mDialog:Lcom/android/settings/wifi/WifiDirectDialog;

    .line 527
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 267
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 282
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 269
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mScanner:Lcom/android/settings/wifi/WifiDirectSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiDirectSettings$Scanner;->resume()V

    .line 271
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mAccessPoints:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0, v2}, Lcom/android/settings/ProgressCategory;->setProgress(Z)V

    .line 273
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isDirectConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v1, v1}, Landroid/net/wifi/WifiManager;->setDeviceDiscoveryEnabled(ZZ)Z

    .line 276
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v2, v1}, Landroid/net/wifi/WifiManager;->setDeviceDiscoveryEnabled(ZZ)Z

    :cond_0
    move v0, v2

    .line 280
    goto :goto_0

    .line 267
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 219
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 220
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiDirectSettings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 221
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mScanner:Lcom/android/settings/wifi/WifiDirectSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiDirectSettings$Scanner;->pause()V

    .line 222
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mEnablingDirect:Z

    .line 223
    const-string v0, "WifiDirectSettings"

    const-string v1, "onPause() finish"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 10
    .parameter "screen"
    .parameter "preference"

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    const-string v5, "WifiDirectSettings"

    .line 415
    instance-of v4, p2, Lcom/android/settings/wifi/WifiDirectPreference;

    if-eqz v4, :cond_0

    .line 416
    check-cast p2, Lcom/android/settings/wifi/WifiDirectPreference;

    .end local p2
    iput-object p2, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mSelected:Lcom/android/settings/wifi/WifiDirectPreference;

    .line 417
    const-string v4, "WifiDirectSettings"

    const-string v4, "show Direct Dialog"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    iget-object v4, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mSelected:Lcom/android/settings/wifi/WifiDirectPreference;

    invoke-direct {p0, v4, v7, v8}, Lcom/android/settings/wifi/WifiDirectSettings;->showDialog(Lcom/android/settings/wifi/WifiDirectPreference;ZLandroid/net/wifi/WifiConfiguration;)V

    :goto_0
    move v4, v6

    .line 472
    :goto_1
    return v4

    .line 419
    .restart local p2
    :cond_0
    iget-object v4, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mDirectEnabler:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 420
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 422
    .local v0, directConfig:Landroid/net/wifi/WifiConfiguration;
    iget-object v4, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mDirectEnabler:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-ne v4, v6, :cond_4

    .line 423
    iget-object v4, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mDisconnectDirect:Landroid/preference/Preference;

    invoke-virtual {v4, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 426
    iget-object v4, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v3

    .line 427
    .local v3, wifiApState:I
    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    if-ne v3, v9, :cond_2

    .line 429
    :cond_1
    iget-object v4, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4, v8, v7}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 432
    :cond_2
    const-string v4, "WifiDirectSettings"

    const-string v4, "mWifiManager.setWifiDirectEnabled(true)"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    iget-object v4, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v4

    if-nez v4, :cond_3

    .line 434
    iget-object v4, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4, v6}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 435
    iput-boolean v6, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mEnablingDirect:Z

    goto :goto_0

    .line 437
    :cond_3
    iget-object v4, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4, v6}, Landroid/net/wifi/WifiManager;->setWifiDirectSetting(Z)Z

    .line 438
    iget-object v4, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/16 v5, 0x8

    invoke-virtual {v4, v6, v0, v5}, Landroid/net/wifi/WifiManager;->setWifiDirectEnabled(ZLandroid/net/wifi/WifiConfiguration;I)Z

    .line 439
    iget-object v4, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4, v6, v7}, Landroid/net/wifi/WifiManager;->setDeviceDiscoveryEnabled(ZZ)Z

    .line 441
    iget-object v4, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mAccessPoints:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v4, v6}, Lcom/android/settings/ProgressCategory;->setProgress(Z)V

    .line 442
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiDirectSettings;->updateConnectionStatus()V

    .line 443
    iget-object v4, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mScanner:Lcom/android/settings/wifi/WifiDirectSettings$Scanner;

    invoke-virtual {v4}, Lcom/android/settings/wifi/WifiDirectSettings$Scanner;->resume()V

    goto :goto_0

    .line 449
    .end local v3           #wifiApState:I
    :cond_4
    iget-object v4, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4, v7}, Landroid/net/wifi/WifiManager;->setWifiDirectSetting(Z)Z

    .line 450
    const-string v4, "WifiDirectSettings"

    const-string v4, "mWifiManager.setWifiDirectEnabled(false)"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    iget-object v4, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/16 v5, 0x8

    invoke-virtual {v4, v7, v0, v5}, Landroid/net/wifi/WifiManager;->setWifiDirectEnabled(ZLandroid/net/wifi/WifiConfiguration;I)Z

    .line 452
    iget-object v4, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4, v7}, Landroid/net/wifi/WifiManager;->setWifiDirectSetting(Z)Z

    .line 453
    iget-object v4, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mAccessPoints:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v4, v7}, Lcom/android/settings/ProgressCategory;->setProgress(Z)V

    .line 454
    iget-object v4, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mAccessPoints:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v4}, Lcom/android/settings/ProgressCategory;->removeAll()V

    .line 455
    iget-object v4, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mScanner:Lcom/android/settings/wifi/WifiDirectSettings$Scanner;

    invoke-virtual {v4}, Lcom/android/settings/wifi/WifiDirectSettings$Scanner;->pause()V

    .line 456
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiDirectSettings;->updateConnectionStatus()V

    goto/16 :goto_0

    .line 458
    .end local v0           #directConfig:Landroid/net/wifi/WifiConfiguration;
    :cond_5
    iget-object v4, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mConfigureNetwork:Landroid/preference/Preference;

    invoke-virtual {p2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 459
    const-string v4, "WifiDirectSettings"

    const-string v4, "preference == mConfigureNetwork"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    iput-object v8, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mSelected:Lcom/android/settings/wifi/WifiDirectPreference;

    .line 461
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiDirectSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "direct_ssid"

    invoke-static {v4, v5}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 463
    .local v2, name:Ljava/lang/String;
    new-instance v1, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v1}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 465
    .local v1, mWifiConfig:Landroid/net/wifi/WifiConfiguration;
    iput-object v2, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 466
    invoke-direct {p0, v8, v6, v1}, Lcom/android/settings/wifi/WifiDirectSettings;->showDialog(Lcom/android/settings/wifi/WifiDirectPreference;ZLandroid/net/wifi/WifiConfiguration;)V

    goto/16 :goto_0

    .line 467
    .end local v1           #mWifiConfig:Landroid/net/wifi/WifiConfiguration;
    .end local v2           #name:Ljava/lang/String;
    :cond_6
    iget-object v4, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mDisconnectDirect:Landroid/preference/Preference;

    invoke-virtual {p2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 468
    invoke-virtual {p0, v9}, Lcom/android/settings/wifi/WifiDirectSettings;->showDialog(I)V

    goto/16 :goto_0

    .line 470
    :cond_7
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v4

    goto/16 :goto_1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x1

    .line 259
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 260
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mDirectEnabler:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 262
    return v2

    .line 260
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const-string v5, "WifiDirectSettings"

    .line 175
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 177
    const-string v1, "WifiDirectSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResume "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings/wifi/WifiDirectSettings;->autoFinish:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isDirectConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiDirectSettings;->autoFinish:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isGcCreated()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 179
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiDirectSettings;->finish()V

    .line 182
    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v1

    sget-object v2, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v1, v2}, Landroid/net/wifi/SupplicantState;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 184
    .local v0, isWifiConnected:Z
    if-eqz v0, :cond_2

    .line 185
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiDirectSettings;->showDialog(I)V

    .line 186
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mNotifyDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_1

    .line 187
    const-string v1, "WifiDirectSettings"

    const-string v1, "mAlertDialg is not null"

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mNotifyDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 189
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mNotifyDialog:Landroid/app/AlertDialog;

    .line 190
    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/WifiDirectSettings;->showDialog(I)V

    .line 212
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/wifi/WifiDirectSettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 214
    const-string v1, "WifiDirectSettings"

    const-string v1, "onResume() finish"

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    return-void

    .line 193
    :cond_2
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v4}, Landroid/net/wifi/WifiManager;->setSupplicantAutoScan(Z)Z

    .line 196
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isDirectInitialized()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 197
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mDirectEnabler:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 198
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isDirectConnected()Z

    move-result v1

    if-nez v1, :cond_3

    .line 199
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v3, v4}, Landroid/net/wifi/WifiManager;->setDeviceDiscoveryEnabled(ZZ)Z

    .line 202
    :cond_3
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mAccessPoints:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v1, v3}, Lcom/android/settings/ProgressCategory;->setProgress(Z)V

    .line 203
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mScanner:Lcom/android/settings/wifi/WifiDirectSettings$Scanner;

    invoke-virtual {v1}, Lcom/android/settings/wifi/WifiDirectSettings$Scanner;->resume()V

    .line 204
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiDirectSettings;->updateConnectionStatus()V

    goto :goto_0

    .line 206
    :cond_4
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mDirectEnabler:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 207
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mAccessPoints:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v1}, Lcom/android/settings/ProgressCategory;->removeAll()V

    .line 208
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mStatus:Landroid/preference/Preference;

    const v2, 0x7f08018b

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0
.end method

.method public onStop()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const-string v3, "WifiDirectSettings"

    .line 228
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStop()V

    .line 229
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isDirectConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiManager;->setSupplicantAutoScan(Z)Z

    .line 233
    :cond_0
    const-string v0, "WifiDirectSettings"

    const-string v0, "onStop() Stop Direct Device Discovery"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->setDeviceDiscoveryEnabled(ZZ)Z

    .line 236
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->startScanActive()Z

    .line 238
    const-string v0, "WifiDirectSettings"

    const-string v0, "onStop() finish"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    return-void
.end method
