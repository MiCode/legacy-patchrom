.class public Lcom/android/phone/Settings;
.super Landroid/preference/PreferenceActivity;
.source "Settings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/Settings$MyHandler;,
        Lcom/android/phone/Settings$SettingsDBObserver;
    }
.end annotation


# instance fields
.field private SimState:I

.field co:Lcom/android/phone/Settings$SettingsDBObserver;

.field private mAlertDialog:Landroid/app/AlertDialog$Builder;

.field private mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

.field private mButtonDataRoam:Landroid/preference/CheckBoxPreference;

.field private mButtonDataUsage:Landroid/preference/Preference;

.field private mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

.field mCallHandler:Landroid/os/Handler;

.field mCdmaOptions:Lcom/android/phone/CdmaOptions;

.field private mClickedPreference:Landroid/preference/Preference;

.field private mDataClicked:Z

.field private mDataDialog:Landroid/app/AlertDialog$Builder;

.field private mDataUsageListener:Lcom/android/phone/DataUsageListener;

.field mGsmUmtsOptions:Lcom/android/phone/GsmUmtsOptions;

.field private mHandler:Lcom/android/phone/Settings$MyHandler;

.field private mOkClicked:Z

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field mUse2GOnlyCheckBoxPreference:Lcom/android/phone/Use2GOnlyCheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 295
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/phone/Settings;->mCallHandler:Landroid/os/Handler;

    .line 429
    return-void
.end method

.method private UpdatePreferredNetworkModeSummary(I)V
    .locals 2
    .parameter "NetworkMode"

    .prologue
    .line 540
    packed-switch p1, :pswitch_data_0

    .line 565
    iget-object v0, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const-string v1, "Preferred network mode: Global"

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 567
    :goto_0
    return-void

    .line 543
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const-string v1, "Preferred network mode: WCDMA pref"

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 546
    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const-string v1, "Preferred network mode: GSM only"

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 549
    :pswitch_2
    iget-object v0, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const-string v1, "Preferred network mode: WCDMA only"

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 552
    :pswitch_3
    iget-object v0, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const-string v1, "Preferred network mode: GSM/WCDMA"

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 555
    :pswitch_4
    iget-object v0, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const-string v1, "Preferred network mode: CDMA / EvDo"

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 558
    :pswitch_5
    iget-object v0, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const-string v1, "Preferred network mode: CDMA only"

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 561
    :pswitch_6
    iget-object v0, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const-string v1, "Preferred network mode: EvDo only"

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 540
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method static synthetic access$000(Lcom/android/phone/Settings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/android/phone/Settings;->mDataClicked:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/phone/Settings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/android/phone/Settings;->mDataClicked:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/phone/Settings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/phone/Settings;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/Settings;)Landroid/app/AlertDialog$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/phone/Settings;->mDataDialog:Landroid/app/AlertDialog$Builder;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/phone/Settings;Landroid/app/AlertDialog$Builder;)Landroid/app/AlertDialog$Builder;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/phone/Settings;->mDataDialog:Landroid/app/AlertDialog$Builder;

    return-object p1
.end method

