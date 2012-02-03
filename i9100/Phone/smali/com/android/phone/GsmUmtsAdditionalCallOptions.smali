.class public Lcom/android/phone/GsmUmtsAdditionalCallOptions;
.super Lcom/android/phone/TimeConsumingPreferenceActivity;
.source "GsmUmtsAdditionalCallOptions.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field private final DBG:Z

.field private mAutoRedial:Landroid/preference/CheckBoxPreference;

.field private mCLIRButton:Lcom/android/phone/CLIRListPreference;

.field private mCWButton:Lcom/android/phone/CallWaitingCheckBoxPreference;

.field private mFDNButton:Landroid/preference/PreferenceScreen;

.field private mFirstResume:Z

.field private mIcicle:Landroid/os/Bundle;

.field private mInitIndex:I

.field private mPreferences:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field private mTelMan:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/phone/TimeConsumingPreferenceActivity;-><init>()V

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->DBG:Z

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mPreferences:Ljava/util/ArrayList;

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mInitIndex:I

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "icicle"

    .prologue
    const/4 v3, 0x1

    .line 61
    invoke-super {p0, p1}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    const v1, 0x7f05000a

    invoke-virtual {p0, v1}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->addPreferencesFromResource(I)V

    .line 65
    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 67
    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 68
    .local v0, prefSet:Landroid/preference/PreferenceScreen;
    const-string v1, "button_clir_key"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/phone/CLIRListPreference;

    iput-object v1, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRButton:Lcom/android/phone/CLIRListPreference;

    .line 69
    const-string v1, "button_cw_key"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/phone/CallWaitingCheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCWButton:Lcom/android/phone/CallWaitingCheckBoxPreference;

    .line 70
    const-string v1, "button_autoredial_key"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mAutoRedial:Landroid/preference/CheckBoxPreference;

    .line 71
    const-string v1, "button_fdn_key"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mFDNButton:Landroid/preference/PreferenceScreen;

    .line 73
    iget-object v1, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mPreferences:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRButton:Lcom/android/phone/CLIRListPreference;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    iget-object v1, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mPreferences:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCWButton:Lcom/android/phone/CallWaitingCheckBoxPreference;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    iget-object v1, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mPreferences:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mFDNButton:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    iget-object v1, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mPreferences:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mAutoRedial:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mTelMan:Landroid/telephony/TelephonyManager;

    .line 81
    iget-object v1, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mTelMan:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mTelMan:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 84
    :cond_0
    iget-object v1, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mFDNButton:Landroid/preference/PreferenceScreen;

    if-eqz v1, :cond_1

    .line 85
    iget-object v1, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mFDNButton:Landroid/preference/PreferenceScreen;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 95
    :cond_1
    iput-boolean v3, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mFirstResume:Z

    .line 96
    iput-object p1, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mIcicle:Landroid/os/Bundle;

    .line 97
    return-void
.end method

