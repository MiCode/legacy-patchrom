.class public Lcom/android/settings/bluetooth/BluetoothEnabler;
.super Ljava/lang/Object;
.source "BluetoothEnabler.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private final mCheckBox:Landroid/preference/CheckBoxPreference;

.field private final mContext:Landroid/content/Context;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private final mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

.field private final mOriginalSummary:Ljava/lang/CharSequence;

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/preference/CheckBoxPreference;)V
    .locals 2
    .parameter "context"
    .parameter "checkBox"

    .prologue
    const/4 v1, 0x0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/BluetoothEnabler$1;-><init>(Lcom/android/settings/bluetooth/BluetoothEnabler;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 60
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    .line 61
    iput-object p2, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mCheckBox:Landroid/preference/CheckBoxPreference;

    .line 62
    invoke-virtual {p2}, Landroid/preference/CheckBoxPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mOriginalSummary:Ljava/lang/CharSequence;

    .line 63
    invoke-virtual {p2, v1}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 65
    invoke-static {p1}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    .line 66
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    if-nez v0, :cond_0

    .line 68
    invoke-virtual {p2, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 70
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 71
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/bluetooth/BluetoothEnabler;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothEnabler;->handleStateChanged(I)V

    return-void
.end method

.method private handleStateChanged(I)V
    .locals 4
    .parameter "state"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 122
    packed-switch p1, :pswitch_data_0

    .line 142
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mCheckBox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 143
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mCheckBox:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f080169

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 144
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mCheckBox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 146
    :goto_0
    return-void

    .line 124
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mCheckBox:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f080167

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 125
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mCheckBox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    .line 128
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mCheckBox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 129
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mCheckBox:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 130
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mCheckBox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    .line 133
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mCheckBox:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f080168

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 134
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mCheckBox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    .line 137
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mCheckBox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 138
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mCheckBox:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mOriginalSummary:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 139
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mCheckBox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    .line 122
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .parameter "preference"
    .parameter "value"

    .prologue
    const/4 v5, 0x0

    .line 95
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 98
    .local v0, enable:Z
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    const-string v3, "device_policy"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 100
    .local v1, mDPM:Landroid/app/admin/DevicePolicyManager;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/admin/DevicePolicyManager;->getAllowBluetoothMode(Landroid/content/ComponentName;)I

    move-result v2

    if-nez v2, :cond_0

    .line 101
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    const v3, 0x7f0806cf

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    move v2, v5

    .line 118
    :goto_0
    return v2

    .line 108
    :cond_0
    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    const-string v3, "bluetooth"

    invoke-static {v2, v3}, Lcom/android/settings/WirelessSettings;->isRadioAllowed(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 109
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    const v3, 0x7f08016a

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    move v2, v5

    .line 110
    goto :goto_0

    .line 114
    :cond_1
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v2, v0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->setBluetoothEnabled(Z)V

    .line 115
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mCheckBox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    move v2, v5

    .line 118
    goto :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    if-nez v0, :cond_0

    .line 92
    :goto_0
    return-void

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 91
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mCheckBox:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    if-nez v0, :cond_0

    .line 83
    :goto_0
    return-void

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getBluetoothState()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/BluetoothEnabler;->handleStateChanged(I)V

    .line 81
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 82
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mCheckBox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0
.end method
