.class public Lcom/android/settings/wifi/WifiSettings;
.super Landroid/preference/PreferenceActivity;
.source "WifiSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/WifiSettings$Scanner;
    }
.end annotation


# instance fields
.field private configForRetry:Landroid/net/wifi/WifiConfiguration;

.field private countForRetry:I

.field private eventError:I

.field private eventState:Landroid/net/wifi/SupplicantState;

.field private hasError:Z

.field private mAccessPoints:Lcom/android/settings/ProgressCategory;

.field private mAddNetwork:Landroid/preference/Preference;

.field private mDialog:Lcom/android/settings/wifi/WifiDialog;

.field private final mFilter:Landroid/content/IntentFilter;

.field private mKeyStoreNetworkId:I

.field private mLapseTime:I

.field private mLastAuthenticatingAp:Lcom/android/settings/wifi/AccessPoint;

.field private mLastAuthenticatingInfo:Landroid/net/wifi/WifiInfo;

.field private mLastInfo:Landroid/net/wifi/WifiInfo;

.field private mLastPriority:I

.field private mLastState:Landroid/net/NetworkInfo$DetailedState;

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private mNotifyOpenNetworks:Landroid/preference/CheckBoxPreference;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mProgressDialog:Lcom/sec/android/touchwiz/widget/TwProgressDialog;

.field private mProgressNumberFormat:Ljava/lang/String;

.field private mRandomPinNumber:I

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mResetNetworks:Z

.field private final mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;

.field private mSelected:Lcom/android/settings/wifi/AccessPoint;

.field private mTimer:Landroid/os/CountDownTimer;

.field protected mWakeLock:Landroid/os/PowerManager$WakeLock;

.field protected mWakeLockforToast:Landroid/os/PowerManager$WakeLock;

.field private mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWpsButton:Landroid/preference/Preference;

.field private mWpsInProgress:Z

.field private networkIdforRetry:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 139
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 99
    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->mResetNetworks:Z

    .line 100
    iput v0, p0, Lcom/android/settings/wifi/WifiSettings;->mKeyStoreNetworkId:I

    .line 107
    iput v1, p0, Lcom/android/settings/wifi/WifiSettings;->countForRetry:I

    .line 109
    iput v0, p0, Lcom/android/settings/wifi/WifiSettings;->networkIdforRetry:I

    .line 140
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    .line 141
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.NETWORK_IDS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.GET_WPS_EVENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 156
    new-instance v0, Lcom/android/settings/wifi/WifiSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiSettings$1;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 163
    new-instance v0, Lcom/android/settings/wifi/WifiSettings$Scanner;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/wifi/WifiSettings$Scanner;-><init>(Lcom/android/settings/wifi/WifiSettings;Lcom/android/settings/wifi/WifiSettings$1;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;

    .line 164
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/WifiSettings;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->handleEvent(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings/wifi/WifiSettings;)Landroid/net/NetworkInfo$DetailedState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/WifiSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->wpsCommandCancel()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/WifiSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->dismissProgressDialog()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/wifi/WifiSettings;)Landroid/net/wifi/WifiManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/WifiSettings$Scanner;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/wifi/WifiSettings;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget v0, p0, Lcom/android/settings/wifi/WifiSettings;->mLapseTime:I

    return v0
.end method

.method static synthetic access$620(Lcom/android/settings/wifi/WifiSettings;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iget v0, p0, Lcom/android/settings/wifi/WifiSettings;->mLapseTime:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/android/settings/wifi/WifiSettings;->mLapseTime:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/settings/wifi/WifiSettings;)Lcom/sec/android/touchwiz/widget/TwProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mProgressDialog:Lcom/sec/android/touchwiz/widget/TwProgressDialog;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/wifi/WifiSettings;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mProgressNumberFormat:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/settings/wifi/WifiSettings;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mProgressNumberFormat:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/ProgressCategory;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAccessPoints:Lcom/android/settings/ProgressCategory;

    return-object v0
.end method

.method private connect(I)V
    .locals 9
    .parameter "networkId"

    .prologue
    const/4 v8, 0x0

    const/4 v7, -0x1

    const/4 v6, 0x1

    .line 701
    const-string v3, "WifiSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "connect ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    if-ne p1, v7, :cond_0

    .line 731
    :goto_0
    return-void

    .line 707
    :cond_0
    iget v3, p0, Lcom/android/settings/wifi/WifiSettings;->mLastPriority:I

    const v4, 0xf4240

    if-le v3, v4, :cond_3

    .line 708
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mAccessPoints:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v3}, Lcom/android/settings/ProgressCategory;->getPreferenceCount()I

    move-result v3

    sub-int v2, v3, v6

    .local v2, i:I
    :goto_1
    if-ltz v2, :cond_2

    .line 709
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mAccessPoints:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v3, v2}, Lcom/android/settings/ProgressCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/AccessPoint;

    .line 710
    .local v0, accessPoint:Lcom/android/settings/wifi/AccessPoint;
    iget v3, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-eq v3, v7, :cond_1

    .line 711
    new-instance v1, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v1}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 712
    .local v1, config:Landroid/net/wifi/WifiConfiguration;
    iget v3, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    iput v3, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 713
    iput v8, v1, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 714
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v1}, Landroid/net/wifi/WifiManager;->updateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    .line 708
    .end local v1           #config:Landroid/net/wifi/WifiConfiguration;
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 717
    .end local v0           #accessPoint:Lcom/android/settings/wifi/AccessPoint;
    :cond_2
    iput v8, p0, Lcom/android/settings/wifi/WifiSettings;->mLastPriority:I

    .line 721
    .end local v2           #i:I
    :cond_3
    new-instance v1, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v1}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 722
    .restart local v1       #config:Landroid/net/wifi/WifiConfiguration;
    iput p1, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 723
    iget v3, p0, Lcom/android/settings/wifi/WifiSettings;->mLastPriority:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/settings/wifi/WifiSettings;->mLastPriority:I

    iput v3, v1, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 724
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v1}, Landroid/net/wifi/WifiManager;->updateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    .line 725
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->saveNetworks()V

    .line 728
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, p1, v6}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    .line 729
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->reconnect()Z

    .line 730
    iput-boolean v6, p0, Lcom/android/settings/wifi/WifiSettings;->mResetNetworks:Z

    goto :goto_0
