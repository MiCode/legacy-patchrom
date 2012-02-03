.class Lcom/android/settings/vpn/VpnProfileEditor;
.super Ljava/lang/Object;
.source "VpnProfileEditor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/vpn/VpnProfileEditor$SecretHandler;
    }
.end annotation


# instance fields
.field private mDomainSuffices:Landroid/preference/EditTextPreference;

.field private mName:Landroid/preference/EditTextPreference;

.field private mProfile:Landroid/net/vpn/VpnProfile;

.field private mServerName:Landroid/preference/EditTextPreference;


# direct methods
.method public constructor <init>(Landroid/net/vpn/VpnProfile;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/android/settings/vpn/VpnProfileEditor;->mProfile:Landroid/net/vpn/VpnProfile;

    .line 46
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/vpn/VpnProfileEditor;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/android/settings/vpn/VpnProfileEditor;->setName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/vpn/VpnProfileEditor;)Landroid/net/vpn/VpnProfile;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/settings/vpn/VpnProfileEditor;->mProfile:Landroid/net/vpn/VpnProfile;

    return-object v0
.end method

.method private createServerNamePreference(Landroid/content/Context;)Landroid/preference/Preference;
    .locals 7
    .parameter "c"

    .prologue
    .line 122
    const v2, 0x7f0804cb

    const v3, 0x7f0804cc

    iget-object v0, p0, Lcom/android/settings/vpn/VpnProfileEditor;->mProfile:Landroid/net/vpn/VpnProfile;

    invoke-virtual {v0}, Landroid/net/vpn/VpnProfile;->getServerName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/android/settings/vpn/VpnProfileEditor$3;

    invoke-direct {v5, p0}, Lcom/android/settings/vpn/VpnProfileEditor$3;-><init>(Lcom/android/settings/vpn/VpnProfileEditor;)V

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/vpn/VpnProfileEditor;->createEditTextPreference(Landroid/content/Context;IILjava/lang/String;Landroid/preference/Preference$OnPreferenceChangeListener;)Landroid/preference/EditTextPreference;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/vpn/VpnProfileEditor;->mServerName:Landroid/preference/EditTextPreference;

    .line 135
    .local v6, pref:Landroid/preference/EditTextPreference;
    invoke-virtual {v6}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 136
    return-object v6
.end method

.method private setName(Ljava/lang/String;)V
    .locals 2
    .parameter "newName"

    .prologue
    .line 187
    if-nez p1, :cond_0

    const-string v0, ""

    move-object p1, v0

    .line 188
    :goto_0
    iget-object v0, p0, Lcom/android/settings/vpn/VpnProfileEditor;->mName:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, p1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 189
    invoke-virtual {p0}, Lcom/android/settings/vpn/VpnProfileEditor;->getProfile()Landroid/net/vpn/VpnProfile;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/vpn/VpnProfile;->setName(Ljava/lang/String;)V

    .line 190
    iget-object v0, p0, Lcom/android/settings/vpn/VpnProfileEditor;->mName:Landroid/preference/EditTextPreference;

    const v1, 0x7f0804b9

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/settings/vpn/VpnProfileEditor;->setSummary(Landroid/preference/Preference;ILjava/lang/String;)V

    .line 191
    return-void

    .line 187
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    move-object p1, v0

    goto :goto_0
.end method


# virtual methods
.method protected createDomainSufficesPreference(Landroid/content/Context;)Landroid/preference/EditTextPreference;
    .locals 7
    .parameter "c"

    .prologue
    .line 104
    const v2, 0x7f0804cf

    const v3, 0x7f0804d0

    iget-object v0, p0, Lcom/android/settings/vpn/VpnProfileEditor;->mProfile:Landroid/net/vpn/VpnProfile;

    invoke-virtual {v0}, Landroid/net/vpn/VpnProfile;->getDomainSuffices()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/android/settings/vpn/VpnProfileEditor$2;

    invoke-direct {v5, p0}, Lcom/android/settings/vpn/VpnProfileEditor$2;-><init>(Lcom/android/settings/vpn/VpnProfileEditor;)V

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/vpn/VpnProfileEditor;->createEditTextPreference(Landroid/content/Context;IILjava/lang/String;Landroid/preference/Preference$OnPreferenceChangeListener;)Landroid/preference/EditTextPreference;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/vpn/VpnProfileEditor;->mDomainSuffices:Landroid/preference/EditTextPreference;

    .line 117
    .local v6, pref:Landroid/preference/EditTextPreference;
    invoke-virtual {v6}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 118
    return-object v6
