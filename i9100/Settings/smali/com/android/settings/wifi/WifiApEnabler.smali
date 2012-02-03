.class public Lcom/android/settings/wifi/WifiApEnabler;
.super Ljava/lang/Object;
.source "WifiApEnabler.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private final mCheckBox:Landroid/preference/CheckBoxPreference;

.field mCm:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private final mOriginalSummary:Ljava/lang/CharSequence;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiRegexs:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/preference/CheckBoxPreference;)V
    .locals 2
    .parameter "context"
    .parameter "checkBox"

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Lcom/android/settings/wifi/WifiApEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiApEnabler$1;-><init>(Lcom/android/settings/wifi/WifiApEnabler;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 76
    iput-object p1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    .line 77
    iput-object p2, p0, Lcom/android/settings/wifi/WifiApEnabler;->mCheckBox:Landroid/preference/CheckBoxPreference;

    .line 78
    invoke-virtual {p2}, Landroid/preference/CheckBoxPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mOriginalSummary:Ljava/lang/CharSequence;

    .line 79
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 81
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 82
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mCm:Landroid/net/ConnectivityManager;

    .line 84
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mWifiRegexs:[Ljava/lang/String;

    .line 86
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 87
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 88
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/WifiApEnabler;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiApEnabler;->handleWifiApStateChanged(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/WifiApEnabler;[Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/wifi/WifiApEnabler;->updateTetherState([Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method private enableWifiCheckBox()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 102
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    move v0, v4

    .line 104
    .local v0, isAirplaneMode:Z
    :goto_0
    if-nez v0, :cond_1

    .line 105
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mCheckBox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 109
    :goto_1
    return-void

    .end local v0           #isAirplaneMode:Z
    :cond_0
    move v0, v3

    .line 102
    goto :goto_0

    .line 107
    .restart local v0       #isAirplaneMode:Z
    :cond_1
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mCheckBox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_1
.end method

.method private handleWifiApStateChanged(I)V
    .locals 3
    .parameter "state"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 221
    packed-switch p1, :pswitch_data_0

    .line 245
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mCheckBox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 246
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mCheckBox:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f080169

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 247
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApEnabler;->enableWifiCheckBox()V

    .line 249
    :goto_0
    return-void

    .line 223
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mCheckBox:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f080167

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 224
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mCheckBox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    .line 231
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mCheckBox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 233
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mCheckBox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    .line 236
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mCheckBox:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f080168

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 237
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mCheckBox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    .line 240
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mCheckBox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 241
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mCheckBox:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mOriginalSummary:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 242
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApEnabler;->enableWifiCheckBox()V

    goto :goto_0

    .line 221
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateTetherState([Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 15
    .parameter "available"
    .parameter "tethered"
    .parameter "errored"

    .prologue
    .line 160
    const/4 v12, 0x0

    .line 161
    .local v12, wifiTethered:Z
    const/4 v11, 0x0

    .line 163
    .local v11, wifiErrored:Z
    move-object/from16 v1, p2

    .local v1, arr$:[Ljava/lang/Object;
    array-length v5, v1

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    move v4, v3

    .end local v1           #arr$:[Ljava/lang/Object;
    .end local v3           #i$:I
    .end local v5           #len$:I
    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_2

    aget-object v7, v1, v4

    .line 164
    .local v7, o:Ljava/lang/Object;
    move-object v0, v7

    check-cast v0, Ljava/lang/String;

    move-object v9, v0

    .line 165
    .local v9, s:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApEnabler;->mWifiRegexs:[Ljava/lang/String;

    .local v2, arr$:[Ljava/lang/String;
    array-length v6, v2

    .local v6, len$:I
    const/4 v3, 0x0

    .end local v4           #i$:I
    .restart local v3       #i$:I
    :goto_1
    if-ge v3, v6, :cond_1

    aget-object v8, v2, v3

    .line 166
    .local v8, regex:Ljava/lang/String;
    invoke-virtual {v9, v8}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_0

    const/4 v12, 0x1

    .line 165
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 163
    .end local v8           #regex:Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    .end local v3           #i$:I
    .restart local v4       #i$:I
    goto :goto_0

    .line 169
    .end local v2           #arr$:[Ljava/lang/String;
    .end local v6           #len$:I
    .end local v7           #o:Ljava/lang/Object;
    .end local v9           #s:Ljava/lang/String;
    :cond_2
    move-object/from16 v1, p3

    .restart local v1       #arr$:[Ljava/lang/Object;
    array-length v5, v1

    .restart local v5       #len$:I
    const/4 v3, 0x0

    .end local v4           #i$:I
    .restart local v3       #i$:I
    move v4, v3

    .end local v1           #arr$:[Ljava/lang/Object;
    .end local v3           #i$:I
    .end local v5           #len$:I
    .restart local v4       #i$:I
    :goto_2
    if-ge v4, v5, :cond_5

    aget-object v7, v1, v4

    .line 170
    .restart local v7       #o:Ljava/lang/Object;
    move-object v0, v7

    check-cast v0, Ljava/lang/String;

    move-object v9, v0

    .line 171
    .restart local v9       #s:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApEnabler;->mWifiRegexs:[Ljava/lang/String;

    .restart local v2       #arr$:[Ljava/lang/String;
    array-length v6, v2

    .restart local v6       #len$:I
    const/4 v3, 0x0

    .end local v4           #i$:I
    .restart local v3       #i$:I
    :goto_3
    if-ge v3, v6, :cond_4

    aget-object v8, v2, v3

    .line 172
    .restart local v8       #regex:Ljava/lang/String;
    invoke-virtual {v9, v8}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_3

    const/4 v11, 0x1

    .line 171
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 169
    .end local v8           #regex:Ljava/lang/String;
    :cond_4
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    .end local v3           #i$:I
    .restart local v4       #i$:I
    goto :goto_2

    .line 176
    .end local v2           #arr$:[Ljava/lang/String;
    .end local v6           #len$:I
    .end local v7           #o:Ljava/lang/Object;
    .end local v9           #s:Ljava/lang/String;
    :cond_5
    if-eqz v12, :cond_7

    .line 177
    iget-object v13, p0, Lcom/android/settings/wifi/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v13}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v10

    .line 178
    .local v10, wifiConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {p0, v10}, Lcom/android/settings/wifi/WifiApEnabler;->updateConfigSummary(Landroid/net/wifi/WifiConfiguration;)V

    .line 182
    .end local v10           #wifiConfig:Landroid/net/wifi/WifiConfiguration;
    :cond_6
    :goto_4
    return-void

    .line 179
    :cond_7
    if-eqz v11, :cond_6

    .line 180
    iget-object v13, p0, Lcom/android/settings/wifi/WifiApEnabler;->mCheckBox:Landroid/preference/CheckBoxPreference;

    const v14, 0x7f080169

    invoke-virtual {v13, v14}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_4
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .parameter "preference"
    .parameter "value"

    .prologue
    .line 148
    const/4 v0, 0x0

    return v0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 98
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mCheckBox:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 99
    return-void
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 92
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApEnabler;->enableWifiCheckBox()V

    .line 93
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mCheckBox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 94
    return-void
.end method

.method public setEnableWifiAP(Z)V
    .locals 8
    .parameter "enable"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v7, "wifi_saved_state"

    .line 187
    iget-object v3, p0, Lcom/android/settings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 190
    .local v0, cr:Landroid/content/ContentResolver;
    iget-object v3, p0, Lcom/android/settings/wifi/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v2

    .line 191
    .local v2, wifiState:I
    if-eqz p1, :cond_1

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 193
    :cond_0
    iget-object v3, p0, Lcom/android/settings/wifi/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v5}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 194
    const-string v3, "wifi_saved_state"

    invoke-static {v0, v7, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 197
    :cond_1
    iget-object v3, p0, Lcom/android/settings/wifi/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, p1}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 199
    iget-object v3, p0, Lcom/android/settings/wifi/WifiApEnabler;->mCheckBox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 205
    :goto_0
    if-nez p1, :cond_2

    .line 206
    const/4 v1, 0x0

    .line 208
    .local v1, wifiSavedState:I
    :try_start_0
    const-string v3, "wifi_saved_state"

    invoke-static {v0, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 212
    :goto_1
    if-ne v1, v6, :cond_2

    .line 213
    iget-object v3, p0, Lcom/android/settings/wifi/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v6}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 214
    const-string v3, "wifi_saved_state"

    invoke-static {v0, v7, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 217
    .end local v1           #wifiSavedState:I
    :cond_2
    return-void

    .line 201
    :cond_3
    iget-object v3, p0, Lcom/android/settings/wifi/WifiApEnabler;->mCheckBox:Landroid/preference/CheckBoxPreference;

    const v4, 0x7f080169

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_0

    .line 209
    .restart local v1       #wifiSavedState:I
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method updateConfigSummary(Landroid/net/wifi/WifiConfiguration;)V
    .locals 6
    .parameter "wifiConfig"

    .prologue
    .line 152
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    const v2, 0x10403bf

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 154
    .local v0, s:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mCheckBox:Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    const v3, 0x7f0801e3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    if-nez p1, :cond_0

    move-object v5, v0

    :goto_0
    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 157
    return-void

    .line 154
    :cond_0
    iget-object v5, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_0
.end method
