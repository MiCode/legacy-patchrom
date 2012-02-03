.class public Lcom/android/settings/wifi/AdvancedSettings;
.super Landroid/preference/PreferenceActivity;
.source "AdvancedSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static DEBUGGABLE:I


# instance fields
.field private mAddIwlanNetwork:Landroid/preference/Preference;

.field private mIwlanDialog:Lcom/android/settings/wifi/IwlanDialog;

.field private mPreferenceKeys:[Ljava/lang/String;

.field private mSelectedIwlanNetwork:Lcom/android/settings/wifi/IwlanNetwork;

.field private mSettingNames:[Ljava/lang/String;

.field private mUseStaticIpCheckBox:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 48
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 71
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "wifi_http_proxy"

    aput-object v1, v0, v3

    const-string v1, "wifi_static_ip"

    aput-object v1, v0, v4

    const-string v1, "wifi_static_gateway"

    aput-object v1, v0, v5

    const-string v1, "wifi_static_netmask"

    aput-object v1, v0, v6

    const-string v1, "wifi_static_dns1"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "wifi_static_dns2"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/settings/wifi/AdvancedSettings;->mSettingNames:[Ljava/lang/String;

    .line 77
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "wifi_http_proxy"

    aput-object v1, v0, v3

    const-string v1, "ip_address"

    aput-object v1, v0, v4

    const-string v1, "gateway"

    aput-object v1, v0, v5

    const-string v1, "netmask"

    aput-object v1, v0, v6

    const-string v1, "dns1"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "dns2"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/settings/wifi/AdvancedSettings;->mPreferenceKeys:[Ljava/lang/String;

    return-void
.end method

.method private initNumChannelsPreference()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 200
    const-string v7, "num_channels"

    invoke-virtual {p0, v7}, Lcom/android/settings/wifi/AdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/ListPreference;

    .line 201
    .local v4, pref:Landroid/preference/ListPreference;
    invoke-virtual {v4, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 203
    const-string v7, "wifi"

    invoke-virtual {p0, v7}, Lcom/android/settings/wifi/AdvancedSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/WifiManager;

    .line 209
    .local v6, wifiManager:Landroid/net/wifi/WifiManager;
    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getValidChannelCounts()[I

    move-result-object v5

    .line 210
    .local v5, validChannelCounts:[I
    if-nez v5, :cond_1

    .line 211
    const v7, 0x7f0801b7

    invoke-static {p0, v7, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 213
    invoke-virtual {v4, v10}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 231
    :cond_0
    :goto_0
    return-void

    .line 216
    :cond_1
    array-length v7, v5

    new-array v0, v7, [Ljava/lang/String;

    .line 217
    .local v0, entries:[Ljava/lang/String;
    array-length v7, v5

    new-array v1, v7, [Ljava/lang/String;

    .line 219
    .local v1, entryValues:[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v7, v5

    if-ge v2, v7, :cond_2

    .line 220
    aget v7, v5, v2

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v2

    .line 221
    const v7, 0x7f0801b8

    new-array v8, v11, [Ljava/lang/Object;

    aget v9, v5, v2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-virtual {p0, v7, v8}, Lcom/android/settings/wifi/AdvancedSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v2

    .line 219
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 224
    :cond_2
    invoke-virtual {v4, v0}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 225
    invoke-virtual {v4, v1}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 226
    invoke-virtual {v4, v11}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 227
    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getNumAllowedChannels()I

    move-result v3

    .line 228
    .local v3, numChannels:I
    if-ltz v3, :cond_0

    .line 229
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private initSleepPolicyPreference()V
    .locals 5

    .prologue
    .line 234
    const-string v2, "sleep_policy"

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/AdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    .line 235
    .local v0, pref:Landroid/preference/ListPreference;
    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 236
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_sleep_policy"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 238
    .local v1, value:I
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 239
    return-void
.end method

.method private isIpAddress(Ljava/lang/String;)Z
    .locals 2
    .parameter "value"

    .prologue
    .line 332
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 333
    const/4 v1, 0x1

    .line 337
    :goto_0
    return v1

    .line 336
    :cond_0
    const-string v1, "(([2][5][0-5]|[2][0-4][0-9]|[0-1][0-9][0-9]|[0-9][0-9]|[0-9])\\.){3}([2][5][0-5]|[2][0-4][0-9]|[0-1][0-9][0-9]|[0-9][0-9]|[0-9])"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 337
    .local v0, validIp:Ljava/util/regex/Pattern;
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    goto :goto_0
.end method

.method private refreshWifiInfo()V
    .locals 15

    .prologue
    .line 446
    const-string v8, "wifi"

    invoke-virtual {p0, v8}, Lcom/android/settings/wifi/AdvancedSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/WifiManager;

    .line 447
    .local v7, wifiManager:Landroid/net/wifi/WifiManager;
    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v4

    .line 449
    .local v4, wifiInfo:Landroid/net/wifi/WifiInfo;
    const-string v8, "mac_address"

    invoke-virtual {p0, v8}, Lcom/android/settings/wifi/AdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    .line 450
    .local v6, wifiMacAddressPref:Landroid/preference/Preference;
    if-nez v4, :cond_2

    const/4 v8, 0x0

    move-object v3, v8

    .line 451
    .local v3, macAddress:Ljava/lang/String;
    :goto_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    move-object v8, v3

    :goto_1
    invoke-virtual {v6, v8}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 454
    const-string v8, "current_ip_address"

    invoke-virtual {p0, v8}, Lcom/android/settings/wifi/AdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 455
    .local v5, wifiIpAddressPref:Landroid/preference/Preference;
    const/4 v2, 0x0

    .line 456
    .local v2, ipAddress:Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 457
    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v8

    int-to-long v0, v8

    .line 458
    .local v0, addr:J
    const-wide/16 v8, 0x0

    cmp-long v8, v0, v8

    if-eqz v8, :cond_1

    .line 460
    const-wide/16 v8, 0x0

    cmp-long v8, v0, v8

    if-gez v8, :cond_0

    const-wide v8, 0x100000000L

    add-long/2addr v0, v8

    .line 461
    :cond_0
    const-string v8, "%d.%d.%d.%d"

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-wide/16 v11, 0xff

    and-long/2addr v11, v0

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const/16 v11, 0x8

    shr-long v11, v0, v11

    const-wide/16 v13, 0xff

    and-long/2addr v11, v13

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const/16 v11, 0x10

    shr-long v11, v0, v11

    const-wide/16 v13, 0xff

    and-long/2addr v11, v13

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x3

    const/16 v11, 0x18

    shr-long v11, v0, v11

    const-wide/16 v13, 0xff

    and-long/2addr v11, v13

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 465
    .end local v0           #addr:J
    :cond_1
    if-nez v2, :cond_4

    const v8, 0x7f080289

    invoke-virtual {p0, v8}, Lcom/android/settings/wifi/AdvancedSettings;->getString(I)Ljava/lang/String;

    move-result-object v8

    :goto_2
    invoke-virtual {v5, v8}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 467
    return-void

    .line 450
    .end local v2           #ipAddress:Ljava/lang/String;
    .end local v3           #macAddress:Ljava/lang/String;
    .end local v5           #wifiIpAddressPref:Landroid/preference/Preference;
    :cond_2
    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v8

    move-object v3, v8

    goto :goto_0

    .line 451
    .restart local v3       #macAddress:Ljava/lang/String;
    :cond_3
    const v8, 0x7f080289

    invoke-virtual {p0, v8}, Lcom/android/settings/wifi/AdvancedSettings;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    .restart local v2       #ipAddress:Ljava/lang/String;
    .restart local v5       #wifiIpAddressPref:Landroid/preference/Preference;
    :cond_4
    move-object v8, v2

    .line 465
    goto :goto_2
.end method

.method private showIwlanDialog(Lcom/android/settings/wifi/IwlanNetwork;Z)V
    .locals 1
    .parameter "iwlanNetwork"
    .parameter "edit"

    .prologue
    .line 504
    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedSettings;->mIwlanDialog:Lcom/android/settings/wifi/IwlanDialog;

    if-eqz v0, :cond_0

    .line 505
    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedSettings;->mIwlanDialog:Lcom/android/settings/wifi/IwlanDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/IwlanDialog;->dismiss()V

    .line 507
    :cond_0
    new-instance v0, Lcom/android/settings/wifi/IwlanDialog;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/settings/wifi/IwlanDialog;-><init>(Landroid/content/Context;Lcom/android/settings/wifi/IwlanNetwork;Z)V

    iput-object v0, p0, Lcom/android/settings/wifi/AdvancedSettings;->mIwlanDialog:Lcom/android/settings/wifi/IwlanDialog;

    .line 508
    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedSettings;->mIwlanDialog:Lcom/android/settings/wifi/IwlanDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/IwlanDialog;->show()V

    .line 509
    return-void
.end method

.method private updateSettingsProvider()V
    .locals 7

    .prologue
    const-string v6, "wifi_http_port"

    .line 429
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 431
    .local v0, contentResolver:Landroid/content/ContentResolver;
    const-string v4, "wifi_use_static_ip"

    iget-object v5, p0, Lcom/android/settings/wifi/AdvancedSettings;->mUseStaticIpCheckBox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    :goto_0
    invoke-static {v0, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 435
    const-string v4, "wifi_http_port"

    invoke-virtual {p0, v6}, Lcom/android/settings/wifi/AdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/EditTextPreference;

    .line 436
    .local v3, wifiHttpProxyEditText:Landroid/preference/EditTextPreference;
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "wifi_http_port"

    invoke-virtual {v3}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v6, v5}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 439
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v4, p0, Lcom/android/settings/wifi/AdvancedSettings;->mSettingNames:[Ljava/lang/String;

    array-length v4, v4

    if-ge v1, v4, :cond_1

    .line 440
    iget-object v4, p0, Lcom/android/settings/wifi/AdvancedSettings;->mPreferenceKeys:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/AdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/EditTextPreference;

    .line 441
    .local v2, preference:Landroid/preference/EditTextPreference;
    iget-object v4, p0, Lcom/android/settings/wifi/AdvancedSettings;->mSettingNames:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v2}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v4, v5}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 439
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 431
    .end local v1           #i:I
    .end local v2           #preference:Landroid/preference/EditTextPreference;
    .end local v3           #wifiHttpProxyEditText:Landroid/preference/EditTextPreference;
    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    .line 443
    .restart local v1       #i:I
    .restart local v3       #wifiHttpProxyEditText:Landroid/preference/EditTextPreference;
    :cond_1
    return-void
.end method

.method private updateUi()V
    .locals 9

    .prologue
    const/4 v7, 0x0

    const-string v8, "wifi_http_port"

    .line 403
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 405
    .local v0, contentResolver:Landroid/content/ContentResolver;
    iget-object v5, p0, Lcom/android/settings/wifi/AdvancedSettings;->mUseStaticIpCheckBox:Landroid/preference/CheckBoxPreference;

    const-string v6, "wifi_use_static_ip"

    invoke-static {v0, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x1

    :goto_0
    invoke-virtual {v5, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 409
    const-string v5, "wifi_http_port"

    invoke-virtual {p0, v8}, Lcom/android/settings/wifi/AdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/EditTextPreference;

    .line 410
    .local v4, wifiHttpProxyEditText:Landroid/preference/EditTextPreference;
    const-string v5, "wifi_http_port"

    invoke-static {v0, v8}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 412
    .local v3, settingValue:Ljava/lang/String;
    invoke-virtual {v4, v3}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 413
    invoke-virtual {v4, v3}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 416
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v5, p0, Lcom/android/settings/wifi/AdvancedSettings;->mSettingNames:[Ljava/lang/String;

    array-length v5, v5

    if-ge v1, v5, :cond_1

    .line 417
    iget-object v5, p0, Lcom/android/settings/wifi/AdvancedSettings;->mPreferenceKeys:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/AdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/EditTextPreference;

    .line 420
    .local v2, preference:Landroid/preference/EditTextPreference;
    iget-object v5, p0, Lcom/android/settings/wifi/AdvancedSettings;->mSettingNames:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-static {v0, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 423
    invoke-virtual {v2, v3}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 424
    invoke-virtual {v2, v3}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 416
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v1           #i:I
    .end local v2           #preference:Landroid/preference/EditTextPreference;
    .end local v3           #settingValue:Ljava/lang/String;
    .end local v4           #wifiHttpProxyEditText:Landroid/preference/EditTextPreference;
    :cond_0
    move v6, v7

    .line 405
    goto :goto_0

    .line 426
    .restart local v1       #i:I
    .restart local v3       #settingValue:Ljava/lang/String;
    .restart local v4       #wifiHttpProxyEditText:Landroid/preference/EditTextPreference;
    :cond_1
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    .line 99
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 101
    const v6, 0x7f040034

    invoke-virtual {p0, v6}, Lcom/android/settings/wifi/AdvancedSettings;->addPreferencesFromResource(I)V

    .line 103
    const-string v6, "use_static_ip"

    invoke-virtual {p0, v6}, Lcom/android/settings/wifi/AdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    iput-object v6, p0, Lcom/android/settings/wifi/AdvancedSettings;->mUseStaticIpCheckBox:Landroid/preference/CheckBoxPreference;

    .line 104
    iget-object v6, p0, Lcom/android/settings/wifi/AdvancedSettings;->mUseStaticIpCheckBox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 107
    const-string v6, "wifi_http_port"

    invoke-virtual {p0, v6}, Lcom/android/settings/wifi/AdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 108
    .local v5, wifiHttpProxyEditText:Landroid/preference/Preference;
    if-eqz v5, :cond_0

    .line 109
    invoke-virtual {v5, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 113
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v6, p0, Lcom/android/settings/wifi/AdvancedSettings;->mPreferenceKeys:[Ljava/lang/String;

    array-length v6, v6

    if-ge v1, v6, :cond_1

    .line 114
    iget-object v6, p0, Lcom/android/settings/wifi/AdvancedSettings;->mPreferenceKeys:[Ljava/lang/String;

    aget-object v6, v6, v1

    invoke-virtual {p0, v6}, Lcom/android/settings/wifi/AdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 115
    .local v3, preference:Landroid/preference/Preference;
    invoke-virtual {v3, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 113
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 118
    .end local v3           #preference:Landroid/preference/Preference;
    :cond_1
    const-string v6, "ro.debuggable"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v6

    sput v6, Lcom/android/settings/wifi/AdvancedSettings;->DEBUGGABLE:I

    .line 131
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 133
    .local v2, parentPreference:Landroid/preference/PreferenceGroup;
    const-string v6, "iwlan_enabled_category"

    invoke-virtual {v2, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 134
    .local v4, removablePref:Landroid/preference/Preference;
    if-eqz v4, :cond_2

    .line 135
    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 137
    :cond_2
    const-string v6, "iwlan_networks"

    invoke-virtual {v2, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 138
    if-eqz v4, :cond_3

    .line 139
    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 141
    :cond_3
    const-string v6, "add_other_iwlan"

    invoke-virtual {v2, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 142
    if-eqz v4, :cond_4

    .line 143
    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 151
    :cond_4
    sget v6, Lcom/android/settings/wifi/AdvancedSettings;->DEBUGGABLE:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_6

    .line 158
    invoke-direct {p0}, Lcom/android/settings/wifi/AdvancedSettings;->initNumChannelsPreference()V

    .line 173
    :cond_5
    :goto_1
    return-void

    .line 161
    :cond_6
    const-string v6, "num_channels"

    invoke-virtual {p0, v6}, Lcom/android/settings/wifi/AdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 162
    .local v0, chanPref:Landroid/preference/Preference;
    if-eqz v0, :cond_5

    .line 163
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    .line 373
    const/4 v0, 0x1

    const v1, 0x7f0801bf

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x108004e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 376
    const/4 v0, 0x2

    const v1, 0x7f0801c0

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080038

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 379
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 481
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 485
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 244
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 245
    invoke-direct {p0}, Lcom/android/settings/wifi/AdvancedSettings;->updateSettingsProvider()V

    .line 248
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 385
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 399
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 388
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/wifi/AdvancedSettings;->updateSettingsProvider()V

    .line 389
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedSettings;->finish()V

    move v0, v1

    .line 390
    goto :goto_0

    .line 393
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedSettings;->finish()V

    move v0, v1

    .line 394
    goto :goto_0

    .line 385
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 472
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 477
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 13
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const v10, 0x7f0801b7

    const/4 v12, 0x1

    const/4 v11, 0x0

    const-string v9, "wifi_http_port"

    .line 252
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 253
    .local v3, key:Ljava/lang/String;
    if-nez v3, :cond_0

    move v8, v12

    .line 326
    .end local p2
    :goto_0
    return v8

    .line 255
    .restart local p2
    :cond_0
    const-string v8, "num_channels"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 257
    :try_start_0
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 258
    .local v4, numChannels:I
    const-string v8, "wifi"

    invoke-virtual {p0, v8}, Lcom/android/settings/wifi/AdvancedSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/WifiManager;

    .line 259
    .local v7, wifiManager:Landroid/net/wifi/WifiManager;
    const/4 v8, 0x1

    invoke-virtual {v7, v4, v8}, Landroid/net/wifi/WifiManager;->setNumAllowedChannels(IZ)Z

    move-result v8

    if-nez v8, :cond_1

    .line 260
    const v8, 0x7f0801b7

    const/4 v9, 0x0

    invoke-static {p0, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v4           #numChannels:I
    .end local v7           #wifiManager:Landroid/net/wifi/WifiManager;
    :cond_1
    :goto_1
    move v8, v12

    .line 326
    goto :goto_0

    .line 263
    :catch_0
    move-exception v8

    move-object v1, v8

    .line 264
    .local v1, e:Ljava/lang/NumberFormatException;
    invoke-static {p0, v10, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    move v8, v11

    .line 266
    goto :goto_0

    .line 269
    .end local v1           #e:Ljava/lang/NumberFormatException;
    .restart local p2
    :cond_2
    const-string v8, "sleep_policy"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 271
    :try_start_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "wifi_sleep_policy"

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 273
    :catch_1
    move-exception v8

    move-object v1, v8

    .line 274
    .restart local v1       #e:Ljava/lang/NumberFormatException;
    const v8, 0x7f0801bb

    invoke-static {p0, v8, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    move v8, v11

    .line 276
    goto :goto_0

    .line 279
    .end local v1           #e:Ljava/lang/NumberFormatException;
    .restart local p2
    :cond_3
    const-string v8, "use_static_ip"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 280
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    .line 283
    .local v6, value:Z
    :try_start_2
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "wifi_use_static_ip"

    if-eqz v6, :cond_4

    move v10, v12

    :goto_2
    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 285
    :catch_2
    move-exception v8

    move-object v1, v8

    .restart local v1       #e:Ljava/lang/NumberFormatException;
    move v8, v11

    .line 286
    goto :goto_0

    .end local v1           #e:Ljava/lang/NumberFormatException;
    :cond_4
    move v10, v11

    .line 283
    goto :goto_2

    .line 290
    .end local v6           #value:Z
    .restart local p2
    :cond_5
    const-string v8, "wifi_http_port"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 291
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v5, v0

    .line 293
    .local v5, proxyport:Ljava/lang/String;
    :try_start_3
    invoke-virtual {p1, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 294
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "wifi_http_port"

    invoke-static {v8, v9, v5}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_1

    .line 296
    :catch_3
    move-exception v8

    move-object v1, v8

    .restart local v1       #e:Ljava/lang/NumberFormatException;
    move v8, v11

    .line 297
    goto/16 :goto_0

    .line 302
    .end local v1           #e:Ljava/lang/NumberFormatException;
    .end local v5           #proxyport:Ljava/lang/String;
    :cond_6
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v6, v0

    .line 305
    .local v6, value:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/settings/wifi/AdvancedSettings;->mPreferenceKeys:[Ljava/lang/String;

    aget-object v8, v8, v11

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 309
    invoke-direct {p0, v6}, Lcom/android/settings/wifi/AdvancedSettings;->isIpAddress(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 310
    const v8, 0x7f0801c1

    invoke-static {p0, v8, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    move v8, v11

    .line 311
    goto/16 :goto_0

    .line 317
    :cond_7
    invoke-virtual {p1, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 318
    const/4 v2, 0x0

    .local v2, i:I
    :goto_3
    iget-object v8, p0, Lcom/android/settings/wifi/AdvancedSettings;->mSettingNames:[Ljava/lang/String;

    array-length v8, v8

    if-ge v2, v8, :cond_1

    .line 319
    iget-object v8, p0, Lcom/android/settings/wifi/AdvancedSettings;->mPreferenceKeys:[Ljava/lang/String;

    aget-object v8, v8, v2

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 320
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/wifi/AdvancedSettings;->mSettingNames:[Ljava/lang/String;

    aget-object v9, v9, v2

    invoke-static {v8, v9, v6}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_1

    .line 318
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_3
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3
    .parameter "screen"
    .parameter "preference"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 489
    instance-of v0, p2, Lcom/android/settings/wifi/IwlanNetwork;

    if-eqz v0, :cond_0

    .line 490
    check-cast p2, Lcom/android/settings/wifi/IwlanNetwork;

    .end local p2
    iput-object p2, p0, Lcom/android/settings/wifi/AdvancedSettings;->mSelectedIwlanNetwork:Lcom/android/settings/wifi/IwlanNetwork;

    .line 491
    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedSettings;->mSelectedIwlanNetwork:Lcom/android/settings/wifi/IwlanNetwork;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/settings/wifi/AdvancedSettings;->showIwlanDialog(Lcom/android/settings/wifi/IwlanNetwork;Z)V

    .line 499
    :goto_0
    return v2

    .line 492
    .restart local p2
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedSettings;->mAddIwlanNetwork:Landroid/preference/Preference;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 493
    iput-object v1, p0, Lcom/android/settings/wifi/AdvancedSettings;->mSelectedIwlanNetwork:Lcom/android/settings/wifi/IwlanNetwork;

    .line 494
    invoke-direct {p0, v1, v2}, Lcom/android/settings/wifi/AdvancedSettings;->showIwlanDialog(Lcom/android/settings/wifi/IwlanNetwork;Z)V

    goto :goto_0

    .line 496
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 177
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 179
    invoke-direct {p0}, Lcom/android/settings/wifi/AdvancedSettings;->updateUi()V

    .line 184
    sget v0, Lcom/android/settings/wifi/AdvancedSettings;->DEBUGGABLE:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 186
    invoke-direct {p0}, Lcom/android/settings/wifi/AdvancedSettings;->initNumChannelsPreference()V

    .line 189
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/wifi/AdvancedSettings;->initSleepPolicyPreference()V

    .line 190
    invoke-direct {p0}, Lcom/android/settings/wifi/AdvancedSettings;->refreshWifiInfo()V

    .line 197
    return-void
.end method
