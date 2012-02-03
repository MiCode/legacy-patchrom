.class public Lcom/android/settings/vpn/VpnTypeSelection;
.super Landroid/preference/PreferenceActivity;
.source "VpnTypeSelection.java"


# instance fields
.field private mTypeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/vpn/VpnType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/vpn/VpnTypeSelection;->mTypeMap:Ljava/util/Map;

    return-void
.end method

.method private initTypeList()V
    .locals 11

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/android/settings/vpn/VpnTypeSelection;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    .line 55
    .local v6, root:Landroid/preference/PreferenceScreen;
    invoke-static {}, Landroid/net/vpn/VpnManager;->getSupportedVpnTypes()[Landroid/net/vpn/VpnType;

    move-result-object v0

    .local v0, arr$:[Landroid/net/vpn/VpnType;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v7, v0, v2

    .line 56
    .local v7, t:Landroid/net/vpn/VpnType;
    invoke-virtual {v7}, Landroid/net/vpn/VpnType;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    .line 57
    .local v1, displayName:Ljava/lang/String;
    const v8, 0x7f0804b2

    invoke-virtual {p0, v8}, Lcom/android/settings/vpn/VpnTypeSelection;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v1, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 59
    .local v4, message:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/settings/vpn/VpnTypeSelection;->mTypeMap:Ljava/util/Map;

    invoke-interface {v8, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    new-instance v5, Landroid/preference/Preference;

    invoke-direct {v5, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 62
    .local v5, pref:Landroid/preference/Preference;
    invoke-virtual {v5, v4}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 63
    invoke-virtual {v7}, Landroid/net/vpn/VpnType;->getDescriptionId()I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/preference/Preference;->setSummary(I)V

    .line 64
    invoke-virtual {v6, v5}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 55
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 66
    .end local v1           #displayName:Ljava/lang/String;
    .end local v4           #message:Ljava/lang/String;
    .end local v5           #pref:Landroid/preference/Preference;
    .end local v7           #t:Landroid/net/vpn/VpnType;
    :cond_0
    return-void
.end method

.method private setResult(Landroid/net/vpn/VpnType;)V
    .locals 3
    .parameter

    .prologue
    .line 69
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/vpn/VpnSettings;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 70
    const-string v1, "vpn_type"

    invoke-virtual {p1}, Landroid/net/vpn/VpnType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 71
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/vpn/VpnTypeSelection;->setResult(ILandroid/content/Intent;)V

    .line 72
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 40
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    const v0, 0x7f040032

    invoke-virtual {p0, v0}, Lcom/android/settings/vpn/VpnTypeSelection;->addPreferencesFromResource(I)V

    .line 43
    invoke-direct {p0}, Lcom/android/settings/vpn/VpnTypeSelection;->initTypeList()V

    .line 44
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 2
    .parameter "ps"
    .parameter "pref"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/settings/vpn/VpnTypeSelection;->mTypeMap:Ljava/util/Map;

    invoke-virtual {p2}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/vpn/VpnType;

    invoke-direct {p0, v0}, Lcom/android/settings/vpn/VpnTypeSelection;->setResult(Landroid/net/vpn/VpnType;)V

    .line 49
    invoke-virtual {p0}, Lcom/android/settings/vpn/VpnTypeSelection;->finish()V

    .line 50
    const/4 v0, 0x1

    return v0
.end method