.end method

.method protected createEditTextPreference(Landroid/content/Context;IILjava/lang/String;Landroid/preference/Preference$OnPreferenceChangeListener;)Landroid/preference/EditTextPreference;
    .locals 2
    .parameter "c"
    .parameter "titleId"
    .parameter "prefNameId"
    .parameter "value"
    .parameter "listener"

    .prologue
    .line 142
    new-instance v0, Landroid/preference/EditTextPreference;

    invoke-direct {v0, p1}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;)V

    .line 143
    .local v0, pref:Landroid/preference/EditTextPreference;
    invoke-virtual {v0, p2}, Landroid/preference/EditTextPreference;->setTitle(I)V

    .line 144
    invoke-virtual {v0, p2}, Landroid/preference/EditTextPreference;->setDialogTitle(I)V

    .line 145
    invoke-virtual {p0, v0, p3, p4}, Lcom/android/settings/vpn/VpnProfileEditor;->setSummary(Landroid/preference/Preference;ILjava/lang/String;)V

    .line 146
    invoke-virtual {v0, p4}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 147
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setPersistent(Z)V

    .line 148
    invoke-virtual {v0, p5}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 149
    return-object v0
.end method

.method public getProfile()Landroid/net/vpn/VpnProfile;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/settings/vpn/VpnProfileEditor;->mProfile:Landroid/net/vpn/VpnProfile;

    return-object v0
.end method

.method protected loadExtraPreferencesTo(Landroid/preference/PreferenceGroup;)V
    .locals 0
    .parameter "subpanel"

    .prologue
    .line 85
    return-void
.end method

