.class public Lcom/android/settings/WirelessSettings;
.super Landroid/preference/PreferenceActivity;
.source "WirelessSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field private mAirplaneModeEnabler:Lcom/android/settings/AirplaneModeEnabler;

.field private mAirplaneModePreference:Landroid/preference/CheckBoxPreference;

.field private mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

.field private mTelMan:Landroid/telephony/TelephonyManager;

.field private mUSBDialog:Landroid/app/Dialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method private dismissDialog()V
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mUSBDialog:Landroid/app/Dialog;

    if-nez v0, :cond_0

    .line 380
    :goto_0
    return-void

    .line 378
    :cond_0
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mUSBDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 379
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/WirelessSettings;->mUSBDialog:Landroid/app/Dialog;

    goto :goto_0
.end method

.method public static isRadioAllowed(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .parameter "context"
    .parameter "type"

    .prologue
    const/4 v3, 0x1

    .line 162
    invoke-static {p0}, Lcom/android/settings/AirplaneModeEnabler;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v3

    .line 168
    :goto_0
    return v1

    .line 166
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_toggleable_radios"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 168
    .local v0, toggleable:Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 384
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 385
    const-string v1, "exit_ecm_result"

    const/4 v2, 0x0

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 387
    .local v0, isChoiceYes:Ljava/lang/Boolean;
    iget-object v1, p0, Lcom/android/settings/WirelessSettings;->mAirplaneModeEnabler:Lcom/android/settings/AirplaneModeEnabler;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iget-object v3, p0, Lcom/android/settings/WirelessSettings;->mAirplaneModePreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/AirplaneModeEnabler;->setAirplaneModeInECM(ZZ)V

    .line 390
    .end local v0           #isChoiceYes:Ljava/lang/Boolean;
    :cond_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 354
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 355
    invoke-virtual {p0}, Lcom/android/settings/WirelessSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "adb_enabled"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 356
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 357
    .local v0, i:Landroid/content/Intent;
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 358
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.UsbSettings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 359
    invoke-virtual {p0, v0}, Lcom/android/settings/WirelessSettings;->startActivity(Landroid/content/Intent;)V

    .line 362
    .end local v0           #i:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .parameter "savedInstanceState"

    .prologue
    .line 185
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 187
    const v10, 0x7f04003a

    invoke-virtual {p0, v10}, Lcom/android/settings/WirelessSettings;->addPreferencesFromResource(I)V

    .line 190
    invoke-virtual {p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    const-string v11, "synchronise"

    invoke-virtual {p0, v11}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 193
    const-string v10, "toggle_airplane"

    invoke-virtual {p0, v10}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 198
    .local v0, airplane:Landroid/preference/CheckBoxPreference;
    const-string v10, "toggle_nfc"

    invoke-virtual {p0, v10}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    .line 201
    .local v3, nfc:Landroid/preference/CheckBoxPreference;
    new-instance v10, Lcom/android/settings/AirplaneModeEnabler;

    invoke-direct {v10, p0, v0}, Lcom/android/settings/AirplaneModeEnabler;-><init>(Landroid/content/Context;Landroid/preference/CheckBoxPreference;)V

    iput-object v10, p0, Lcom/android/settings/WirelessSettings;->mAirplaneModeEnabler:Lcom/android/settings/AirplaneModeEnabler;

    .line 202
    const-string v10, "toggle_airplane"

    invoke-virtual {p0, v10}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/android/settings/WirelessSettings;->mAirplaneModePreference:Landroid/preference/CheckBoxPreference;

    .line 205
    new-instance v10, Lcom/android/settings/nfc/NfcEnabler;

    invoke-direct {v10, p0, v3}, Lcom/android/settings/nfc/NfcEnabler;-><init>(Landroid/content/Context;Landroid/preference/CheckBoxPreference;)V

    iput-object v10, p0, Lcom/android/settings/WirelessSettings;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    .line 207
    invoke-virtual {p0}, Lcom/android/settings/WirelessSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "airplane_mode_toggleable_radios"

    invoke-static {v10, v11}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 211
    .local v7, toggleable:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/WirelessSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x10d0024

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    .line 213
    .local v2, isWimaxEnabled:Z
    if-nez v2, :cond_6

    .line 214
    invoke-virtual {p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    .line 215
    .local v6, root:Landroid/preference/PreferenceScreen;
    const-string v10, "wimax_settings"

    invoke-virtual {p0, v10}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 216
    .local v5, ps:Landroid/preference/Preference;
    if-eqz v5, :cond_0

    .line 217
    invoke-virtual {v6, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 227
    .end local v5           #ps:Landroid/preference/Preference;
    .end local v6           #root:Landroid/preference/PreferenceScreen;
    :cond_0
    :goto_0
    if-eqz v7, :cond_1

    const-string v10, "wifi"

    invoke-virtual {v7, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 230
    :cond_1
    const-string v10, "wifi_settings"

    invoke-virtual {p0, v10}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    const-string v11, "toggle_airplane"

    invoke-virtual {v10, v11}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    .line 231
    const-string v10, "vpn_settings"

    invoke-virtual {p0, v10}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    const-string v11, "toggle_airplane"

    invoke-virtual {v10, v11}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    .line 235
    :cond_2
    if-eqz v7, :cond_3

    const-string v10, "bluetooth"

    invoke-virtual {v7, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 238
    :cond_3
    const-string v10, "bt_settings"

    invoke-virtual {p0, v10}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    const-string v11, "toggle_airplane"

    invoke-virtual {v10, v11}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    .line 248
    :cond_4
    invoke-static {p0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v10

    if-nez v10, :cond_5

    .line 249
    invoke-virtual {p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    invoke-virtual {v10, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 262
    :cond_5
    const-string v10, "connectivity"

    invoke-virtual {p0, v10}, Lcom/android/settings/WirelessSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 264
    .local v1, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->isTetheringSupported()Z

    move-result v10

    if-nez v10, :cond_8

    .line 265
    invoke-virtual {p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    const-string v11, "tether_settings"

    invoke-virtual {p0, v11}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 300
    :goto_1
    return-void

    .line 219
    .end local v1           #cm:Landroid/net/ConnectivityManager;
    :cond_6
    if-eqz v7, :cond_7

    const-string v10, "wimax"

    invoke-virtual {v7, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    if-eqz v2, :cond_0

    .line 221
    :cond_7
    const-string v10, "wimax_settings"

    invoke-virtual {p0, v10}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 222
    .restart local v5       #ps:Landroid/preference/Preference;
    const-string v10, "toggle_airplane"

    invoke-virtual {v5, v10}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    goto :goto_0

    .line 267
    .end local v5           #ps:Landroid/preference/Preference;
    .restart local v1       #cm:Landroid/net/ConnectivityManager;
    :cond_8
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v8

    .line 268
    .local v8, usbRegexs:[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v9

    .line 269
    .local v9, wifiRegexs:[Ljava/lang/String;
    const-string v10, "tether_settings"

    invoke-virtual {p0, v10}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 270
    .local v4, p:Landroid/preference/Preference;
    array-length v10, v9

    if-nez v10, :cond_9

    .line 271
    const v10, 0x7f0802f3

    invoke-virtual {v4, v10}, Landroid/preference/Preference;->setTitle(I)V

    .line 272
    const v10, 0x7f0802f7

    invoke-virtual {v4, v10}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_1

    .line 274
    :cond_9
    array-length v10, v8

    if-nez v10, :cond_a

    .line 275
    const v10, 0x7f0802f4

    invoke-virtual {v4, v10}, Landroid/preference/Preference;->setTitle(I)V

    .line 276
    const v10, 0x7f0802f8

    invoke-virtual {v4, v10}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_1

    .line 284
    :cond_a
    const v10, 0x7f0802f5

    invoke-virtual {v4, v10}, Landroid/preference/Preference;->setTitle(I)V

    .line 285
    const v10, 0x7f0802f9

    invoke-virtual {v4, v10}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 372
    invoke-direct {p0}, Lcom/android/settings/WirelessSettings;->dismissDialog()V

    .line 373
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 374
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 367
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 343
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 345
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mAirplaneModeEnabler:Lcom/android/settings/AirplaneModeEnabler;

    invoke-virtual {v0}, Lcom/android/settings/AirplaneModeEnabler;->pause()V

    .line 350
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    invoke-virtual {v0}, Lcom/android/settings/nfc/NfcEnabler;->pause()V

    .line 351
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 9
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    const-string v8, "android.intent.action.MAIN"

    const-string v7, "WirelessSettings"

    .line 92
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 94
    .local v1, key:Ljava/lang/String;
    const-string v3, "WirelessSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPreferenceTreeClick : key["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    const-string v3, "mobile_networks"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 98
    const-string v3, "WirelessSettings"

    const-string v3, "onPreferenceTreeClick : preference.getKey() == mobile_networks"

    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/WirelessSettings;->mTelMan:Landroid/telephony/TelephonyManager;

    .line 100
    iget-object v3, p0, Lcom/android/settings/WirelessSettings;->mTelMan:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/WirelessSettings;->mTelMan:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v3

    if-ne v3, v6, :cond_1

    .line 104
    :cond_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 105
    .local v2, mInsertSimPopup:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v2, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 107
    const v3, 0x7f080540

    invoke-virtual {p0, v3}, Lcom/android/settings/WirelessSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 108
    const v3, 0x7f080541

    invoke-virtual {p0, v3}, Lcom/android/settings/WirelessSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 109
    const v3, 0x7f08038b

    new-instance v4, Lcom/android/settings/WirelessSettings$1;

    invoke-direct {v4, p0}, Lcom/android/settings/WirelessSettings$1;-><init>(Lcom/android/settings/WirelessSettings;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 115
    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 116
    new-instance v3, Lcom/android/settings/WirelessSettings$2;

    invoke-direct {v3, p0}, Lcom/android/settings/WirelessSettings$2;-><init>(Lcom/android/settings/WirelessSettings;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 122
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move v3, v6

    .line 157
    .end local v2           #mInsertSimPopup:Landroid/app/AlertDialog$Builder;
    :goto_0
    return v3

    .line 128
    :cond_1
    const-string v3, "synchronise"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 129
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 130
    .local v0, i:Landroid/content/Intent;
    const-string v3, "android.intent.action.MAIN"

    invoke-virtual {v0, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 131
    const-string v3, "com.smlds"

    const-string v4, "com.smlds.smluiMenuList_eu_open"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 132
    const/high16 v3, 0x1000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 133
    invoke-virtual {p0, v0}, Lcom/android/settings/WirelessSettings;->startActivity(Landroid/content/Intent;)V

    .line 137
    .end local v0           #i:Landroid/content/Intent;
    :cond_2
    const-string v3, "usb_settings"

    invoke-virtual {p0, v3}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    if-ne v3, p2, :cond_3

    .line 138
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 139
    .restart local v0       #i:Landroid/content/Intent;
    const-string v3, "android.intent.action.MAIN"

    invoke-virtual {v0, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 140
    const-string v3, "com.android.settings"

    const-string v4, "com.android.settings.UsbSettings"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 141
    invoke-virtual {p0, v0}, Lcom/android/settings/WirelessSettings;->startActivity(Landroid/content/Intent;)V

    .line 145
    .end local v0           #i:Landroid/content/Intent;
    :cond_3
    iget-object v3, p0, Lcom/android/settings/WirelessSettings;->mAirplaneModePreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "ril.cdma.inecmmode"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 149
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.ACTION_SHOW_NOTICE_ECM_BLOCK_OTHERS"

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v3, v6}, Lcom/android/settings/WirelessSettings;->startActivityForResult(Landroid/content/Intent;I)V

    move v3, v6

    .line 153
    goto :goto_0

    :cond_4
    move v3, v5

    .line 157
    goto :goto_0
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const-string v1, "WirelessSettings"

    .line 304
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 306
    iget-object v1, p0, Lcom/android/settings/WirelessSettings;->mAirplaneModeEnabler:Lcom/android/settings/AirplaneModeEnabler;

    invoke-virtual {v1}, Lcom/android/settings/AirplaneModeEnabler;->resume()V

    .line 311
    iget-object v1, p0, Lcom/android/settings/WirelessSettings;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    invoke-virtual {v1}, Lcom/android/settings/nfc/NfcEnabler;->resume()V

    .line 314
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/WirelessSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "bluetooth_enabled"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    .line 316
    const-string v1, "WirelessSettings"

    const-string v2, "BT is Disabled"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    const-string v1, "bluetooth"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 319
    const-string v1, "bt_settings"

    invoke-virtual {p0, v1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 326
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lcom/android/settings/WirelessSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_enabled"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_1

    .line 328
    const-string v1, "WirelessSettings"

    const-string v2, "WiFi is Disabled"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    const-string v1, "wifi_settings"

    invoke-virtual {p0, v1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 339
    :cond_1
    :goto_1
    return-void

    .line 322
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 323
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 332
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 333
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