.end method

.method private dismissProgressDialog()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const-string v3, "WifiSettings"

    .line 591
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mTimer:Landroid/os/CountDownTimer;

    if-eqz v1, :cond_0

    .line 592
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v1}, Landroid/os/CountDownTimer;->cancel()V

    .line 594
    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mProgressDialog:Lcom/sec/android/touchwiz/widget/TwProgressDialog;

    if-eqz v1, :cond_1

    .line 595
    const-string v1, "WifiSettings"

    const-string v1, "dismissProgressDialog(), mProgressDialog.dissmiss()"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mProgressDialog:Lcom/sec/android/touchwiz/widget/TwProgressDialog;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->dismiss()V

    .line 599
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mProgressDialog:Lcom/sec/android/touchwiz/widget/TwProgressDialog;

    .line 600
    const v1, 0x1d4c0

    iput v1, p0, Lcom/android/settings/wifi/WifiSettings;->mLapseTime:I

    .line 601
    iput-boolean v4, p0, Lcom/android/settings/wifi/WifiSettings;->mWpsInProgress:Z

    .line 603
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/16 v2, -0x63

    invoke-virtual {v1, v2, v4}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    move-result v0

    .line 604
    .local v0, result:Z
    if-nez v0, :cond_2

    .line 605
    const-string v1, "WifiSettings"

    const-string v1, "ENABLE ALL is fail"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    .end local v0           #result:Z
    :cond_1
    :goto_0
    return-void

    .line 607
    .restart local v0       #result:Z
    :cond_2
    const-string v1, "WifiSettings"

    const-string v1, "ENABLE ALL is success"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private enableNetworks()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 734
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mAccessPoints:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v2}, Lcom/android/settings/ProgressCategory;->getPreferenceCount()I

    move-result v2

    const/4 v3, 0x1

    sub-int v1, v2, v3

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_1

    .line 735
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mAccessPoints:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v2, v1}, Lcom/android/settings/ProgressCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 736
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 737
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v2, v3, v4}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    .line 734
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 740
    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    :cond_1
    iput-boolean v4, p0, Lcom/android/settings/wifi/WifiSettings;->mResetNetworks:Z

    .line 741
    return-void
.end method

.method private forget(I)V
    .locals 1
    .parameter "networkId"

    .prologue
    .line 696
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiManager;->removeNetwork(I)Z

    .line 697
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->saveNetworks()V

    .line 698
    return-void
.end method