.method public loadPreferencesTo(Landroid/preference/PreferenceGroup;)V
    .locals 6
    .parameter "subpanel"

    .prologue
    .line 58
    invoke-virtual {p1}, Landroid/preference/PreferenceGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 60
    .local v0, c:Landroid/content/Context;
    const-string v1, "vpn_name"

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/EditTextPreference;

    iput-object v1, p0, Lcom/android/settings/vpn/VpnProfileEditor;->mName:Landroid/preference/EditTextPreference;

    .line 61
    iget-object v1, p0, Lcom/android/settings/vpn/VpnProfileEditor;->mName:Landroid/preference/EditTextPreference;

    new-instance v2, Lcom/android/settings/vpn/VpnProfileEditor$1;

    invoke-direct {v2, p0}, Lcom/android/settings/vpn/VpnProfileEditor$1;-><init>(Lcom/android/settings/vpn/VpnProfileEditor;)V

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 69
    invoke-virtual {p0}, Lcom/android/settings/vpn/VpnProfileEditor;->getProfile()Landroid/net/vpn/VpnProfile;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/vpn/VpnProfile;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/vpn/VpnProfileEditor;->setName(Ljava/lang/String;)V

    .line 70
    iget-object v1, p0, Lcom/android/settings/vpn/VpnProfileEditor;->mName:Landroid/preference/EditTextPreference;

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    const/16 v2, 0x4001

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 72
    iget-object v1, p0, Lcom/android/settings/vpn/VpnProfileEditor;->mName:Landroid/preference/EditTextPreference;

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/text/InputFilter;

    const/4 v3, 0x0

    new-instance v4, Landroid/text/InputFilter$LengthFilter;

    const/16 v5, 0x40

    invoke-direct {v4, v5}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 75
    invoke-direct {p0, v0}, Lcom/android/settings/vpn/VpnProfileEditor;->createServerNamePreference(Landroid/content/Context;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 76
    invoke-virtual {p0, p1}, Lcom/android/settings/vpn/VpnProfileEditor;->loadExtraPreferencesTo(Landroid/preference/PreferenceGroup;)V

    .line 77
    invoke-virtual {p0, v0}, Lcom/android/settings/vpn/VpnProfileEditor;->createDomainSufficesPreference(Landroid/content/Context;)Landroid/preference/EditTextPreference;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 78
    return-void
.end method

.method protected setCheckBoxTitle(Landroid/preference/CheckBoxPreference;I)V
    .locals 5
    .parameter "pref"
    .parameter "fieldNameId"

    .prologue
    .line 181
    invoke-virtual {p1}, Landroid/preference/CheckBoxPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 182
    .local v0, c:Landroid/content/Context;
    const v2, 0x7f0804d4

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 183
    .local v1, formatString:Ljava/lang/String;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 184
    return-void
.end method

.method protected setSummary(Landroid/preference/Preference;ILjava/lang/String;)V
    .locals 1
    .parameter "pref"
    .parameter "fieldNameId"
    .parameter "v"

    .prologue
    .line 166
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/settings/vpn/VpnProfileEditor;->setSummary(Landroid/preference/Preference;ILjava/lang/String;Z)V

    .line 167
    return-void
.end method

.method protected setSummary(Landroid/preference/Preference;ILjava/lang/String;Z)V
    .locals 5
    .parameter "pref"
    .parameter "fieldNameId"
    .parameter "v"
    .parameter "required"

    .prologue
    .line 171
    invoke-virtual {p1}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 172
    .local v0, c:Landroid/content/Context;
    if-eqz p4, :cond_0

    const v2, 0x7f0804d2

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 175
    .local v1, formatString:Ljava/lang/String;
    :goto_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {p1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 178
    return-void

    .line 172
    .end local v1           #formatString:Ljava/lang/String;
    :cond_0
    const v2, 0x7f0804d3

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    goto :goto_0

    .restart local v1       #formatString:Ljava/lang/String;
    :cond_1
    move-object v2, p3

    .line 175
    goto :goto_1
.end method

.method public validate()Ljava/lang/String;
    .locals 3

    .prologue
    .line 94
    iget-object v1, p0, Lcom/android/settings/vpn/VpnProfileEditor;->mName:Landroid/preference/EditTextPreference;

    const v2, 0x7f0804ba

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/vpn/VpnProfileEditor;->validate(Landroid/preference/Preference;I)Ljava/lang/String;

    move-result-object v0

    .line 95
    .local v0, result:Ljava/lang/String;
    if-eqz v0, :cond_0

    move-object v1, v0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/settings/vpn/VpnProfileEditor;->mServerName:Landroid/preference/EditTextPreference;

    const v2, 0x7f0804cd

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/vpn/VpnProfileEditor;->validate(Landroid/preference/Preference;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method protected validate(Landroid/preference/Preference;I)Ljava/lang/String;
    .locals 7
    .parameter "pref"
    .parameter "fieldNameId"

    .prologue
    .line 153
    invoke-virtual {p1}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 154
    .local v1, c:Landroid/content/Context;
    instance-of v4, p1, Landroid/preference/EditTextPreference;

    if-eqz v4, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/preference/EditTextPreference;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 157
    .local v3, value:Ljava/lang/String;
    :goto_0
    instance-of v4, p1, Landroid/preference/EditTextPreference;

    if-eqz v4, :cond_1

    const v4, 0x7f0804a1

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    .line 160
    .local v2, formatString:Ljava/lang/String;
    :goto_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    :goto_2
    return-object v4

    .line 154
    .end local v2           #formatString:Ljava/lang/String;
    .end local v3           #value:Ljava/lang/String;
    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/preference/ListPreference;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    goto :goto_0

    .line 157
    .restart local v3       #value:Ljava/lang/String;
    :cond_1
    const v4, 0x7f0804a2

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    goto :goto_1

    .line 160
    .restart local v2       #formatString:Ljava/lang/String;
    :cond_2
    const/4 v4, 0x0

    goto :goto_2
.end method
