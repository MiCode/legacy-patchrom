.class Lcom/android/settings/vpn/PptpEditor;
.super Lcom/android/settings/vpn/VpnProfileEditor;
.source "PptpEditor.java"


# instance fields
.field private mEncryption:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>(Landroid/net/vpn/PptpProfile;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/android/settings/vpn/VpnProfileEditor;-><init>(Landroid/net/vpn/VpnProfile;)V

    .line 34
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/vpn/PptpEditor;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/settings/vpn/PptpEditor;->mEncryption:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/vpn/PptpEditor;Landroid/preference/CheckBoxPreference;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/android/settings/vpn/PptpEditor;->setEncryptionSummary(Landroid/preference/CheckBoxPreference;Z)V

    return-void
.end method

.method private createEncryptionPreference(Landroid/content/Context;)Landroid/preference/Preference;
    .locals 4
    .parameter "c"

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/android/settings/vpn/PptpEditor;->getProfile()Landroid/net/vpn/VpnProfile;

    move-result-object v2

    check-cast v2, Landroid/net/vpn/PptpProfile;

    .line 46
    .local v2, profile:Landroid/net/vpn/PptpProfile;
    new-instance v1, Landroid/preference/CheckBoxPreference;

    invoke-direct {v1, p1}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/vpn/PptpEditor;->mEncryption:Landroid/preference/CheckBoxPreference;

    .line 47
    .local v1, encryption:Landroid/preference/CheckBoxPreference;
    invoke-virtual {v2}, Landroid/net/vpn/PptpProfile;->isEncryptionEnabled()Z

    move-result v0

    .line 48
    .local v0, enabled:Z
    const v3, 0x7f0804c6

    invoke-virtual {p0, v1, v3}, Lcom/android/settings/vpn/PptpEditor;->setCheckBoxTitle(Landroid/preference/CheckBoxPreference;I)V

    .line 49
    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 50
    invoke-direct {p0, v1, v0}, Lcom/android/settings/vpn/PptpEditor;->setEncryptionSummary(Landroid/preference/CheckBoxPreference;Z)V

    .line 51
    new-instance v3, Lcom/android/settings/vpn/PptpEditor$1;

    invoke-direct {v3, p0, v2}, Lcom/android/settings/vpn/PptpEditor$1;-><init>(Lcom/android/settings/vpn/PptpEditor;Landroid/net/vpn/PptpProfile;)V

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 61
    return-object v1
.end method

.method private setEncryptionSummary(Landroid/preference/CheckBoxPreference;Z)V
    .locals 5
    .parameter "encryption"
    .parameter "enabled"

    .prologue
    .line 66
    invoke-virtual {p1}, Landroid/preference/CheckBoxPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 67
    .local v0, c:Landroid/content/Context;
    if-eqz p2, :cond_0

    const v2, 0x7f0804d6

    :goto_0
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 70
    .local v1, formatString:Ljava/lang/String;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const v4, 0x7f0804c7

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 72
    return-void

    .line 67
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
    .line 38
    invoke-virtual {p1}, Landroid/preference/PreferenceGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 39
    .local v0, c:Landroid/content/Context;
    invoke-direct {p0, v0}, Lcom/android/settings/vpn/PptpEditor;->createEncryptionPreference(Landroid/content/Context;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 41
    invoke-virtual {p0}, Lcom/android/settings/vpn/PptpEditor;->getProfile()Landroid/net/vpn/VpnProfile;

    move-result-object v1

    check-cast v1, Landroid/net/vpn/PptpProfile;

    .line 42
    .local v1, profile:Landroid/net/vpn/PptpProfile;
    return-void
.end method
