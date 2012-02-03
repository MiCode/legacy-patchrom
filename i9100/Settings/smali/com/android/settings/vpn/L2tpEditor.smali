.class Lcom/android/settings/vpn/L2tpEditor;
.super Lcom/android/settings/vpn/VpnProfileEditor;
.source "L2tpEditor.java"


# instance fields
.field private mSecret:Landroid/preference/CheckBoxPreference;

.field private mSecretHandler:Lcom/android/settings/vpn/VpnProfileEditor$SecretHandler;


# direct methods
.method public constructor <init>(Landroid/net/vpn/L2tpProfile;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/android/settings/vpn/VpnProfileEditor;-><init>(Landroid/net/vpn/VpnProfile;)V

    .line 37
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/vpn/L2tpEditor;)Lcom/android/settings/vpn/VpnProfileEditor$SecretHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/settings/vpn/L2tpEditor;->mSecretHandler:Lcom/android/settings/vpn/VpnProfileEditor$SecretHandler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/vpn/L2tpEditor;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/settings/vpn/L2tpEditor;->mSecret:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/vpn/L2tpEditor;Landroid/preference/CheckBoxPreference;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/android/settings/vpn/L2tpEditor;->setSecretSummary(Landroid/preference/CheckBoxPreference;Z)V

    return-void
.end method

.method private createSecretPreference(Landroid/content/Context;)Landroid/preference/Preference;
    .locals 4
    .parameter "c"

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/android/settings/vpn/L2tpEditor;->getProfile()Landroid/net/vpn/VpnProfile;

    move-result-object v1

    check-cast v1, Landroid/net/vpn/L2tpProfile;

    .line 58
    .local v1, profile:Landroid/net/vpn/L2tpProfile;
    new-instance v2, Landroid/preference/CheckBoxPreference;

    invoke-direct {v2, p1}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings/vpn/L2tpEditor;->mSecret:Landroid/preference/CheckBoxPreference;

    .line 59
    .local v2, secret:Landroid/preference/CheckBoxPreference;
    invoke-virtual {v1}, Landroid/net/vpn/L2tpProfile;->isSecretEnabled()Z

    move-result v0

    .line 60
    .local v0, enabled:Z
    const v3, 0x7f0804c4

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/vpn/L2tpEditor;->setCheckBoxTitle(Landroid/preference/CheckBoxPreference;I)V

    .line 61
    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 62
    invoke-direct {p0, v2, v0}, Lcom/android/settings/vpn/L2tpEditor;->setSecretSummary(Landroid/preference/CheckBoxPreference;Z)V

    .line 63
    new-instance v3, Lcom/android/settings/vpn/L2tpEditor$1;

    invoke-direct {v3, p0, v1}, Lcom/android/settings/vpn/L2tpEditor$1;-><init>(Lcom/android/settings/vpn/L2tpEditor;Landroid/net/vpn/L2tpProfile;)V

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 74
    return-object v2
.end method

.method private createSecretStringPreference(Landroid/content/Context;)Landroid/preference/Preference;
    .locals 4
    .parameter "c"

    .prologue
    .line 78
    new-instance v1, Lcom/android/settings/vpn/L2tpEditor$2;

    const v2, 0x7f0804c3

    const v3, 0x7f0804c4

    invoke-direct {v1, p0, p1, v2, v3}, Lcom/android/settings/vpn/L2tpEditor$2;-><init>(Lcom/android/settings/vpn/L2tpEditor;Landroid/content/Context;II)V

    iput-object v1, p0, Lcom/android/settings/vpn/L2tpEditor;->mSecretHandler:Lcom/android/settings/vpn/VpnProfileEditor$SecretHandler;

    .line 91
    .local v1, sHandler:Lcom/android/settings/vpn/VpnProfileEditor$SecretHandler;
    invoke-virtual {v1}, Lcom/android/settings/vpn/VpnProfileEditor$SecretHandler;->getPreference()Landroid/preference/EditTextPreference;

    move-result-object v0

    .line 92
    .local v0, pref:Landroid/preference/Preference;
    iget-object v2, p0, Lcom/android/settings/vpn/L2tpEditor;->mSecret:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    .line 93
    return-object v0
.end method

.method private setSecretSummary(Landroid/preference/CheckBoxPreference;Z)V
    .locals 5
    .parameter "secret"
    .parameter "enabled"

    .prologue
    .line 97
    invoke-virtual {p1}, Landroid/preference/CheckBoxPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 98
    .local v0, c:Landroid/content/Context;
    if-eqz p2, :cond_0

    const v2, 0x7f0804d6

    :goto_0
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 101
    .local v1, formatString:Ljava/lang/String;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const v4, 0x7f0804c4

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 103
    return-void

    .line 98
    .end local v1           #formatString:Ljava/lang/String;
    :cond_0
    const v2, 0x7f0804d7

    goto :goto_0
.end method


# virtual methods
.method protected loadExtraPreferencesTo(Landroid/preference/PreferenceGroup;)V
    .locals 3
    .parameter "subpanel"

    .prologue
    .line 41
    invoke-virtual {p1}, Landroid/preference/PreferenceGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 42
    .local v0, c:Landroid/content/Context;
    invoke-direct {p0, v0}, Lcom/android/settings/vpn/L2tpEditor;->createSecretPreference(Landroid/content/Context;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 43
    invoke-direct {p0, v0}, Lcom/android/settings/vpn/L2tpEditor;->createSecretStringPreference(Landroid/content/Context;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 45
    invoke-virtual {p0}, Lcom/android/settings/vpn/L2tpEditor;->getProfile()Landroid/net/vpn/VpnProfile;

    move-result-object v1

    check-cast v1, Landroid/net/vpn/L2tpProfile;

    .line 46
    .local v1, profile:Landroid/net/vpn/L2tpProfile;
    return-void
.end method

.method public validate()Ljava/lang/String;
    .locals 2

    .prologue
    .line 50
    invoke-super {p0}, Lcom/android/settings/vpn/VpnProfileEditor;->validate()Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, result:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/vpn/L2tpEditor;->mSecret:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v0

    .line 53
    :goto_0
    return-object v1

    :cond_0
    if-eqz v0, :cond_1

    move-object v1, v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/settings/vpn/L2tpEditor;->mSecretHandler:Lcom/android/settings/vpn/VpnProfileEditor$SecretHandler;

    invoke-virtual {v1}, Lcom/android/settings/vpn/VpnProfileEditor$SecretHandler;->validate()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
