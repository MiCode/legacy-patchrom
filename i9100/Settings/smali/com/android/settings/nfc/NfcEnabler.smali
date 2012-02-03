.class public Lcom/android/settings/nfc/NfcEnabler;
.super Ljava/lang/Object;
.source "NfcEnabler.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private final mCheckbox:Landroid/preference/CheckBoxPreference;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private final mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private mNfcState:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/preference/CheckBoxPreference;)V
    .locals 2
    .parameter "context"
    .parameter "checkBoxPreference"

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mHandler:Landroid/os/Handler;

    .line 46
    new-instance v0, Lcom/android/settings/nfc/NfcEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/settings/nfc/NfcEnabler$1;-><init>(Lcom/android/settings/nfc/NfcEnabler;)V

    iput-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 61
    iput-object p1, p0, Lcom/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    .line 62
    iput-object p2, p0, Lcom/android/settings/nfc/NfcEnabler;->mCheckbox:Landroid/preference/CheckBoxPreference;

    .line 63
    invoke-static {p1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 65
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mCheckbox:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 70
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.nfc.action.ADAPTER_STATE_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 72
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/nfc/NfcEnabler;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/android/settings/nfc/NfcEnabler;->handleNfcStateChanged(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/nfc/NfcEnabler;)Landroid/nfc/NfcAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/nfc/NfcEnabler;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/nfc/NfcEnabler;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mCheckbox:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method private handleNfcStateChanged(Z)V
    .locals 2
    .parameter "newState"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 132
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mCheckbox:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 133
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mCheckbox:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f080160

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 134
    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .parameter "preference"
    .parameter "value"

    .prologue
    const/4 v3, 0x0

    .line 95
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 96
    .local v0, desiredState:Z
    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 100
    new-instance v1, Lcom/android/settings/nfc/NfcEnabler$2;

    const-string v2, "toggleNFC"

    invoke-direct {v1, p0, v2, v0}, Lcom/android/settings/nfc/NfcEnabler$2;-><init>(Lcom/android/settings/nfc/NfcEnabler;Ljava/lang/String;Z)V

    invoke-virtual {v1}, Lcom/android/settings/nfc/NfcEnabler$2;->start()V

    .line 127
    return v3
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_0

    .line 90
    :goto_0
    return-void

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 89
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mCheckbox:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_0

    .line 82
    :goto_0
    return-void

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/nfc/NfcEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 79
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 80
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcState:Z

    .line 81
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mCheckbox:Landroid/preference/CheckBoxPreference;

    iget-boolean v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcState:Z

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0
.end method