.method static synthetic access$400(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    invoke-static {p0}, Lcom/android/phone/Settings;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/phone/Settings;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/phone/Settings;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/android/phone/Settings;->UpdatePreferredNetworkModeSummary(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/phone/Settings;)Landroid/preference/ListPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    return-object v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 604
    const-string v0, "NetworkSettings"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    return-void
.end method

.method private setDBObserver()V
    .locals 4

    .prologue
    .line 299
    invoke-virtual {p0}, Lcom/android/phone/Settings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 300
    .local v0, cr:Landroid/content/ContentResolver;
    new-instance v1, Lcom/android/phone/Settings$SettingsDBObserver;

    iget-object v2, p0, Lcom/android/phone/Settings;->mCallHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/android/phone/Settings$SettingsDBObserver;-><init>(Lcom/android/phone/Settings;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/phone/Settings;->co:Lcom/android/phone/Settings$SettingsDBObserver;

    .line 301
    sget-object v1, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/phone/Settings;->co:Lcom/android/phone/Settings$SettingsDBObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 302
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 571
    packed-switch p1, :pswitch_data_0

    .line 586
    :cond_0
    :goto_0
    return-void

    .line 573
    :pswitch_0
    const-string v1, "exit_ecm_result"

    const/4 v2, 0x0

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 575
    .local v0, isChoiceYes:Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 577
    iget-object v1, p0, Lcom/android/phone/Settings;->mCdmaOptions:Lcom/android/phone/CdmaOptions;

    iget-object v2, p0, Lcom/android/phone/Settings;->mClickedPreference:Landroid/preference/Preference;

    invoke-virtual {v1, v2}, Lcom/android/phone/CdmaOptions;->showDialog(Landroid/preference/Preference;)V

    goto :goto_0

    .line 571
    nop

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v1, 0x1

    .line 99
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->setDataRoamingEnabled(Z)V

    .line 101
    iput-boolean v1, p0, Lcom/android/phone/Settings;->mOkClicked:Z

    .line 106
    :goto_0
    return-void

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/android/phone/Settings;->mButtonDataRoam:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "icicle"

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 228
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 230
    const v4, 0x7f05000d

    invoke-virtual {p0, v4}, Lcom/android/phone/Settings;->addPreferencesFromResource(I)V

    .line 231
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v4

    iput v4, p0, Lcom/android/phone/Settings;->SimState:I

    .line 232
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 233
    new-instance v4, Lcom/android/phone/Settings$MyHandler;

    invoke-direct {v4, p0, v5}, Lcom/android/phone/Settings$MyHandler;-><init>(Lcom/android/phone/Settings;Lcom/android/phone/Settings$1;)V

    iput-object v4, p0, Lcom/android/phone/Settings;->mHandler:Lcom/android/phone/Settings$MyHandler;

    .line 236
    invoke-virtual {p0}, Lcom/android/phone/Settings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 237
    .local v1, prefSet:Landroid/preference/PreferenceScreen;
    iput-object v5, p0, Lcom/android/phone/Settings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    .line 238
    iput-object v5, p0, Lcom/android/phone/Settings;->mDataDialog:Landroid/app/AlertDialog$Builder;

    .line 239
    const-string v4, "button_data_enabled_key"

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/phone/Settings;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

    .line 240
    const-string v4, "button_roaming_key"

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/phone/Settings;->mButtonDataRoam:Landroid/preference/CheckBoxPreference;

    .line 241
    const-string v4, "preferred_network_mode_key"

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/ListPreference;

    iput-object v4, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    .line 243
    const-string v4, "button_data_usage_key"

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/Settings;->mButtonDataUsage:Landroid/preference/Preference;

    .line 244
    iget v4, p0, Lcom/android/phone/Settings;->SimState:I

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/android/phone/Settings;->SimState:I

    if-ne v4, v6, :cond_1

    .line 245
    :cond_0
    const-string v4, "Settings"

    const-string v5, "NO SIM"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    invoke-virtual {p0}, Lcom/android/phone/Settings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 249
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/Settings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0004

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-ne v4, v6, :cond_2

    .line 252
    iget-object v4, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v4, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 255
    iget-object v4, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "preferred_network_mode"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 258
    .local v2, settingsNetworkMode:I
    iget-object v4, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 259
    new-instance v4, Lcom/android/phone/CdmaOptions;

    invoke-direct {v4, p0, v1}, Lcom/android/phone/CdmaOptions;-><init>(Landroid/preference/PreferenceActivity;Landroid/preference/PreferenceScreen;)V

    iput-object v4, p0, Lcom/android/phone/Settings;->mCdmaOptions:Lcom/android/phone/CdmaOptions;

    .line 260
    new-instance v4, Lcom/android/phone/GsmUmtsOptions;

    invoke-direct {v4, p0, v1}, Lcom/android/phone/GsmUmtsOptions;-><init>(Landroid/preference/PreferenceActivity;Landroid/preference/PreferenceScreen;)V

    iput-object v4, p0, Lcom/android/phone/Settings;->mGsmUmtsOptions:Lcom/android/phone/GsmUmtsOptions;

    .line 278
    .end local v2           #settingsNetworkMode:I
    :goto_0
    const-string v4, "throttle"

    invoke-virtual {p0, v4}, Lcom/android/phone/Settings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ThrottleManager;

    .line 279
    .local v3, tm:Landroid/net/ThrottleManager;
    new-instance v4, Lcom/android/phone/DataUsageListener;

    iget-object v5, p0, Lcom/android/phone/Settings;->mButtonDataUsage:Landroid/preference/Preference;

    invoke-direct {v4, p0, v5, v1}, Lcom/android/phone/DataUsageListener;-><init>(Landroid/content/Context;Landroid/preference/Preference;Landroid/preference/PreferenceScreen;)V

    iput-object v4, p0, Lcom/android/phone/Settings;->mDataUsageListener:Lcom/android/phone/DataUsageListener;

    .line 293
    return-void

    .line 262
    .end local v3           #tm:Landroid/net/ThrottleManager;
    :cond_2
    iget-object v4, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 263
    iget-object v4, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    .line 264
    .local v0, phoneType:I
    const/4 v4, 0x2

    if-ne v0, v4, :cond_3

    .line 265
    new-instance v4, Lcom/android/phone/CdmaOptions;

    invoke-direct {v4, p0, v1}, Lcom/android/phone/CdmaOptions;-><init>(Landroid/preference/PreferenceActivity;Landroid/preference/PreferenceScreen;)V

    iput-object v4, p0, Lcom/android/phone/Settings;->mCdmaOptions:Lcom/android/phone/CdmaOptions;

    goto :goto_0

    .line 266
    :cond_3
    if-ne v0, v6, :cond_4

    .line 267
    new-instance v4, Lcom/android/phone/GsmUmtsOptions;

    invoke-direct {v4, p0, v1}, Lcom/android/phone/GsmUmtsOptions;-><init>(Landroid/preference/PreferenceActivity;Landroid/preference/PreferenceScreen;)V

    iput-object v4, p0, Lcom/android/phone/Settings;->mGsmUmtsOptions:Lcom/android/phone/GsmUmtsOptions;

    .line 268
    const-string v4, "button_prefer_2g_key"

    invoke-virtual {p0, v4}, Lcom/android/phone/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/android/phone/Use2GOnlyCheckBoxPreference;

    iput-object v4, p0, Lcom/android/phone/Settings;->mUse2GOnlyCheckBoxPreference:Lcom/android/phone/Use2GOnlyCheckBoxPreference;

    goto :goto_0

    .line 275
    :cond_4
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected phone type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter "id"

    .prologue
    .line 589
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 594
    .local v0, dialog:Landroid/app/ProgressDialog;
    invoke-virtual {p0}, Lcom/android/phone/Settings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d00a3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 595
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 599
    return-object v0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/phone/Settings;->mButtonDataRoam:Landroid/preference/CheckBoxPreference;

    iget-boolean v1, p0, Lcom/android/phone/Settings;->mOkClicked:Z

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 111
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/Settings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    .line 112
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 359
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 360
    iget-object v0, p0, Lcom/android/phone/Settings;->mDataUsageListener:Lcom/android/phone/DataUsageListener;

    invoke-virtual {v0}, Lcom/android/phone/DataUsageListener;->pause()V

    .line 361
    invoke-virtual {p0}, Lcom/android/phone/Settings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/Settings;->co:Lcom/android/phone/Settings$SettingsDBObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 362
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/Settings;->co:Lcom/android/phone/Settings$SettingsDBObserver;

    .line 363
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 8
    .parameter "preference"
    .parameter "objValue"

    .prologue
    const/4 v6, 0x1

    const-string v7, "preferred_network_mode"

    .line 375
    iget-object v4, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    if-ne p1, v4, :cond_0

    .line 378
    iget-object v5, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v5, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 380
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 381
    .local v1, buttonNetworkMode:I
    iget-object v4, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "preferred_network_mode"

    const/4 v5, 0x0

    invoke-static {v4, v7, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 384
    .local v3, settingsNetworkMode:I
    if-eq v1, v3, :cond_0

    .line 386
    packed-switch v1, :pswitch_data_0

    .line 412
    const/4 v2, 0x0

    .line 414
    .local v2, modemNetworkMode:I
    :goto_0
    invoke-direct {p0, v1}, Lcom/android/phone/Settings;->UpdatePreferredNetworkModeSummary(I)V

    .line 416
    iget-object v4, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "preferred_network_mode"

    invoke-static {v4, v7, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 420
    iget-object v4, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v5, p0, Lcom/android/phone/Settings;->mHandler:Lcom/android/phone/Settings$MyHandler;

    invoke-virtual {v5, v6}, Lcom/android/phone/Settings$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v4, v2, v5}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 426
    .end local v1           #buttonNetworkMode:I
    .end local v2           #modemNetworkMode:I
    .end local v3           #settingsNetworkMode:I
    :cond_0
    return v6

    .line 388
    .restart local v1       #buttonNetworkMode:I
    .restart local v3       #settingsNetworkMode:I
    :pswitch_0
    const/4 v2, 0x7

    .line 389
    .restart local v2       #modemNetworkMode:I
    goto :goto_0

    .line 391
    .end local v2           #modemNetworkMode:I
    :pswitch_1
    const/4 v2, 0x6

    .line 392
    .restart local v2       #modemNetworkMode:I
    goto :goto_0

    .line 394
    .end local v2           #modemNetworkMode:I
    :pswitch_2
    const/4 v2, 0x5

    .line 395
    .restart local v2       #modemNetworkMode:I
    goto :goto_0

    .line 397
    .end local v2           #modemNetworkMode:I
    :pswitch_3
    const/4 v2, 0x4

    .line 398
    .restart local v2       #modemNetworkMode:I
    goto :goto_0

    .line 400
    .end local v2           #modemNetworkMode:I
    :pswitch_4
    const/4 v2, 0x3

    .line 401
    .restart local v2       #modemNetworkMode:I
    goto :goto_0

    .line 403
    .end local v2           #modemNetworkMode:I
    :pswitch_5
    const/4 v2, 0x2

    .line 404
    .restart local v2       #modemNetworkMode:I
    goto :goto_0

    .line 406
    .end local v2           #modemNetworkMode:I
    :pswitch_6
    const/4 v2, 0x1

    .line 407
    .restart local v2       #modemNetworkMode:I
    goto :goto_0

    .line 409
    .end local v2           #modemNetworkMode:I
    :pswitch_7
    const/4 v2, 0x0

    .line 410
    .restart local v2       #modemNetworkMode:I
    goto :goto_0

    .line 386
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 9
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const v8, 0x1040014

    const v7, 0x1040013

    const v6, 0x1040009

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 122
    iget-object v2, p0, Lcom/android/phone/Settings;->mGsmUmtsOptions:Lcom/android/phone/GsmUmtsOptions;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/Settings;->mGsmUmtsOptions:Lcom/android/phone/GsmUmtsOptions;

    invoke-virtual {v2, p2}, Lcom/android/phone/GsmUmtsOptions;->preferenceTreeClick(Landroid/preference/Preference;)Z

    move-result v2

    if-ne v2, v5, :cond_0

    move v2, v5

    .line 222
    :goto_0
    return v2

    .line 125
    :cond_0
    iget-object v2, p0, Lcom/android/phone/Settings;->mCdmaOptions:Lcom/android/phone/CdmaOptions;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/phone/Settings;->mCdmaOptions:Lcom/android/phone/CdmaOptions;

    invoke-virtual {v2, p2}, Lcom/android/phone/CdmaOptions;->preferenceTreeClick(Landroid/preference/Preference;)Z

    move-result v2

    if-ne v2, v5, :cond_2

    .line 127
    const-string v2, "ril.cdma.inecmmode"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 130
    iput-object p2, p0, Lcom/android/phone/Settings;->mClickedPreference:Landroid/preference/Preference;

    .line 133
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.ACTION_SHOW_NOTICE_ECM_BLOCK_OTHERS"

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/16 v3, 0x11

    invoke-virtual {p0, v2, v3}, Lcom/android/phone/Settings;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_1
    move v2, v5

    .line 137
    goto :goto_0

    .line 138
    :cond_2
    iget-object v2, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    if-ne p2, v2, :cond_3

    .line 140
    iget-object v2, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "preferred_network_mode"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 143
    .local v1, settingsNetworkMode:I
    iget-object v2, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    move v2, v5

    .line 144
    goto :goto_0

    .line 145
    .end local v1           #settingsNetworkMode:I
    :cond_3
    iget-object v2, p0, Lcom/android/phone/Settings;->mButtonDataRoam:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_5

    .line 146
    const-string v2, "onPreferenceTreeClick: preference == mButtonDataRoam."

    invoke-static {v2}, Lcom/android/phone/Settings;->log(Ljava/lang/String;)V

    .line 149
    iget-object v2, p0, Lcom/android/phone/Settings;->mButtonDataRoam:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 151
    iput-boolean v4, p0, Lcom/android/phone/Settings;->mOkClicked:Z

    .line 152
    iget-object v2, p0, Lcom/android/phone/Settings;->mButtonDataRoam:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 154
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/phone/Settings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    .line 165
    iget-object v2, p0, Lcom/android/phone/Settings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/phone/Settings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d00b9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1080027

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v7, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v6, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :goto_1
    move v2, v5

    .line 177
    goto/16 :goto_0

    .line 175
    :cond_4
    iget-object v2, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2, v4}, Lcom/android/internal/telephony/Phone;->setDataRoamingEnabled(Z)V

    goto :goto_1

    .line 178
    :cond_5
    iget-object v2, p0, Lcom/android/phone/Settings;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_7

    .line 179
    const-string v2, "onPreferenceTreeClick: preference == mButtonDataEnabled."

    invoke-static {v2}, Lcom/android/phone/Settings;->log(Ljava/lang/String;)V

    .line 180
    iget-object v2, p0, Lcom/android/phone/Settings;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 181
    iput-boolean v4, p0, Lcom/android/phone/Settings;->mDataClicked:Z

    .line 182
    iget-object v2, p0, Lcom/android/phone/Settings;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 184
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/phone/Settings;->mDataDialog:Landroid/app/AlertDialog$Builder;

    .line 185
    iget-object v2, p0, Lcom/android/phone/Settings;->mDataDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/phone/Settings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0295

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1080027

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/phone/Settings$3;

    invoke-direct {v3, p0}, Lcom/android/phone/Settings$3;-><init>(Lcom/android/phone/Settings;)V

    invoke-virtual {v2, v7, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/phone/Settings$2;

    invoke-direct {v3, p0}, Lcom/android/phone/Settings$2;-><init>(Lcom/android/phone/Settings;)V

    invoke-virtual {v2, v6, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v2

    new-instance v3, Lcom/android/phone/Settings$1;

    invoke-direct {v3, p0}, Lcom/android/phone/Settings$1;-><init>(Lcom/android/phone/Settings;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :goto_2
    move v2, v5

    .line 215
    goto/16 :goto_0

    .line 211
    :cond_6
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Lcom/android/phone/Settings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 213
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    goto :goto_2

    .line 220
    .end local v0           #cm:Landroid/net/ConnectivityManager;
    :cond_7
    invoke-virtual {p1, v4}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    move v2, v4

    .line 222
    goto/16 :goto_0
.end method

.method protected onResume()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 319
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 323
    iget v3, p0, Lcom/android/phone/Settings;->SimState:I

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/android/phone/Settings;->SimState:I

    if-ne v3, v4, :cond_5

    :cond_0
    move v1, v4

    .line 324
    .local v1, mState:Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/Settings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    if-nez v1, :cond_6

    :goto_1
    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 326
    iget-object v3, p0, Lcom/android/phone/Settings;->mDataDialog:Landroid/app/AlertDialog$Builder;

    if-nez v3, :cond_1

    .line 327
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Lcom/android/phone/Settings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 329
    .local v0, cm:Landroid/net/ConnectivityManager;
    iget-object v3, p0, Lcom/android/phone/Settings;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 334
    .end local v0           #cm:Landroid/net/ConnectivityManager;
    :cond_1
    iget-object v3, p0, Lcom/android/phone/Settings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    if-nez v3, :cond_2

    .line 335
    iget-object v3, p0, Lcom/android/phone/Settings;->mButtonDataRoam:Landroid/preference/CheckBoxPreference;

    iget-object v4, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getDataRoamingEnabled()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 340
    :cond_2
    const-string v3, "device_policy"

    invoke-virtual {p0, v3}, Lcom/android/phone/Settings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v3}, Landroid/app/admin/DevicePolicyManager;->getRoamingPolicy()Landroid/app/admin/DevicePolicyManager$RoamingPolicy;

    move-result-object v2

    .line 341
    .local v2, rp:Landroid/app/admin/DevicePolicyManager$RoamingPolicy;
    iget-object v3, p0, Lcom/android/phone/Settings;->mButtonDataRoam:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/app/admin/DevicePolicyManager$RoamingPolicy;->isRoamingDataEnabled()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 344
    invoke-virtual {p0}, Lcom/android/phone/Settings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    const-string v4, "preferred_network_mode_key"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 345
    iget-object v3, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v4, p0, Lcom/android/phone/Settings;->mHandler:Lcom/android/phone/Settings$MyHandler;

    invoke-virtual {v4, v5}, Lcom/android/phone/Settings$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    .line 349
    :cond_3
    iget-object v3, p0, Lcom/android/phone/Settings;->mUse2GOnlyCheckBoxPreference:Lcom/android/phone/Use2GOnlyCheckBoxPreference;

    if-eqz v3, :cond_4

    .line 350
    iget-object v3, p0, Lcom/android/phone/Settings;->mUse2GOnlyCheckBoxPreference:Lcom/android/phone/Use2GOnlyCheckBoxPreference;

    invoke-virtual {v3}, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->getPreferredNetworkType()V

    .line 353
    :cond_4
    iget-object v3, p0, Lcom/android/phone/Settings;->mDataUsageListener:Lcom/android/phone/DataUsageListener;

    invoke-virtual {v3}, Lcom/android/phone/DataUsageListener;->resume()V

    .line 354
    invoke-direct {p0}, Lcom/android/phone/Settings;->setDBObserver()V

    .line 355
    return-void

    .end local v1           #mState:Z
    .end local v2           #rp:Landroid/app/admin/DevicePolicyManager$RoamingPolicy;
    :cond_5
    move v1, v5

    .line 323
    goto :goto_0

    .restart local v1       #mState:Z
    :cond_6
    move v4, v5

    .line 324
    goto :goto_1
.end method