.method public static getTimeString(I)Ljava/lang/String;
    .locals 6
    .parameter "milliSecond"

    .prologue
    .line 632
    div-int/lit16 v2, p0, 0x3e8

    div-int/lit8 v0, v2, 0x3c

    .line 633
    .local v0, min:I
    div-int/lit16 v2, p0, 0x3e8

    rem-int/lit8 v1, v2, 0x3c

    .line 635
    .local v1, second:I
    const-string v2, "%02d:%02d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private handleEvent(Landroid/content/Intent;)V
    .locals 6
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const-string v5, "supplicantError"

    const-string v4, "newState"

    .line 812
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 814
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 815
    const-string v0, "wifi_state"

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->updateWifiState(I)V

    .line 818
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->resetRetryDialogVariable()V

    .line 860
    :cond_0
    :goto_0
    return-void

    .line 820
    :cond_1
    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 821
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->updateAccessPoints()V

    goto :goto_0

    .line 822
    :cond_2
    const-string v1, "android.net.wifi.NETWORK_IDS_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 823
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    .line 824
    iput-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    .line 826
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->updateAccessPoints()V

    goto :goto_0

    .line 827
    :cond_4
    const-string v1, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 829
    const-string v0, "supplicantError"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->hasError:Z

    .line 830
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->hasError:Z

    if-eqz v0, :cond_5

    .line 831
    iget v0, p0, Lcom/android/settings/wifi/WifiSettings;->countForRetry:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings/wifi/WifiSettings;->countForRetry:I

    .line 833
    :cond_5
    const-string v0, "newState"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/SupplicantState;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->eventState:Landroid/net/wifi/SupplicantState;

    .line 834
    const-string v0, "supplicantError"

    invoke-virtual {p1, v5, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/wifi/WifiSettings;->eventError:I

    .line 835
    const-string v0, "newState"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/SupplicantState;

    invoke-static {v0}, Landroid/net/wifi/WifiInfo;->getDetailedStateOf(Landroid/net/wifi/SupplicantState;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->hasError:Z

    invoke-direct {p0, v0, v1}, Lcom/android/settings/wifi/WifiSettings;->updateConnectionState(Landroid/net/NetworkInfo$DetailedState;Z)V

    goto :goto_0

    .line 838
    :cond_6
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 839
    const-string v0, "networkInfo"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 840
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/android/settings/wifi/WifiSettings;->updateConnectionState(Landroid/net/NetworkInfo$DetailedState;Z)V

    goto :goto_0

    .line 841
    :cond_7
    const-string v1, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 842
    invoke-direct {p0, v3, v2}, Lcom/android/settings/wifi/WifiSettings;->updateConnectionState(Landroid/net/NetworkInfo$DetailedState;Z)V

    goto/16 :goto_0

    .line 845
    :cond_8
    const-string v1, "android.net.wifi.GET_WPS_EVENT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 846
    const-string v0, "WifiSettings"

    const-string v1, "handleEvent(), GET_WPS_EVENT_ACTION"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    const-string v0, "wps_event"

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->updateWpsEvent(I)V

    goto/16 :goto_0
.end method

.method private requireKeyStore(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 2
    .parameter "config"

    .prologue
    const/4 v1, 0x1

    .line 686
    invoke-static {p1}, Lcom/android/settings/wifi/WifiDialog;->requireKeyStore(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    invoke-virtual {v0}, Landroid/security/KeyStore;->test()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 688
    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iput v0, p0, Lcom/android/settings/wifi/WifiSettings;->mKeyStoreNetworkId:I

    .line 689
    invoke-static {}, Landroid/security/Credentials;->getInstance()Landroid/security/Credentials;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/security/Credentials;->unlock(Landroid/content/Context;)V

    move v0, v1

    .line 692
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private resetRetryDialogVariable()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 865
    const-string v0, "WifiSettings"

    const-string v1, "resetRetryDialogVariable"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    iput v2, p0, Lcom/android/settings/wifi/WifiSettings;->countForRetry:I

    .line 867
    iput-boolean v2, p0, Lcom/android/settings/wifi/WifiSettings;->hasError:Z

    .line 868
    return-void
.end method

.method private saveNetworks()V
    .locals 2

    .prologue
    .line 744
    const-string v0, "WifiSettings"

    const-string v1, "saveNetworks()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->enableNetworks()V

    .line 747
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    .line 748
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->updateAccessPoints()V

    .line 749
    return-void
.end method

.method private showDialog(Lcom/android/settings/wifi/AccessPoint;Z)V
    .locals 6
    .parameter "accessPoint"
    .parameter "edit"

    .prologue
    .line 509
    const-string v0, "WifiSettings"

    const-string v1, "showDialog - first"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    if-eqz v0, :cond_0

    .line 511
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiDialog;->dismiss()V

    .line 513
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/wifi/WifiSettings;->networkIdforRetry:I

    .line 514
    new-instance v0, Lcom/android/settings/wifi/WifiDialog;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object v1, p0

    move-object v2, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/wifi/WifiDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/net/wifi/WifiManager;Lcom/android/settings/wifi/AccessPoint;Z)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    .line 515
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {v0, p0}, Lcom/android/settings/wifi/WifiDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 516
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiDialog;->show()V

    .line 517
    return-void
.end method

.method private showDialog(Lcom/android/settings/wifi/AccessPoint;ZZ)V
    .locals 7
    .parameter "accessPoint"
    .parameter "edit"
    .parameter "retry"

    .prologue
    .line 676
    const-string v0, "WifiSettings"

    const-string v1, "showDialog - password for WPA network is wrong "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    if-nez v0, :cond_0

    .line 678
    new-instance v0, Lcom/android/settings/wifi/WifiDialog;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object v1, p0

    move-object v2, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/wifi/WifiDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/net/wifi/WifiManager;Lcom/android/settings/wifi/AccessPoint;ZZ)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    .line 679
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {v0, p0}, Lcom/android/settings/wifi/WifiDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 680
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiDialog;->show()V

    .line 682
    :cond_0
    return-void
.end method

.method private showProgressDialog(I)V
    .locals 7
    .parameter "wpsMode"

    .prologue
    const v5, 0x1d4c0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 522
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mProgressDialog:Lcom/sec/android/touchwiz/widget/TwProgressDialog;

    if-eqz v0, :cond_0

    .line 523
    const-string v0, "WifiSettings"

    const-string v1, "showProgressDialog(), dissmiss former dialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mProgressDialog:Lcom/sec/android/touchwiz/widget/TwProgressDialog;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->dismiss()V

    .line 527
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 530
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwProgressDialog;

    invoke-direct {v0, p0}, Lcom/sec/android/touchwiz/widget/TwProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mProgressDialog:Lcom/sec/android/touchwiz/widget/TwProgressDialog;

    .line 531
    iput v5, p0, Lcom/android/settings/wifi/WifiSettings;->mLapseTime:I

    .line 533
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mProgressDialog:Lcom/sec/android/touchwiz/widget/TwProgressDialog;

    const v1, 0x7f020054

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->setIcon(I)V

    .line 534
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mProgressDialog:Lcom/sec/android/touchwiz/widget/TwProgressDialog;

    invoke-virtual {v0, v3}, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->setProgressStyle(I)V

    .line 535
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mProgressDialog:Lcom/sec/android/touchwiz/widget/TwProgressDialog;

    const v1, 0x7f08038c

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    new-instance v2, Lcom/android/settings/wifi/WifiSettings$2;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/WifiSettings$2;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 551
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mProgressDialog:Lcom/sec/android/touchwiz/widget/TwProgressDialog;

    invoke-virtual {v0, p0}, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 553
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 554
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mProgressDialog:Lcom/sec/android/touchwiz/widget/TwProgressDialog;

    const v1, 0x7f080177

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->setTitle(I)V

    .line 555
    const-string v0, "%08d"

    new-array v1, v3, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/settings/wifi/WifiSettings;->mRandomPinNumber:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 556
    .local v6, eightDigitPin:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mProgressDialog:Lcom/sec/android/touchwiz/widget/TwProgressDialog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08017a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 562
    .end local v6           #eightDigitPin:Ljava/lang/String;
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mProgressDialog:Lcom/sec/android/touchwiz/widget/TwProgressDialog;

    invoke-virtual {v0, v4}, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->setProgress(I)V

    .line 563
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mProgressDialog:Lcom/sec/android/touchwiz/widget/TwProgressDialog;

    invoke-virtual {v0, v5}, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->setMax(I)V

    .line 564
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mProgressDialog:Lcom/sec/android/touchwiz/widget/TwProgressDialog;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->setProgressPercentVisibility(I)V

    .line 565
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mProgressDialog:Lcom/sec/android/touchwiz/widget/TwProgressDialog;

    invoke-virtual {v0, v4}, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->setProgressNumberVisibility(I)V

    .line 566
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mProgressDialog:Lcom/sec/android/touchwiz/widget/TwProgressDialog;

    const-string v1, "%2d:%2d"

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->setProgressNumberFormat(Ljava/lang/String;)V

    .line 568
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mProgressDialog:Lcom/sec/android/touchwiz/widget/TwProgressDialog;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->show()V

    .line 570
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_1

    .line 571
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 575
    :cond_1
    new-instance v0, Lcom/android/settings/wifi/WifiSettings$3;

    const-wide/32 v2, 0x1d8a8

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/wifi/WifiSettings$3;-><init>(Lcom/android/settings/wifi/WifiSettings;JJ)V

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSettings$3;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mTimer:Landroid/os/CountDownTimer;

    .line 587
    return-void

    .line 558
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mProgressDialog:Lcom/sec/android/touchwiz/widget/TwProgressDialog;

    const v1, 0x7f080175

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->setTitle(I)V

    .line 559
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mProgressDialog:Lcom/sec/android/touchwiz/widget/TwProgressDialog;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080179

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private showWpsToast(I)V
    .locals 4
    .parameter

    .prologue
    const-string v3, "WifiSettings"

    .line 903
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mProgressDialog:Lcom/sec/android/touchwiz/widget/TwProgressDialog;

    if-eqz v0, :cond_0

    .line 904
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->dismissProgressDialog()V

    .line 905
    const-string v0, "WifiSettings"

    const-string v0, "showWpsToast(), WPS FAIL"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    const v0, 0x7f08017e

    if-ne p1, v0, :cond_0

    .line 907
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->wpsCommandCancel()V

    .line 911
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mPowerManager:Landroid/os/PowerManager;

    const v1, 0x2000001a

    const-string v2, "WifiSettings"

    invoke-virtual {v0, v1, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWakeLockforToast:Landroid/os/PowerManager$WakeLock;

    .line 913
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 914
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWakeLockforToast:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 916
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 917
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 920
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWakeLockforToast:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 921
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWakeLockforToast:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 923
    :cond_2
    return-void
.end method

.method private updateAccessPoints()V
    .locals 9

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v8, "WifiSettings"

    .line 752
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 754
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    .line 755
    if-eqz v0, :cond_4

    .line 756
    iput v6, p0, Lcom/android/settings/wifi/WifiSettings;->mLastPriority:I

    .line 757
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 759
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    .line 763
    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    iget v4, p0, Lcom/android/settings/wifi/WifiSettings;->mLastPriority:I

    if-le v3, v4, :cond_1

    .line 764
    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    iput v3, p0, Lcom/android/settings/wifi/WifiSettings;->mLastPriority:I

    .line 768
    :cond_1
    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    if-nez v3, :cond_3

    .line 769
    const/4 v3, 0x2

    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    .line 774
    :cond_2
    :goto_1
    new-instance v3, Lcom/android/settings/wifi/AccessPoint;

    invoke-direct {v3, p0, v0}, Lcom/android/settings/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)V

    .line 775
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v3, v0, v4}, Lcom/android/settings/wifi/AccessPoint;->update(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo$DetailedState;)V

    .line 776
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 770
    :cond_3
    iget-boolean v3, p0, Lcom/android/settings/wifi/WifiSettings;->mResetNetworks:Z

    if-eqz v3, :cond_2

    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    if-ne v3, v7, :cond_2

    .line 771
    iput v6, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    goto :goto_1

    .line 780
    :cond_4
    const-string v0, "WifiSettings"

    const-string v0, "updateAccessPoints(), WifiConfigureation list updated"

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v0

    .line 783
    if-eqz v0, :cond_7

    .line 784
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    .line 786
    iget-object v1, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-object v1, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, v0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v4, "[IBSS]"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 792
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v5, v6

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/wifi/AccessPoint;

    .line 793
    invoke-virtual {v1, v0}, Lcom/android/settings/wifi/AccessPoint;->update(Landroid/net/wifi/ScanResult;)Z

    move-result v1

    if-eqz v1, :cond_9

    move v1, v7

    :goto_4
    move v5, v1

    .line 794
    goto :goto_3

    .line 797
    :cond_6
    if-nez v5, :cond_5

    .line 798
    new-instance v1, Lcom/android/settings/wifi/AccessPoint;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/net/wifi/ScanResult;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 802
    :cond_7
    const-string v0, "WifiSettings"

    const-string v0, "updateAccessPoints(), ScanResult list updated"

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAccessPoints:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0}, Lcom/android/settings/ProgressCategory;->removeAll()V

    .line 805
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAccessPoints:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0, v6}, Lcom/android/settings/ProgressCategory;->setProgress(Z)V

    .line 806
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/AccessPoint;

    .line 807
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mAccessPoints:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v2, v0}, Lcom/android/settings/ProgressCategory;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_5

    .line 809
    :cond_8
    return-void

    :cond_9
    move v1, v5

    goto :goto_4
