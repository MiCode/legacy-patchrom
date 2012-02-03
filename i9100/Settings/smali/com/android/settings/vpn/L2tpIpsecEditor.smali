.class Lcom/android/settings/vpn/L2tpIpsecEditor;
.super Lcom/android/settings/vpn/L2tpEditor;
.source "L2tpIpsecEditor.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private Is_CaCert:Z

.field private Is_UserCert:Z

.field private mCaCertificate:Landroid/preference/ListPreference;

.field private mContext:Landroid/content/Context;

.field private mKeyStore:Landroid/security/KeyStore;

.field private mProfile:Landroid/net/vpn/L2tpIpsecProfile;

.field private mUserCertificate:Landroid/preference/ListPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lcom/android/settings/vpn/L2tpIpsecEditor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/vpn/L2tpIpsecEditor;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/net/vpn/L2tpIpsecProfile;)V
    .locals 2
    .parameter "p"

    .prologue
    const/4 v1, 0x0

    .line 52
    invoke-direct {p0, p1}, Lcom/android/settings/vpn/L2tpEditor;-><init>(Landroid/net/vpn/L2tpProfile;)V

    .line 40
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/vpn/L2tpIpsecEditor;->mKeyStore:Landroid/security/KeyStore;

    .line 47
    iput-boolean v1, p0, Lcom/android/settings/vpn/L2tpIpsecEditor;->Is_UserCert:Z

    .line 48
    iput-boolean v1, p0, Lcom/android/settings/vpn/L2tpIpsecEditor;->Is_CaCert:Z

    .line 53
    iput-object p1, p0, Lcom/android/settings/vpn/L2tpIpsecEditor;->mProfile:Landroid/net/vpn/L2tpIpsecProfile;

    .line 54
    return-void
.end method

