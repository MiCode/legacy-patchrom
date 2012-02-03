.class public Lcom/android/settings/wifi/IwlanNetwork;
.super Landroid/preference/Preference;
.source "IwlanNetwork.java"


# instance fields
.field private defaultPdgDomainName:Ljava/lang/String;

.field private isConnected:Z

.field private pdgAddress:Ljava/lang/String;

.field private pdgDomainName:Ljava/lang/String;


# virtual methods
.method public getDefaultPdgDomainName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/settings/wifi/IwlanNetwork;->defaultPdgDomainName:Ljava/lang/String;

    return-object v0
.end method

.method public getPdgDomainName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/settings/wifi/IwlanNetwork;->pdgDomainName:Ljava/lang/String;

    return-object v0
.end method

.method public getPdgIpAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/settings/wifi/IwlanNetwork;->pdgAddress:Ljava/lang/String;

    return-object v0
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 121
    iget-boolean v0, p0, Lcom/android/settings/wifi/IwlanNetwork;->isConnected:Z

    return v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/android/settings/wifi/IwlanNetwork;->getPdgDomainName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/wifi/IwlanNetwork;->getDefaultPdgDomainName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    invoke-virtual {p0}, Lcom/android/settings/wifi/IwlanNetwork;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0801ca

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/IwlanNetwork;->setTitle(Ljava/lang/CharSequence;)V

    .line 85
    invoke-virtual {p0}, Lcom/android/settings/wifi/IwlanNetwork;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0801cd

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/IwlanNetwork;->setSummary(Ljava/lang/CharSequence;)V

    .line 97
    :goto_0
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 99
    return-void

    .line 89
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/IwlanNetwork;->getPdgDomainName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/IwlanNetwork;->setTitle(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v0, p0, Lcom/android/settings/wifi/IwlanNetwork;->pdgAddress:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/IwlanNetwork;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
