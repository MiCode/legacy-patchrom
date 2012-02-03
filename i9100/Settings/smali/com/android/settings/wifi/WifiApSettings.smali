.class public Lcom/android/settings/wifi/WifiApSettings;
.super Landroid/preference/PreferenceActivity;
.source "WifiApSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private mCreateNetwork:Landroid/preference/Preference;

.field private mDialog:Lcom/android/settings/wifi/WifiApDialog;

.field private mEnableWifiAp:Landroid/preference/CheckBoxPreference;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSecurityType:[Ljava/lang/String;

.field private mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;

.field private mWifiConfig:Landroid/net/wifi/WifiConfiguration;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 95
    new-instance v0, Lcom/android/settings/wifi/WifiApSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiApSettings$1;-><init>(Lcom/android/settings/wifi/WifiApSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/WifiApSettings;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiApSettings;->handleWifiApStateChanged(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/WifiApSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mEnableWifiAp:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/WifiApSettings;)Lcom/android/settings/wifi/WifiApEnabler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;

    return-object v0
.end method

.method private handleWifiApStateChanged(I)V
    .locals 1
    .parameter "state"

    .prologue
    .line 344
    packed-switch p1, :pswitch_data_0

    .line 353
    :cond_0
    :goto_0
    return-void

    .line 347
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_0

    .line 344
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public generateDefaultSSID()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x4

    .line 305
    const-string v7, "gsm.sim.msisdn"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 306
    .local v3, number:Ljava/lang/String;
    const v7, 0x7f0801ea

    invoke-virtual {p0, v7}, Lcom/android/settings/wifi/WifiApSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 307
    .local v6, tempSSID:Ljava/lang/String;
    const-string v1, ""

    .line 309
    .local v1, defaultSsid:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-lt v7, v9, :cond_0

    .line 310
    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v7

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v8, v9

    invoke-static {v7, v8, v9}, Ljava/lang/String;->copyValueOf([CII)Ljava/lang/String;

    move-result-object v2

    .line 311
    .local v2, last4digitNum:Ljava/lang/String;
    invoke-virtual {v6, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 318
    .end local v2           #last4digitNum:Ljava/lang/String;
    :goto_0
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 319
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    iput-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 320
    iget-object v7, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iput-object v1, v7, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 321
    iget-object v7, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    const-string v8, ""

    iput-object v8, v7, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 322
    iget-object v7, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iput-boolean v10, v7, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 323
    iget-object v7, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v7, v7, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v7, v10}, Ljava/util/BitSet;->set(I)V

    .line 325
    iget-object v7, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v7

    const/4 v8, 0x3

    if-ne v7, v8, :cond_1

    .line 326
    iget-object v7, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v8, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 330
    :goto_1
    return-void

    .line 313
    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    :cond_0
    new-instance v4, Ljava/util/Random;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    invoke-direct {v4, v7, v8}, Ljava/util/Random;-><init>(J)V

    .line 314
    .local v4, rnd:Ljava/util/Random;
    const/16 v7, 0x2327

    invoke-virtual {v4, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    add-int/lit16 v5, v7, 0x3e8

    .line 315
    .local v5, sequence:I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 328
    .end local v4           #rnd:Ljava/util/Random;
    .end local v5           #sequence:I
    .restart local v0       #config:Landroid/net/wifi/WifiConfiguration;
    :cond_1
    iget-object v7, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v8, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v7, v8}, Landroid/net/wifi/WifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    goto :goto_1
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialogInterface"
    .parameter "button"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 270
    const/4 v0, -0x1

    if-ne p2, v0, :cond_3

    .line 271
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mDialog:Lcom/android/settings/wifi/WifiApDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiApDialog;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 272
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 278
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0, v1, v4}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 283
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiApEnabler;->updateConfigSummary(Landroid/net/wifi/WifiConfiguration;)V

    .line 288
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mCreateNetwork:Landroid/preference/Preference;

    const v1, 0x7f0801e9

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiApSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v3, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/settings/wifi/WifiApSettings;->mSecurityType:[Ljava/lang/String;

    aget-object v3, v3, v4

    :goto_1
    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 300
    :cond_0
    :goto_2
    return-void

    .line 285
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    goto :goto_0

    .line 288
    :cond_2
    iget-object v3, p0, Lcom/android/settings/wifi/WifiApSettings;->mSecurityType:[Ljava/lang/String;

    aget-object v3, v3, v5

    goto :goto_1

    .line 295
    :cond_3
    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mDialog:Lcom/android/settings/wifi/WifiApDialog;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiApDialog;->setConfig(Landroid/net/wifi/WifiConfiguration;)V

    goto :goto_2
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const v3, 0x7f0801e9

    const/4 v2, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 124
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 126
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiApSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 127
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 128
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050018

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mSecurityType:[Ljava/lang/String;

    .line 130
    const v0, 0x7f040035

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiApSettings;->addPreferencesFromResource(I)V

    .line 132
    const-string v0, "wifi_ap_ssid_and_security"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiApSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mCreateNetwork:Landroid/preference/Preference;

    .line 133
    const-string v0, "enable_wifi_ap"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiApSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mEnableWifiAp:Landroid/preference/CheckBoxPreference;

    .line 135
    new-instance v0, Lcom/android/settings/wifi/WifiApEnabler;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mEnableWifiAp:Landroid/preference/CheckBoxPreference;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/wifi/WifiApEnabler;-><init>(Landroid/content/Context;Landroid/preference/CheckBoxPreference;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;

    .line 137
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-nez v0, :cond_0

    .line 140
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApSettings;->generateDefaultSSID()V

    .line 141
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mCreateNetwork:Landroid/preference/Preference;

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/WifiApSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/android/settings/wifi/WifiApSettings;->mSecurityType:[Ljava/lang/String;

    aget-object v3, v3, v4

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 150
    :goto_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mIntentFilter:Landroid/content/IntentFilter;

    .line 151
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 152
    return-void

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mCreateNetwork:Landroid/preference/Preference;

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/WifiApSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v3, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/wifi/WifiApSettings;->mSecurityType:[Ljava/lang/String;

    aget-object v3, v3, v5

    :goto_1
    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/settings/wifi/WifiApSettings;->mSecurityType:[Ljava/lang/String;

    aget-object v3, v3, v4

    goto :goto_1
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter "id"

    .prologue
    const v2, 0x7f08038b

    const v3, 0x7f08057f

    .line 156
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 157
    new-instance v0, Lcom/android/settings/wifi/WifiApDialog;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0, p0, p0, v1}, Lcom/android/settings/wifi/WifiApDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/net/wifi/WifiConfiguration;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mDialog:Lcom/android/settings/wifi/WifiApDialog;

    .line 158
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mDialog:Lcom/android/settings/wifi/WifiApDialog;

    .line 202
    :goto_0
    return-object v0

    .line 160
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 161
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0801ee

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/wifi/WifiApSettings$2;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/WifiApSettings$2;-><init>(Lcom/android/settings/wifi/WifiApSettings;)V

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 169
    :cond_1
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    .line 170
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0801f0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080002

    new-instance v2, Lcom/android/settings/wifi/WifiApSettings$4;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/WifiApSettings$4;-><init>(Lcom/android/settings/wifi/WifiApSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080003

    new-instance v2, Lcom/android/settings/wifi/WifiApSettings$3;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/WifiApSettings$3;-><init>(Lcom/android/settings/wifi/WifiApSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 186
    :cond_2
    const/16 v0, 0x9

    if-ne p1, v0, :cond_3

    .line 187
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0801ef

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/wifi/WifiApSettings$6;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/WifiApSettings$6;-><init>(Lcom/android/settings/wifi/WifiApSettings;)V

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0800dd

    new-instance v2, Lcom/android/settings/wifi/WifiApSettings$5;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/WifiApSettings$5;-><init>(Lcom/android/settings/wifi/WifiApSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 202
    :cond_3
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 214
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 215
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiApEnabler;->pause()V

    .line 216
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiApSettings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 217
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7
    .parameter "screen"
    .parameter "preference"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 239
    iget-object v3, p0, Lcom/android/settings/wifi/WifiApSettings;->mCreateNetwork:Landroid/preference/Preference;

    invoke-virtual {p2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 240
    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/WifiApSettings;->showDialog(I)V

    .line 266
    :cond_0
    :goto_0
    return v5

    .line 242
    :cond_1
    iget-object v3, p0, Lcom/android/settings/wifi/WifiApSettings;->mEnableWifiAp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/settings/wifi/WifiApSettings;->mEnableWifiAp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-nez v3, :cond_6

    .line 243
    iget-object v3, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v2

    .line 245
    .local v2, wifiState:I
    const/4 v0, 0x0

    .line 246
    .local v0, isNoUsim:Z
    const-string v3, "phone"

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/WifiApSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 248
    .local v1, telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_2

    .line 249
    const/4 v0, 0x0

    .line 254
    :goto_1
    if-eqz v0, :cond_3

    .line 255
    invoke-virtual {p0, v6}, Lcom/android/settings/wifi/WifiApSettings;->showDialog(I)V

    goto :goto_0

    .line 251
    :cond_2
    const/4 v0, 0x1

    goto :goto_1

    .line 256
    :cond_3
    if-eq v2, v6, :cond_4

    const/4 v3, 0x3

    if-ne v2, v3, :cond_5

    .line 258
    :cond_4
    const/4 v3, 0x4

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/WifiApSettings;->showDialog(I)V

    goto :goto_0

    .line 260
    :cond_5
    const/16 v3, 0x9

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/WifiApSettings;->showDialog(I)V

    goto :goto_0

    .line 262
    .end local v0           #isNoUsim:Z
    .end local v1           #telephonyManager:Landroid/telephony/TelephonyManager;
    .end local v2           #wifiState:I
    :cond_6
    iget-object v3, p0, Lcom/android/settings/wifi/WifiApSettings;->mEnableWifiAp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/wifi/WifiApSettings;->mEnableWifiAp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 263
    iget-object v3, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/settings/wifi/WifiApEnabler;->setEnableWifiAP(Z)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 207
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 208
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiApEnabler;->resume()V

    .line 209
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/wifi/WifiApSettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 210
    return-void
.end method

.method protected onStop()V
    .locals 4

    .prologue
    const-string v3, "onStop() Dialog is not null. dismiss "

    const-string v2, "WifiApSettings"

    .line 222
    const-string v0, "WifiApSettings"

    const-string v0, "onStop()"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStop()V

    .line 225
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mDialog:Lcom/android/settings/wifi/WifiApDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mDialog:Lcom/android/settings/wifi/WifiApDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiApDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    const-string v0, "WifiApSettings"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStop() Dialog is not null. dismiss "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mDialog:Lcom/android/settings/wifi/WifiApDialog;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    const-string v0, "WifiApSettings"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStop() Dialog is not null. dismiss "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mDialog:Lcom/android/settings/wifi/WifiApDialog;

    invoke-virtual {v1}, Lcom/android/settings/wifi/WifiApDialog;->getSecuritySpinner()Landroid/widget/Spinner;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mDialog:Lcom/android/settings/wifi/WifiApDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiApDialog;->getSecuritySpinner()Landroid/widget/Spinner;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mDialog:Lcom/android/settings/wifi/WifiApDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiApDialog;->getSecuritySpinner()Landroid/widget/Spinner;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSpinnerDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 229
    const-string v0, "WifiApSettings"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPause() Spinner Dialog is not null. dismiss "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mDialog:Lcom/android/settings/wifi/WifiApDialog;

    invoke-virtual {v1}, Lcom/android/settings/wifi/WifiApDialog;->getSecuritySpinner()Landroid/widget/Spinner;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSpinnerDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mDialog:Lcom/android/settings/wifi/WifiApDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiApDialog;->getSecuritySpinner()Landroid/widget/Spinner;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSpinnerDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 231
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mDialog:Lcom/android/settings/wifi/WifiApDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiApDialog;->dismiss()V

    .line 234
    :cond_0
    return-void
.end method

.method public showDisconectProgressDialog()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 334
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 335
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 336
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 337
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 338
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mProgressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f0801f1

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiApSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 339
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 340
    return-void
.end method