.end method

.method private updateConnectionState(Landroid/net/NetworkInfo$DetailedState;Z)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const-string v5, "WifiSettings"

    .line 926
    const-string v0, "WifiSettings"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateConnectionState state("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")  hasError ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 929
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSettings$Scanner;->pause()V

    .line 996
    :cond_0
    :goto_0
    return-void

    .line 933
    :cond_1
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v0, :cond_6

    .line 934
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSettings$Scanner;->pause()V

    .line 937
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    iget-boolean v0, v0, Lcom/android/settings/wifi/WifiDialog;->retry:Z

    if-ne v0, v4, :cond_2

    .line 938
    const-string v0, "WifiSettings"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mDialog != null & Retry Popup : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    iget-boolean v1, v1, Lcom/android/settings/wifi/WifiDialog;->retry:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 939
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiDialog;->dismiss()V

    .line 949
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    .line 950
    if-eqz p1, :cond_3

    .line 951
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    .line 955
    :cond_3
    sget-object v0, Landroid/net/wifi/SupplicantState;->FOUR_WAY_HANDSHAKE:Landroid/net/wifi/SupplicantState;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->eventState:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v0, v1}, Landroid/net/wifi/SupplicantState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 956
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 957
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mLastAuthenticatingInfo:Landroid/net/wifi/WifiInfo;

    .line 959
    :cond_4
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mLastAuthenticatingInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v0, :cond_7

    .line 960
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAccessPoints:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0}, Lcom/android/settings/ProgressCategory;->getPreferenceCount()I

    move-result v0

    sub-int/2addr v0, v4

    move v1, v0

    :goto_2
    if-ltz v1, :cond_7

    .line 961
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mLastAuthenticatingInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAccessPoints:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0, v1}, Lcom/android/settings/ProgressCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/AccessPoint;

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-ne v2, v0, :cond_5

    .line 962
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAccessPoints:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0, v1}, Lcom/android/settings/ProgressCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/AccessPoint;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mLastAuthenticatingAp:Lcom/android/settings/wifi/AccessPoint;

    .line 963
    const-string v0, "WifiSettings"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "i  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " SSID:  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mLastAuthenticatingAp:Lcom/android/settings/wifi/AccessPoint;

    iget-object v2, v2, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    :cond_5
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_2

    .line 944
    :cond_6
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWpsInProgress:Z

    if-nez v0, :cond_2

    .line 945
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSettings$Scanner;->resume()V

    goto :goto_1

    .line 970
    :cond_7
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAccessPoints:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0}, Lcom/android/settings/ProgressCategory;->getPreferenceCount()I

    move-result v0

    sub-int/2addr v0, v4

    move v1, v0

    :goto_3
    if-ltz v1, :cond_8

    .line 971
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAccessPoints:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0, v1}, Lcom/android/settings/ProgressCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/AccessPoint;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v2, v3}, Lcom/android/settings/wifi/AccessPoint;->update(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo$DetailedState;)V

    .line 970
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_3

    .line 974
    :cond_8
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mResetNetworks:Z

    if-eqz v0, :cond_a

    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq p1, v0, :cond_9

    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq p1, v0, :cond_9

    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v0, :cond_a

    :cond_9
    if-nez p2, :cond_a

    .line 976
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->updateAccessPoints()V

    .line 977
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->enableNetworks()V

    .line 981
    :cond_a
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v0, :cond_b

    .line 982
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->resetRetryDialogVariable()V

    .line 985
    :cond_b
    if-eqz p2, :cond_c

    iget v0, p0, Lcom/android/settings/wifi/WifiSettings;->countForRetry:I

    if-lez v0, :cond_c

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v0, :cond_c

    .line 986
    iget v0, p0, Lcom/android/settings/wifi/WifiSettings;->eventError:I

    if-ne v0, v4, :cond_0

    .line 987
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mLastAuthenticatingAp:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v0, :cond_0

    .line 988
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mLastAuthenticatingAp:Lcom/android/settings/wifi/AccessPoint;

    invoke-direct {p0, v0, v4, v4}, Lcom/android/settings/wifi/WifiSettings;->showDialog(Lcom/android/settings/wifi/AccessPoint;ZZ)V

    goto/16 :goto_0

    .line 990
    :cond_c
    if-eqz p2, :cond_0

    iget v0, p0, Lcom/android/settings/wifi/WifiSettings;->countForRetry:I

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v0, :cond_0

    .line 991
    const-string v0, "WifiSettings"

    const-string v0, "enableNetworks()"

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->updateAccessPoints()V

    .line 993
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->enableNetworks()V

    goto/16 :goto_0