.method public onFinished(Landroid/preference/Preference;Z)V
    .locals 4
    .parameter "preference"
    .parameter "reading"

    .prologue
    .line 110
    iget v1, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mInitIndex:I

    iget-object v2, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mPreferences:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-ge v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 111
    iget v1, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mInitIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mInitIndex:I

    .line 112
    iget-object v1, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mPreferences:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mInitIndex:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    .line 113
    .local v0, pref:Landroid/preference/Preference;
    instance-of v1, v0, Lcom/android/phone/CallWaitingCheckBoxPreference;

    if-eqz v1, :cond_0

    .line 114
    check-cast v0, Lcom/android/phone/CallWaitingCheckBoxPreference;

    .end local v0           #pref:Landroid/preference/Preference;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/phone/CallWaitingCheckBoxPreference;->init(Lcom/android/phone/TimeConsumingPreferenceListener;Z)V

    .line 117
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onFinished(Landroid/preference/Preference;Z)V

    .line 118
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 157
    invoke-super {p0}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onPause()V

    .line 158
    iget-object v0, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 159
    return-void
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v3, "GsmUmtsAdditionalCallOptions"

    .line 125
    invoke-super {p0}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onResume()V

    .line 127
    iget-boolean v1, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mFirstResume:Z

    if-eqz v1, :cond_0

    .line 128
    iget-object v1, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mIcicle:Landroid/os/Bundle;

    if-nez v1, :cond_1

    .line 129
    const-string v1, "GsmUmtsAdditionalCallOptions"

    const-string v1, "start to init "

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-object v1, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRButton:Lcom/android/phone/CLIRListPreference;

    invoke-virtual {v1, p0, v4}, Lcom/android/phone/CLIRListPreference;->init(Lcom/android/phone/TimeConsumingPreferenceListener;Z)V

    .line 145
    :goto_0
    iput-boolean v4, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mFirstResume:Z

    .line 146
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mIcicle:Landroid/os/Bundle;

    .line 149
    :cond_0
    iget-object v1, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 150
    const-string v1, "GsmUmtsAdditionalCallOptions"

    const-string v1, "Check the status of Auto-redial btton onResume"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object v1, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mAutoRedial:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "autoredial_mode"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-lez v2, :cond_3

    move v2, v5

    :goto_1
    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 152
    return-void

    .line 132
    :cond_1
    const-string v1, "GsmUmtsAdditionalCallOptions"

    const-string v1, "restore stored states"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iget-object v1, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mPreferences:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mInitIndex:I

    .line 134
    iget-object v1, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRButton:Lcom/android/phone/CLIRListPreference;

    invoke-virtual {v1, p0, v5}, Lcom/android/phone/CLIRListPreference;->init(Lcom/android/phone/TimeConsumingPreferenceListener;Z)V

    .line 135
    iget-object v1, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCWButton:Lcom/android/phone/CallWaitingCheckBoxPreference;

    invoke-virtual {v1, p0, v5}, Lcom/android/phone/CallWaitingCheckBoxPreference;->init(Lcom/android/phone/TimeConsumingPreferenceListener;Z)V

    .line 136
    iget-object v1, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mIcicle:Landroid/os/Bundle;

    iget-object v2, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRButton:Lcom/android/phone/CLIRListPreference;

    invoke-virtual {v2}, Lcom/android/phone/CLIRListPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    .line 137
    .local v0, clirArray:[I
    if-eqz v0, :cond_2

    .line 138
    const-string v1, "GsmUmtsAdditionalCallOptions"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate:  clirArray[0]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v2, v0, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", clirArray[1]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v2, v0, v5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-object v1, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRButton:Lcom/android/phone/CLIRListPreference;

    invoke-virtual {v1, v0}, Lcom/android/phone/CLIRListPreference;->handleGetCLIRResult([I)V

    goto :goto_0

    .line 142
    :cond_2
    iget-object v1, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRButton:Lcom/android/phone/CLIRListPreference;

    invoke-virtual {v1, p0, v4}, Lcom/android/phone/CLIRListPreference;->init(Lcom/android/phone/TimeConsumingPreferenceListener;Z)V

    goto :goto_0

    .end local v0           #clirArray:[I
    :cond_3
    move v2, v4

    .line 151
    goto :goto_1
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 101
    invoke-super {p0, p1}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 103
    iget-object v0, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRButton:Lcom/android/phone/CLIRListPreference;

    iget-object v0, v0, Lcom/android/phone/CLIRListPreference;->clirArray:[I

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRButton:Lcom/android/phone/CLIRListPreference;

    invoke-virtual {v0}, Lcom/android/phone/CLIRListPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRButton:Lcom/android/phone/CLIRListPreference;

    iget-object v1, v1, Lcom/android/phone/CLIRListPreference;->clirArray:[I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 106
    :cond_0
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 7
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    const/4 v5, 0x0

    const-string v6, "autoredial_mode"

    .line 165
    const-string v1, "button_autoredial_key"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 166
    invoke-interface {p1, p2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    move v0, v1

    .line 167
    .local v0, auto_redial:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "autoredial_mode"

    invoke-static {v1, v6, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 168
    const-string v1, "GsmUmtsAdditionalCallOptions"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AUTOREDIAL_MODE after putInt to the system = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "autoredial_mode"

    invoke-static {v3, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    .end local v0           #auto_redial:I
    :cond_0
    return-void

    :cond_1
    move v0, v5

    .line 166
    goto :goto_0
.end method
