.class Lcom/android/settings/vpn/L2tpIpsecPskEditor;
.super Lcom/android/settings/vpn/L2tpEditor;
.source "L2tpIpsecPskEditor.java"


# instance fields
.field private mPskHandler:Lcom/android/settings/vpn/VpnProfileEditor$SecretHandler;


# direct methods
.method public constructor <init>(Landroid/net/vpn/L2tpIpsecPskProfile;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/android/settings/vpn/L2tpEditor;-><init>(Landroid/net/vpn/L2tpProfile;)V

    .line 36
    return-void
.end method

.method private createPresharedKeyPreference(Landroid/content/Context;)Landroid/preference/Preference;
    .locals 3
    .parameter "c"

    .prologue
    .line 53
    new-instance v0, Lcom/android/settings/vpn/L2tpIpsecPskEditor$1;

    const v1, 0x7f0804c8

    const v2, 0x7f0804c9

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/android/settings/vpn/L2tpIpsecPskEditor$1;-><init>(Lcom/android/settings/vpn/L2tpIpsecPskEditor;Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/android/settings/vpn/L2tpIpsecPskEditor;->mPskHandler:Lcom/android/settings/vpn/VpnProfileEditor$SecretHandler;

    .line 66
    .local v0, pskHandler:Lcom/android/settings/vpn/VpnProfileEditor$SecretHandler;
    invoke-virtual {v0}, Lcom/android/settings/vpn/VpnProfileEditor$SecretHandler;->getPreference()Landroid/preference/EditTextPreference;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method protected loadExtraPreferencesTo(Landroid/preference/PreferenceGroup;)V
    .locals 2
    .parameter "subpanel"

    .prologue
    .line 40
    invoke-virtual {p1}, Landroid/preference/PreferenceGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 41
    .local v0, c:Landroid/content/Context;
    invoke-direct {p0, v0}, Lcom/android/settings/vpn/L2tpIpsecPskEditor;->createPresharedKeyPreference(Landroid/content/Context;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 42
    invoke-super {p0, p1}, Lcom/android/settings/vpn/L2tpEditor;->loadExtraPreferencesTo(Landroid/preference/PreferenceGroup;)V

    .line 43
    return-void
.end method

.method public validate()Ljava/lang/String;
    .locals 2

    .prologue
    .line 47
    invoke-super {p0}, Lcom/android/settings/vpn/L2tpEditor;->validate()Ljava/lang/String;

    move-result-object v0

    .line 49
    .local v0, result:Ljava/lang/String;
    if-eqz v0, :cond_0

    move-object v1, v0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/settings/vpn/L2tpIpsecPskEditor;->mPskHandler:Lcom/android/settings/vpn/VpnProfileEditor$SecretHandler;

    invoke-virtual {v1}, Lcom/android/settings/vpn/VpnProfileEditor$SecretHandler;->validate()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