.end method

.method private updateWifiState(I)V
    .locals 1
    .parameter "state"

    .prologue
    .line 999
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 1000
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWpsInProgress:Z

    if-nez v0, :cond_0

    .line 1001
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSettings$Scanner;->resume()V

    .line 1003
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->updateAccessPoints()V

    .line 1011
    :goto_0
    return-void

    .line 1005
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSettings$Scanner;->pause()V

    .line 1006
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAccessPoints:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0}, Lcom/android/settings/ProgressCategory;->removeAll()V

    .line 1008
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    goto :goto_0
.end method

.method private updateWpsEvent(I)V
    .locals 4
    .parameter

    .prologue
    const v2, 0x7f08017d

    const-string v3, "WifiSettings"

    .line 872
    const-string v0, "WifiSettings"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleWpsEvent: eventType - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSettings$Scanner;->resume()V

    .line 875
    packed-switch p1, :pswitch_data_0

    .line 900
    :cond_0
    :goto_0
    return-void

    .line 877
    :pswitch_0
    const-string v0, "WifiSettings"

    const-string v0, "WPS Success"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mProgressDialog:Lcom/sec/android/touchwiz/widget/TwProgressDialog;

    if-eqz v0, :cond_0

    .line 879
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->dismissProgressDialog()V

    .line 880
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 881
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    .line 886
    :pswitch_1
    invoke-direct {p0, v2}, Lcom/android/settings/wifi/WifiSettings;->showWpsToast(I)V

    goto :goto_0

    .line 889
    :pswitch_2
    const v0, 0x7f08017e

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->showWpsToast(I)V

    goto :goto_0

    .line 892
    :pswitch_3
    const v0, 0x7f08017c

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->showWpsToast(I)V

    goto :goto_0

    .line 895
    :pswitch_4
    invoke-direct {p0, v2}, Lcom/android/settings/wifi/WifiSettings;->showWpsToast(I)V

    goto :goto_0

    .line 875
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private wpsCommandCancel()V
    .locals 2

    .prologue
    .line 668
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSettings$Scanner;->resume()V

    .line 669
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->wpsCommandCancel()Z

    .line 670
    const-string v0, "WifiSettings"

    const-string v1, "wpsCommandCancel()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    return-void
.end method

.method private wpsPbcConnect()V
    .locals 2

    .prologue
    .line 640
    const-string v0, "WifiSettings"

    const-string v1, "wpsPbcConnect"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSettings$Scanner;->pause()V

    .line 642
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWpsInProgress:Z

    .line 643
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->wpsPbcConnect()Z

    .line 645
    return-void
