.class public Lcom/android/settings/AirplaneModeEnabler;
.super Ljava/lang/Object;
.source "AirplaneModeEnabler.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private final mCheckBoxPref:Landroid/preference/CheckBoxPreference;

.field private final mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/preference/CheckBoxPreference;)V
    .locals 3
    .parameter "context"
    .parameter "airplaneModeCheckBoxPreference"

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Lcom/android/settings/AirplaneModeEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/settings/AirplaneModeEnabler$1;-><init>(Lcom/android/settings/AirplaneModeEnabler;)V

    iput-object v0, p0, Lcom/android/settings/AirplaneModeEnabler;->mHandler:Landroid/os/Handler;

    .line 66
    iput-object p1, p0, Lcom/android/settings/AirplaneModeEnabler;->mContext:Landroid/content/Context;

    .line 67
    iput-object p2, p0, Lcom/android/settings/AirplaneModeEnabler;->mCheckBoxPref:Landroid/preference/CheckBoxPreference;

    .line 69
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 71
    new-instance v0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    iget-object v1, p0, Lcom/android/settings/AirplaneModeEnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/AirplaneModeEnabler;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/AirplaneModeEnabler;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    .line 72
    iget-object v0, p0, Lcom/android/settings/AirplaneModeEnabler;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->notifyServiceState(I)V

    .line 73
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/AirplaneModeEnabler;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/settings/AirplaneModeEnabler;->onAirplaneModeChanged()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/AirplaneModeEnabler;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/settings/AirplaneModeEnabler;->mCheckBoxPref:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/AirplaneModeEnabler;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/android/settings/AirplaneModeEnabler;->setAirplaneModeOn(Z)V

    return-void
.end method

.method public static isAirplaneModeOn(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 91
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method private onAirplaneModeChanged()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const-string v4, "AirplaneModeEnabler"

    .line 115
    iget-object v2, p0, Lcom/android/settings/AirplaneModeEnabler;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    .line 116
    .local v1, serviceState:Landroid/telephony/ServiceState;
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    move v0, v5

    .line 117
    .local v0, airplaneModeEnabled:Z
    :goto_0
    const-string v2, "AirplaneModeEnabler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onAirplaneModeChanged : serviceState.getState() return "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    const-string v2, "AirplaneModeEnabler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onAirplaneModeChanged : airplaneModeEnabled "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget-object v2, p0, Lcom/android/settings/AirplaneModeEnabler;->mCheckBoxPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 120
    iget-object v2, p0, Lcom/android/settings/AirplaneModeEnabler;->mCheckBoxPref:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_1

    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 122
    iget-object v2, p0, Lcom/android/settings/AirplaneModeEnabler;->mCheckBoxPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 123
    return-void

    .line 116
    .end local v0           #airplaneModeEnabled:Z
    :cond_0
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0

    .line 120
    .restart local v0       #airplaneModeEnabled:Z
    :cond_1
    iget-object v3, p0, Lcom/android/settings/AirplaneModeEnabler;->mContext:Landroid/content/Context;

    const v4, 0x7f0800e2

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method

.method private setAirplaneModeOn(Z)V
    .locals 5
    .parameter "enabling"

    .prologue
    const/4 v4, 0x0

    .line 96
    const-string v1, "AirplaneModeEnabler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAirplaneModeOn : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-object v1, p0, Lcom/android/settings/AirplaneModeEnabler;->mCheckBoxPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 98
    iget-object v1, p0, Lcom/android/settings/AirplaneModeEnabler;->mCheckBoxPref:Landroid/preference/CheckBoxPreference;

    if-eqz p1, :cond_0

    const v2, 0x7f0800e3

    :goto_0
    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 102
    iget-object v1, p0, Lcom/android/settings/AirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    if-eqz p1, :cond_1

    const/4 v3, 0x1

    :goto_1
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 106
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 107
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 108
    iget-object v1, p0, Lcom/android/settings/AirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 109
    return-void

    .line 98
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    const v2, 0x7f0800e4

    goto :goto_0

    :cond_1
    move v3, v4

    .line 102
    goto :goto_1
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 129
    const-string v3, "ril.cdma.inecmmode"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 154
    const/4 v3, 0x1

    .end local p2
    :goto_0
    return v3

    .line 133
    .restart local p2
    :cond_0
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 134
    .local v2, value:Z
    if-eqz v2, :cond_1

    const v3, 0x7f0805e9

    move v1, v3

    .line 135
    .local v1, resMsg:I
    :goto_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/settings/AirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 136
    .local v0, mAlertDialog:Landroid/app/AlertDialog$Builder;
    const v3, 0x7f0800e1

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 137
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 138
    const v3, 0x104000a

    new-instance v4, Lcom/android/settings/AirplaneModeEnabler$2;

    invoke-direct {v4, p0, v2}, Lcom/android/settings/AirplaneModeEnabler$2;-><init>(Lcom/android/settings/AirplaneModeEnabler;Z)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 150
    const/high16 v3, 0x104

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 151
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 152
    const/4 v3, 0x0

    goto :goto_0

    .line 134
    .end local v0           #mAlertDialog:Landroid/app/AlertDialog$Builder;
    .end local v1           #resMsg:I
    :cond_1
    const v3, 0x7f0805ea

    move v1, v3

    goto :goto_1
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/settings/AirplaneModeEnabler;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->unregisterIntent()V

    .line 87
    iget-object v0, p0, Lcom/android/settings/AirplaneModeEnabler;->mCheckBoxPref:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 88
    return-void
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/settings/AirplaneModeEnabler;->mCheckBoxPref:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 79
    iget-object v0, p0, Lcom/android/settings/AirplaneModeEnabler;->mCheckBoxPref:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/AirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/AirplaneModeEnabler;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 81
    iget-object v0, p0, Lcom/android/settings/AirplaneModeEnabler;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->registerIntent()V

    .line 82
    iget-object v0, p0, Lcom/android/settings/AirplaneModeEnabler;->mCheckBoxPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 83
    return-void
.end method

.method public setAirplaneModeInECM(ZZ)V
    .locals 0
    .parameter "isECMExit"
    .parameter "isAirplaneModeOn"

    .prologue
    .line 158
    if-eqz p1, :cond_0

    .line 160
    invoke-direct {p0, p2}, Lcom/android/settings/AirplaneModeEnabler;->setAirplaneModeOn(Z)V

    .line 165
    :goto_0
    return-void

    .line 163
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/AirplaneModeEnabler;->onAirplaneModeChanged()V

    goto :goto_0
.end method