.method private NoCertificatePopup(Landroid/content/Context;)V
    .locals 3
    .parameter "c"

    .prologue
    .line 153
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 154
    .local v0, NoCertificatePopup:Landroid/app/AlertDialog$Builder;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 155
    const v1, 0x7f0803e3

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 156
    const v1, 0x7f08054f

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 157
    const v1, 0x7f08038b

    new-instance v2, Lcom/android/settings/vpn/L2tpIpsecEditor$4;

    invoke-direct {v2, p0}, Lcom/android/settings/vpn/L2tpIpsecEditor$4;-><init>(Lcom/android/settings/vpn/L2tpIpsecEditor;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 162
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 163
    new-instance v1, Lcom/android/settings/vpn/L2tpIpsecEditor$5;

    invoke-direct {v1, p0}, Lcom/android/settings/vpn/L2tpIpsecEditor$5;-><init>(Lcom/android/settings/vpn/L2tpIpsecEditor;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 168
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 169
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/vpn/L2tpIpsecEditor;)Landroid/net/vpn/L2tpIpsecProfile;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/settings/vpn/L2tpIpsecEditor;->mProfile:Landroid/net/vpn/L2tpIpsecProfile;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/settings/vpn/L2tpIpsecEditor;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/android/settings/vpn/L2tpIpsecEditor;->Is_UserCert:Z

    return p1
.end method

.method static synthetic access$202(Lcom/android/settings/vpn/L2tpIpsecEditor;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/android/settings/vpn/L2tpIpsecEditor;->Is_CaCert:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/settings/vpn/L2tpIpsecEditor;Landroid/content/Context;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/android/settings/vpn/L2tpIpsecEditor;->NoCertificatePopup(Landroid/content/Context;)V

    return-void
.end method

.method private createCaCertificatePreference(Landroid/content/Context;)Landroid/preference/Preference;
    .locals 6
    .parameter "c"

    .prologue
    .line 116
    const v2, 0x7f0804c0

    iget-object v0, p0, Lcom/android/settings/vpn/L2tpIpsecEditor;->mProfile:Landroid/net/vpn/L2tpIpsecProfile;

    invoke-virtual {v0}, Landroid/net/vpn/L2tpIpsecProfile;->getCaCertificate()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/android/settings/vpn/L2tpIpsecEditor;->mKeyStore:Landroid/security/KeyStore;

    const-string v1, "CACERT_"

    invoke-virtual {v0, v1}, Landroid/security/KeyStore;->saw(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/android/settings/vpn/L2tpIpsecEditor$2;

    invoke-direct {v5, p0}, Lcom/android/settings/vpn/L2tpIpsecEditor$2;-><init>(Lcom/android/settings/vpn/L2tpIpsecEditor;)V

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/vpn/L2tpIpsecEditor;->createListPreference(Landroid/content/Context;ILjava/lang/String;[Ljava/lang/String;Landroid/preference/Preference$OnPreferenceChangeListener;)Landroid/preference/ListPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/vpn/L2tpIpsecEditor;->mCaCertificate:Landroid/preference/ListPreference;

    .line 130
    iget-object v0, p0, Lcom/android/settings/vpn/L2tpIpsecEditor;->mCaCertificate:Landroid/preference/ListPreference;

    const v1, 0x7f0804c1

    iget-object v2, p0, Lcom/android/settings/vpn/L2tpIpsecEditor;->mProfile:Landroid/net/vpn/L2tpIpsecProfile;

    invoke-virtual {v2}, Landroid/net/vpn/L2tpIpsecProfile;->getCaCertificate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/settings/vpn/L2tpIpsecEditor;->setSummary(Landroid/preference/Preference;ILjava/lang/String;)V

    .line 132
    iget-object v0, p0, Lcom/android/settings/vpn/L2tpIpsecEditor;->mCaCertificate:Landroid/preference/ListPreference;

    return-object v0
.end method

.method private createListPreference(Landroid/content/Context;ILjava/lang/String;[Ljava/lang/String;Landroid/preference/Preference$OnPreferenceChangeListener;)Landroid/preference/ListPreference;
    .locals 2
    .parameter "c"
    .parameter "titleResId"
    .parameter "text"
    .parameter "keys"
    .parameter "listener"

    .prologue
    .line 175
    new-instance v0, Landroid/preference/ListPreference;

    invoke-direct {v0, p1}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    .line 176
    .local v0, pref:Landroid/preference/ListPreference;
    invoke-virtual {v0, p2}, Landroid/preference/ListPreference;->setTitle(I)V

    .line 177
    invoke-virtual {v0, p2}, Landroid/preference/ListPreference;->setDialogTitle(I)V

    .line 178
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setPersistent(Z)V

    .line 179
    invoke-virtual {v0, p4}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 180
    invoke-virtual {v0, p4}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 181
    invoke-virtual {v0, p3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 182
    invoke-virtual {v0, p5}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 183
    return-object v0
.end method

.method private createNoCertificatePreference(Landroid/content/Context;II)Landroid/preference/Preference;
    .locals 2
    .parameter "c"
    .parameter "title_id"
    .parameter "summary_id"

    .prologue
    .line 137
    new-instance v0, Landroid/preference/Preference;

    invoke-direct {v0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 138
    .local v0, mNoCertificate:Landroid/preference/Preference;
    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setTitle(I)V

    .line 139
    new-instance v1, Lcom/android/settings/vpn/L2tpIpsecEditor$3;

    invoke-direct {v1, p0}, Lcom/android/settings/vpn/L2tpIpsecEditor$3;-><init>(Lcom/android/settings/vpn/L2tpIpsecEditor;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 147
    iget-object v1, p0, Lcom/android/settings/vpn/L2tpIpsecEditor;->mProfile:Landroid/net/vpn/L2tpIpsecProfile;

    invoke-virtual {v1}, Landroid/net/vpn/L2tpIpsecProfile;->getUserCertificate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, p3, v1}, Lcom/android/settings/vpn/L2tpIpsecEditor;->setSummary(Landroid/preference/Preference;ILjava/lang/String;)V

    .line 149
    return-object v0
.end method

.method private createUserCertificatePreference(Landroid/content/Context;)Landroid/preference/Preference;
    .locals 6
    .parameter "c"

    .prologue
    .line 96
    const v2, 0x7f0804bd

    iget-object v0, p0, Lcom/android/settings/vpn/L2tpIpsecEditor;->mProfile:Landroid/net/vpn/L2tpIpsecProfile;

    invoke-virtual {v0}, Landroid/net/vpn/L2tpIpsecProfile;->getUserCertificate()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/android/settings/vpn/L2tpIpsecEditor;->mKeyStore:Landroid/security/KeyStore;

    const-string v1, "USRCERT_"

    invoke-virtual {v0, v1}, Landroid/security/KeyStore;->saw(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/android/settings/vpn/L2tpIpsecEditor$1;

    invoke-direct {v5, p0}, Lcom/android/settings/vpn/L2tpIpsecEditor$1;-><init>(Lcom/android/settings/vpn/L2tpIpsecEditor;)V

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/vpn/L2tpIpsecEditor;->createListPreference(Landroid/content/Context;ILjava/lang/String;[Ljava/lang/String;Landroid/preference/Preference$OnPreferenceChangeListener;)Landroid/preference/ListPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/vpn/L2tpIpsecEditor;->mUserCertificate:Landroid/preference/ListPreference;

    .line 110
    iget-object v0, p0, Lcom/android/settings/vpn/L2tpIpsecEditor;->mUserCertificate:Landroid/preference/ListPreference;

    const v1, 0x7f0804be

    iget-object v2, p0, Lcom/android/settings/vpn/L2tpIpsecEditor;->mProfile:Landroid/net/vpn/L2tpIpsecProfile;

    invoke-virtual {v2}, Landroid/net/vpn/L2tpIpsecProfile;->getUserCertificate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/settings/vpn/L2tpIpsecEditor;->setSummary(Landroid/preference/Preference;ILjava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/android/settings/vpn/L2tpIpsecEditor;->mUserCertificate:Landroid/preference/ListPreference;

    return-object v0
.end method


# virtual methods
.method protected loadExtraPreferencesTo(Landroid/preference/PreferenceGroup;)V
    .locals 4
    .parameter "subpanel"

    .prologue
    const/4 v3, 0x0

    .line 58
    invoke-super {p0, p1}, Lcom/android/settings/vpn/L2tpEditor;->loadExtraPreferencesTo(Landroid/preference/PreferenceGroup;)V

    .line 59
    invoke-virtual {p1}, Landroid/preference/PreferenceGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/vpn/L2tpIpsecEditor;->mContext:Landroid/content/Context;

    .line 61
    iget-object v0, p0, Lcom/android/settings/vpn/L2tpIpsecEditor;->mKeyStore:Landroid/security/KeyStore;

    const-string v1, "USRCERT_"

    invoke-virtual {v0, v1}, Landroid/security/KeyStore;->saw(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/android/settings/vpn/L2tpIpsecEditor;->mContext:Landroid/content/Context;

    const v1, 0x7f0804bd

    const v2, 0x7f0804be

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/vpn/L2tpIpsecEditor;->createNoCertificatePreference(Landroid/content/Context;II)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 65
    iput-boolean v3, p0, Lcom/android/settings/vpn/L2tpIpsecEditor;->Is_UserCert:Z

    .line 69
    :goto_0
    iget-object v0, p0, Lcom/android/settings/vpn/L2tpIpsecEditor;->mKeyStore:Landroid/security/KeyStore;

    const-string v1, "CACERT_"

    invoke-virtual {v0, v1}, Landroid/security/KeyStore;->saw(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_1

    .line 70
    iget-object v0, p0, Lcom/android/settings/vpn/L2tpIpsecEditor;->mContext:Landroid/content/Context;

    const v1, 0x7f0804c0

    const v2, 0x7f0804c1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/vpn/L2tpIpsecEditor;->createNoCertificatePreference(Landroid/content/Context;II)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 73
    iput-boolean v3, p0, Lcom/android/settings/vpn/L2tpIpsecEditor;->Is_CaCert:Z

    .line 77
    :goto_1
    return-void

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/android/settings/vpn/L2tpIpsecEditor;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/settings/vpn/L2tpIpsecEditor;->createUserCertificatePreference(Landroid/content/Context;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 75
    :cond_1
    iget-object v0, p0, Lcom/android/settings/vpn/L2tpIpsecEditor;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/settings/vpn/L2tpIpsecEditor;->createCaCertificatePreference(Landroid/content/Context;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_1
.end method

.method public validate()Ljava/lang/String;
    .locals 3

    .prologue
    .line 81
    iget-boolean v1, p0, Lcom/android/settings/vpn/L2tpIpsecEditor;->Is_UserCert:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/settings/vpn/L2tpIpsecEditor;->Is_CaCert:Z

    if-nez v1, :cond_1

    .line 82
    :cond_0
    iget-object v1, p0, Lcom/android/settings/vpn/L2tpIpsecEditor;->mContext:Landroid/content/Context;

    const v2, 0x7f080550

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 92
    :goto_0
    return-object v1

    .line 85
    :cond_1
    invoke-super {p0}, Lcom/android/settings/vpn/L2tpEditor;->validate()Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, result:Ljava/lang/String;
    if-nez v0, :cond_2

    .line 87
    iget-object v1, p0, Lcom/android/settings/vpn/L2tpIpsecEditor;->mUserCertificate:Landroid/preference/ListPreference;

    const v2, 0x7f0804bf

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/vpn/L2tpIpsecEditor;->validate(Landroid/preference/Preference;I)Ljava/lang/String;

    move-result-object v0

    .line 89
    :cond_2
    if-nez v0, :cond_3

    .line 90
    iget-object v1, p0, Lcom/android/settings/vpn/L2tpIpsecEditor;->mCaCertificate:Landroid/preference/ListPreference;

    const v2, 0x7f0804c2

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/vpn/L2tpIpsecEditor;->validate(Landroid/preference/Preference;I)Ljava/lang/String;

    move-result-object v0

    :cond_3
    move-object v1, v0

    .line 92
    goto :goto_0
.end method
