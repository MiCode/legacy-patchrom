.class public Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;
.super Ljava/lang/Object;
.source "BluetoothDiscoverableEnabler.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private final mCheckBoxPreference:Landroid/preference/CheckBoxPreference;

.field private final mContext:Landroid/content/Context;

.field private final mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mTimeoutListPreference:Landroid/preference/ListPreference;

.field private final mUiHandler:Landroid/os/Handler;

.field private final mUpdateCountdownSummaryRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/preference/CheckBoxPreference;Landroid/preference/ListPreference;)V
    .locals 3
    .parameter "context"
    .parameter "checkBoxPreference"
    .parameter "timeoutListPreference"

    .prologue
    const/4 v2, 0x0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler$1;-><init>(Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 82
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler$2;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler$2;-><init>(Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->mUpdateCountdownSummaryRunnable:Ljava/lang/Runnable;

    .line 90
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->mContext:Landroid/content/Context;

    .line 91
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->mUiHandler:Landroid/os/Handler;

    .line 92
    iput-object p2, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->mCheckBoxPreference:Landroid/preference/CheckBoxPreference;

    .line 93
    iput-object p3, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->mTimeoutListPreference:Landroid/preference/ListPreference;

    .line 95
    invoke-virtual {p2, v2}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 97
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->mTimeoutListPreference:Landroid/preference/ListPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setPersistent(Z)V

    .line 99
    invoke-static {p1}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    .line 100
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    if-nez v0, :cond_0

    .line 102
    invoke-virtual {p2, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 104
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->handleModeChanged(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->updateCountdownSummary()V

    return-void
.end method

.method private getDiscoverableTimeout()I
    .locals 4

    .prologue
    .line 172
    const-string v2, "debug.bt.discoverable_time"

    const/4 v3, -0x1

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 173
    .local v0, timeout:I
    if-gez v0, :cond_0

    .line 174
    const/4 v1, 0x0

    .line 175
    .local v1, timeoutValue:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->mTimeoutListPreference:Landroid/preference/ListPreference;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->mTimeoutListPreference:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 176
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->mTimeoutListPreference:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    .line 182
    const-string v2, "never"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 183
    const/4 v0, 0x0

    .end local v1           #timeoutValue:Ljava/lang/String;
    :cond_0
    :goto_0
    move v2, v0

    .line 193
    :goto_1
    return v2

    .line 178
    .restart local v1       #timeoutValue:Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->mTimeoutListPreference:Landroid/preference/ListPreference;

    const-string v3, "twomin"

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 179
    const/16 v2, 0x78

    goto :goto_1

    .line 184
    :cond_2
    const-string v2, "onehour"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 185
    const/16 v0, 0xe10

    goto :goto_0

    .line 186
    :cond_3
    const-string v2, "fivemin"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 187
    const/16 v0, 0x12c

    goto :goto_0

    .line 189
    :cond_4
    const/16 v0, 0x78

    goto :goto_0
.end method

.method private handleModeChanged(I)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 203
    const/16 v0, 0x17

    if-ne p1, v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->mCheckBoxPreference:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 205
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->updateCountdownSummary()V

    .line 209
    :goto_0
    return-void

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->mCheckBoxPreference:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0
.end method

.method private persistDiscoverableEndTimestamp(J)V
    .locals 2
    .parameter "endTimestamp"

    .prologue
    .line 197
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 198
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "discoverable_end_timestamp"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 199
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 200
    return-void
.end method

.method private setEnabled(Z)V
    .locals 10
    .parameter "enable"

    .prologue
    .line 142
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v4}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    .line 144
    .local v2, manager:Landroid/bluetooth/BluetoothAdapter;
    if-eqz p1, :cond_0

    .line 145
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->getDiscoverableTimeout()I

    move-result v3

    .line 146
    .local v3, timeout:I
    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothAdapter;->setDiscoverableTimeout(I)V

    .line 148
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    int-to-long v6, v3

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    add-long v0, v4, v6

    .line 149
    .local v0, endTimestamp:J
    invoke-direct {p0, v0, v1}, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->persistDiscoverableEndTimestamp(J)V

    .line 151
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->updateCountdownSummary()V

    .line 153
    const/16 v4, 0x17

    invoke-virtual {v2, v4, v3}, Landroid/bluetooth/BluetoothAdapter;->setScanMode(II)Z

    .line 157
    .end local v0           #endTimestamp:J
    .end local v3           #timeout:I
    :goto_0
    return-void

    .line 155
    :cond_0
    const/16 v4, 0x15

    invoke-virtual {v2, v4}, Landroid/bluetooth/BluetoothAdapter;->setScanMode(I)Z

    goto :goto_0
.end method

.method private updateCountdownSummary()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x3e8

    .line 212
    iget-object v6, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v6}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v6

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothAdapter;->getScanMode()I

    move-result v4

    .line 213
    .local v4, mode:I
    const/16 v6, 0x17

    if-eq v4, v6, :cond_0

    .line 234
    :goto_0
    return-void

    .line 217
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 218
    .local v0, currentTimestamp:J
    iget-object v6, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v6}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v7, "discoverable_end_timestamp"

    const-wide/16 v8, 0x0

    invoke-interface {v6, v7, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 221
    .local v2, endTimestamp:J
    cmp-long v6, v0, v2

    if-lez v6, :cond_1

    .line 223
    iget-object v6, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->mCheckBoxPreference:Landroid/preference/CheckBoxPreference;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/preference/CheckBoxPreference;->setSummaryOn(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 227
    :cond_1
    sub-long v6, v2, v0

    div-long/2addr v6, v10

    long-to-int v5, v6

    .line 228
    .local v5, timeLeft:I
    invoke-direct {p0, v5}, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->updateTimerDisplay(I)V

    .line 230
    monitor-enter p0

    .line 231
    :try_start_0
    iget-object v6, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->mUiHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->mUpdateCountdownSummaryRunnable:Ljava/lang/Runnable;

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 232
    iget-object v6, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->mUiHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->mUpdateCountdownSummaryRunnable:Ljava/lang/Runnable;

    const-wide/16 v8, 0x3e8

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 233
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v6

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6
.end method

.method private updateTimerDisplay(I)V
    .locals 6
    .parameter "timeout"

    .prologue
    .line 160
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->getDiscoverableTimeout()I

    move-result v0

    if-nez v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->mCheckBoxPreference:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08004d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummaryOn(Ljava/lang/CharSequence;)V

    .line 169
    :goto_0
    return-void

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->mCheckBoxPreference:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08004c

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummaryOn(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .parameter "preference"
    .parameter "value"

    .prologue
    const/4 v1, 0x1

    .line 130
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->mCheckBoxPreference:Landroid/preference/CheckBoxPreference;

    if-ne p1, v0, :cond_1

    .line 132
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->setEnabled(Z)V

    .line 138
    :cond_0
    :goto_0
    return v1

    .line 133
    .restart local p2
    :cond_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->mTimeoutListPreference:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->mTimeoutListPreference:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v0, p2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 135
    invoke-direct {p0, v1}, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->setEnabled(Z)V

    goto :goto_0
.end method

.method public pause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 119
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    if-nez v0, :cond_0

    .line 127
    :goto_0
    return-void

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->mUiHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->mUpdateCountdownSummaryRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 124
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->mCheckBoxPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 125
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->mTimeoutListPreference:Landroid/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 126
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 107
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    if-nez v1, :cond_0

    .line 116
    :goto_0
    return-void

    .line 111
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.adapter.action.SCAN_MODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 112
    .local v0, filter:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 113
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->mCheckBoxPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 114
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->mTimeoutListPreference:Landroid/preference/ListPreference;

    invoke-virtual {v1, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 115
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getScanMode()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->handleModeChanged(I)V

    goto :goto_0
.end method