.end method

.method private wpsPinConnect(Lcom/android/settings/wifi/AccessPoint;)Z
    .locals 5
    .parameter "accessPoint"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "WifiSettings"

    .line 649
    const-string v1, "WifiSettings"

    const-string v1, "wpsPinConnect"

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;

    invoke-virtual {v1}, Lcom/android/settings/wifi/WifiSettings$Scanner;->pause()V

    .line 651
    iput-boolean v2, p0, Lcom/android/settings/wifi/WifiSettings;->mWpsInProgress:Z

    .line 652
    iget-object v0, p1, Lcom/android/settings/wifi/AccessPoint;->bssid:Ljava/lang/String;

    .line 653
    .local v0, bssid:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->wpsPinConnect(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/settings/wifi/WifiSettings;->mRandomPinNumber:I

    .line 654
    iget v1, p0, Lcom/android/settings/wifi/WifiSettings;->mRandomPinNumber:I

    if-gtz v1, :cond_0

    .line 656
    const-string v1, "WifiSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WPS_PIN: pin value error, value is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/wifi/WifiSettings;->mRandomPinNumber:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    iput v3, p0, Lcom/android/settings/wifi/WifiSettings;->mRandomPinNumber:I

    .line 658
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->wpsCommandCancel()V

    move v1, v3

    .line 661
    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .parameter "dialogInterface"
    .parameter "button"

    .prologue
    const/4 v6, -0x3

    const/4 v5, 0x0

    const/4 v4, -0x1

    const-string v7, "WifiSettings"

    .line 424
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    iget v3, v3, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-eq v3, v4, :cond_1

    const/4 v3, 0x1

    move v1, v3

    .line 426
    .local v1, forgetable:Z
    :goto_0
    if-ne p2, v6, :cond_2

    if-eqz v1, :cond_2

    .line 427
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    iget v3, v3, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    invoke-direct {p0, v3}, Lcom/android/settings/wifi/WifiSettings;->forget(I)V

    .line 429
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mAccessPoints:Lcom/android/settings/ProgressCategory;

    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v3, v4}, Lcom/android/settings/ProgressCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 506
    :cond_0
    :goto_1
    return-void

    .end local v1           #forgetable:Z
    :cond_1
    move v1, v5

    .line 424
    goto :goto_0

    .line 430
    .restart local v1       #forgetable:Z
    :cond_2
    if-ne p2, v4, :cond_b

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    if-eqz v3, :cond_b

    .line 431
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {v3}, Lcom/android/settings/wifi/WifiDialog;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 433
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    if-nez v0, :cond_3

    .line 434
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/wifi/WifiSettings;->requireKeyStore(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 435
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    iget v3, v3, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    invoke-direct {p0, v3}, Lcom/android/settings/wifi/WifiSettings;->connect(I)V

    .line 437
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->resetRetryDialogVariable()V

    goto :goto_1

    .line 440
    :cond_3
    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-eq v3, v4, :cond_4

    .line 441
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v3, :cond_0

    .line 442
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v0}, Landroid/net/wifi/WifiManager;->updateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    .line 443
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->saveNetworks()V

    goto :goto_1

    .line 448
    :cond_4
    iget v3, p0, Lcom/android/settings/wifi/WifiSettings;->networkIdforRetry:I

    if-eq v3, v4, :cond_7

    .line 449
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->configForRetry:Landroid/net/wifi/WifiConfiguration;

    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    iput-object v4, v3, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 450
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->configForRetry:Landroid/net/wifi/WifiConfiguration;

    iget v4, p0, Lcom/android/settings/wifi/WifiSettings;->networkIdforRetry:I

    iput v4, v3, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 451
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget v4, p0, Lcom/android/settings/wifi/WifiSettings;->networkIdforRetry:I

    invoke-virtual {v3, v4, v5}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    .line 452
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->configForRetry:Landroid/net/wifi/WifiConfiguration;

    .line 453
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    iget-boolean v3, v3, Lcom/android/settings/wifi/WifiDialog;->edit:Z

    if-nez v3, :cond_5

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->requireKeyStore(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 454
    :cond_5
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v0}, Landroid/net/wifi/WifiManager;->updateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    .line 455
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->saveNetworks()V

    goto :goto_1

    .line 457
    :cond_6
    iget v3, p0, Lcom/android/settings/wifi/WifiSettings;->networkIdforRetry:I

    invoke-direct {p0, v3}, Lcom/android/settings/wifi/WifiSettings;->connect(I)V

    goto :goto_1

    .line 469
    :cond_7
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v0}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v2

    .line 471
    .local v2, networkId:I
    iput v2, p0, Lcom/android/settings/wifi/WifiSettings;->networkIdforRetry:I

    .line 472
    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->configForRetry:Landroid/net/wifi/WifiConfiguration;

    .line 475
    if-ne v2, v4, :cond_8

    .line 476
    const v3, 0x7f08056f

    invoke-static {p0, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 479
    :cond_8
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v2, v5}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    .line 480
    iput v2, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 481
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    iget-boolean v3, v3, Lcom/android/settings/wifi/WifiDialog;->edit:Z

    if-nez v3, :cond_9

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->requireKeyStore(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 482
    :cond_9
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->saveNetworks()V

    .line 483
    invoke-direct {p0, v2}, Lcom/android/settings/wifi/WifiSettings;->connect(I)V

    goto/16 :goto_1

    .line 485
    :cond_a
    invoke-direct {p0, v2}, Lcom/android/settings/wifi/WifiSettings;->connect(I)V

    goto/16 :goto_1

    .line 491
    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v2           #networkId:I
    :cond_b
    if-ne p2, v6, :cond_d

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    if-eqz v3, :cond_d

    .line 493
    const-string v3, "WifiSettings"

    const-string v3, "onClick() WPS_PIN"

    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    invoke-direct {p0, v3}, Lcom/android/settings/wifi/WifiSettings;->wpsPinConnect(Lcom/android/settings/wifi/AccessPoint;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 495
    const/4 v3, 0x2

    invoke-direct {p0, v3}, Lcom/android/settings/wifi/WifiSettings;->showProgressDialog(I)V

    goto/16 :goto_1

    .line 497
    :cond_c
    const v3, 0x7f08017d

    invoke-direct {p0, v3}, Lcom/android/settings/wifi/WifiSettings;->showWpsToast(I)V

    goto/16 :goto_1

    .line 502
    :cond_d
    const-string v3, "WifiSettings"

    const-string v3, "button == WifiDialog.BUTTON_NEGATIVE"

    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->resetRetryDialogVariable()V

    goto/16 :goto_1
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .parameter "item"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 317
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    if-nez v2, :cond_0

    .line 318
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    .line 357
    :goto_0
    return v2

    .line 320
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 357
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    goto :goto_0

    .line 322
    :pswitch_0
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    iget v2, v2, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 323
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/wifi/WifiSettings;->requireKeyStore(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 324
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    iget v2, v2, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    invoke-direct {p0, v2}, Lcom/android/settings/wifi/WifiSettings;->connect(I)V

    :cond_1
    :goto_1
    move v2, v4

    .line 337
    goto :goto_0

    .line 326
    :cond_2
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    iget v2, v2, Lcom/android/settings/wifi/AccessPoint;->security:I

    if-nez v2, :cond_3

    .line 328
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 329
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    iget-object v2, v2, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/settings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 330
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v5}, Ljava/util/BitSet;->set(I)V

    .line 331
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v0}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v1

    .line 332
    .local v1, networkId:I
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v1, v5}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    .line 333
    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WifiSettings;->connect(I)V

    goto :goto_1

    .line 335
    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v1           #networkId:I
    :cond_3
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    invoke-direct {p0, v2, v5}, Lcom/android/settings/wifi/WifiSettings;->showDialog(Lcom/android/settings/wifi/AccessPoint;Z)V

    goto :goto_1

    .line 339
    :pswitch_1
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    iget v2, v2, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    invoke-direct {p0, v2}, Lcom/android/settings/wifi/WifiSettings;->forget(I)V

    .line 341
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mAccessPoints:Lcom/android/settings/ProgressCategory;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v2, v3}, Lcom/android/settings/ProgressCategory;->removePreference(Landroid/preference/Preference;)Z

    move v2, v4

    .line 342
    goto :goto_0

    .line 344
    :pswitch_2
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    invoke-direct {p0, v2, v4}, Lcom/android/settings/wifi/WifiSettings;->showDialog(Lcom/android/settings/wifi/AccessPoint;Z)V

    move v2, v4

    .line 345
    goto :goto_0

    .line 348
    :pswitch_3
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    invoke-direct {p0, v2}, Lcom/android/settings/wifi/WifiSettings;->wpsPinConnect(Lcom/android/settings/wifi/AccessPoint;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 349
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/android/settings/wifi/WifiSettings;->showProgressDialog(I)V

    :goto_2
    move v2, v4

    .line 353
    goto :goto_0

    .line 351
    :cond_4
    const v2, 0x7f08017d

    invoke-direct {p0, v2}, Lcom/android/settings/wifi/WifiSettings;->showWpsToast(I)V

    goto :goto_2

    .line 320
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 168
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 170
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 171
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mPowerManager:Landroid/os/PowerManager;

    .line 172
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mPowerManager:Landroid/os/PowerManager;

    const/16 v1, 0x1a

    const-string v2, "WifiSettings"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 174
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "only_access_points"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    const v0, 0x7f040033

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->addPreferencesFromResource(I)V

    .line 192
    :goto_0
    const-string v0, "access_points"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/ProgressCategory;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAccessPoints:Lcom/android/settings/ProgressCategory;

    .line 193
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAccessPoints:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0, v3}, Lcom/android/settings/ProgressCategory;->setOrderingAsAdded(Z)V

    .line 194
    const-string v0, "add_network"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAddNetwork:Landroid/preference/Preference;

    .line 196
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->registerForContextMenu(Landroid/view/View;)V

    .line 197
    return-void

    .line 179
    :cond_0
    const v0, 0x7f040039

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->addPreferencesFromResource(I)V

    .line 180
    const-string v0, "wps_button"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWpsButton:Landroid/preference/Preference;

    .line 184
    new-instance v1, Lcom/android/settings/wifi/WifiEnabler;

    const-string v0, "enable_wifi"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/wifi/WifiEnabler;-><init>(Landroid/content/Context;Landroid/preference/CheckBoxPreference;)V

    iput-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    .line 186
    const-string v0, "notify_open_networks"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mNotifyOpenNetworks:Landroid/preference/CheckBoxPreference;

    .line 188
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mNotifyOpenNetworks:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_networks_available_notification_on"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_1

    move v1, v4

    :goto_1
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_1
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 8
    .parameter "menu"
    .parameter "view"
    .parameter "info"

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 283
    instance-of v3, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    if-eqz v3, :cond_2

    .line 284
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getListView()Landroid/widget/ListView;

    move-result-object v3

    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .end local p3
    iget v4, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/preference/Preference;

    .line 287
    .local v2, preference:Landroid/preference/Preference;
    instance-of v3, v2, Lcom/android/settings/wifi/AccessPoint;

    if-eqz v3, :cond_2

    .line 288
    check-cast v2, Lcom/android/settings/wifi/AccessPoint;

    .end local v2           #preference:Landroid/preference/Preference;
    iput-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    .line 289
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/settings/wifi/AccessPoint;->getLevel()I

    move-result v3

    if-eq v3, v7, :cond_3

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/settings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    if-nez v3, :cond_3

    move v0, v6

    .line 290
    .local v0, connectable:Z
    :goto_0
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    iget v3, v3, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-eq v3, v7, :cond_4

    move v1, v6

    .line 292
    .local v1, forgetable:Z
    :goto_1
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    iget-object v3, v3, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-interface {p1, v3}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 293
    if-eqz v0, :cond_0

    .line 294
    const/4 v3, 0x3

    const v4, 0x7f080172

    invoke-interface {p1, v5, v3, v5, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 296
    :cond_0
    if-eqz v1, :cond_1

    .line 298
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    iget-object v3, v3, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    const-string v4, "T wifi zone"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 299
    const/4 v3, 0x4

    const v4, 0x7f080173

    invoke-interface {p1, v5, v3, v5, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 300
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/settings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq v3, v4, :cond_1

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    iget v3, v3, Lcom/android/settings/wifi/AccessPoint;->security:I

    if-eqz v3, :cond_1

    .line 302
    const/4 v3, 0x5

    const v4, 0x7f080174

    invoke-interface {p1, v5, v3, v5, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 308
    :cond_1
    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    iget-boolean v3, v3, Lcom/android/settings/wifi/AccessPoint;->wpsPinMode:Z

    if-eqz v3, :cond_2

    .line 309
    const/4 v3, 0x6

    const v4, 0x7f080177

    invoke-interface {p1, v5, v3, v6, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 313
    .end local v0           #connectable:Z
    .end local v1           #forgetable:Z
    :cond_2
    return-void

    :cond_3
    move v0, v5

    .line 289
    goto :goto_0

    .restart local v0       #connectable:Z
    :cond_4
    move v1, v5

    .line 290
    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    .line 248
    const/4 v0, 0x1

    const v1, 0x7f080170

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020033

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 250
    const/4 v0, 0x2

    const v1, 0x7f080171

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080042

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 252
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    const-string v1, "WifiSettings"

    .line 613
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 614
    const-string v0, "WifiSettings"

    const-string v0, "onDismiss(), dismiss mDialog"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    .line 624
    :cond_0
    :goto_0
    return-void

    .line 616
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mProgressDialog:Lcom/sec/android/touchwiz/widget/TwProgressDialog;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 617
    const-string v0, "WifiSettings"

    const-string v0, "onDismiss(), dismiss mProgressDialog"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWpsInProgress:Z

    if-eqz v0, :cond_0

    .line 619
    const-string v0, "WifiSettings"

    const-string v0, "onDismiss(), mWpsInProgress is true"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->dismissProgressDialog()V

    .line 621
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->wpsCommandCancel()V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 265
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 278
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 267
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSettings$Scanner;->resume()V

    .line 269
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAccessPoints:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0, v2}, Lcom/android/settings/ProgressCategory;->setProgress(Z)V

    :cond_0
    move v0, v2

    .line 271
    goto :goto_0

    .line 273
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/wifi/AdvancedSettings;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->startActivity(Landroid/content/Intent;)V

    move v0, v2

    .line 274
    goto :goto_0

    .line 265
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 224
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 225
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiEnabler;->pause()V

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 229
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSettings$Scanner;->pause()V

    .line 236
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mResetNetworks:Z

    if-eqz v0, :cond_1

    .line 237
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->enableNetworks()V

    .line 239
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 240
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 242
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->dismissProgressDialog()V

    .line 243
    const-string v0, "WifiSettings"

    const-string v1, "onPause() finish"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .parameter "screen"
    .parameter "preference"

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 362
    instance-of v0, p2, Lcom/android/settings/wifi/AccessPoint;

    if-eqz v0, :cond_1

    .line 363
    check-cast p2, Lcom/android/settings/wifi/AccessPoint;

    .end local p2
    iput-object p2, p0, Lcom/android/settings/wifi/WifiSettings;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    .line 378
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    invoke-direct {p0, v0, v4}, Lcom/android/settings/wifi/WifiSettings;->showDialog(Lcom/android/settings/wifi/AccessPoint;Z)V

    :cond_0
    :goto_0
    move v0, v3

    .line 407
    :goto_1
    return v0

    .line 379
    .restart local p2
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAddNetwork:Landroid/preference/Preference;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 380
    iput-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    .line 381
    invoke-direct {p0, v1, v3}, Lcom/android/settings/wifi/WifiSettings;->showDialog(Lcom/android/settings/wifi/AccessPoint;Z)V

    goto :goto_0

    .line 384
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWpsButton:Landroid/preference/Preference;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 385
    iput-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    .line 386
    invoke-direct {p0, v3}, Lcom/android/settings/wifi/WifiSettings;->showProgressDialog(I)V

    .line 387
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->wpsPbcConnect()V

    goto :goto_0

    .line 390
    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mNotifyOpenNetworks:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 391
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_networks_available_notification_on"

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mNotifyOpenNetworks:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v3

    :goto_2
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_4
    move v2, v4

    goto :goto_2

    .line 396
    :cond_5
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "enable_wifi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 405
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x1

    .line 257
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 258
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 259
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 260
    return v2
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 201
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 202
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiEnabler;->resume()V

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/wifi/WifiSettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 206
    iget v0, p0, Lcom/android/settings/wifi/WifiSettings;->mKeyStoreNetworkId:I

    if-eq v0, v2, :cond_1

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    invoke-virtual {v0}, Landroid/security/KeyStore;->test()I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 207
    iget v0, p0, Lcom/android/settings/wifi/WifiSettings;->mKeyStoreNetworkId:I

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->connect(I)V

    .line 209
    :cond_1
    iput v2, p0, Lcom/android/settings/wifi/WifiSettings;->mKeyStoreNetworkId:I

    .line 210
    const-string v0, "WifiSettings"

    const-string v1, "onResume() finish"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->resetRetryDialogVariable()V

    .line 216
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isDirectConnected()Z

    move-result v0

    if-nez v0, :cond_2

    .line 217
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v3}, Landroid/net/wifi/WifiManager;->setSupplicantAutoScan(Z)Z

    .line 220
    :cond_2
    return-void
.end method
