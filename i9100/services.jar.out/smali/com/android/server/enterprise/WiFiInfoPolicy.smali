.class public Lcom/android/server/enterprise/WiFiInfoPolicy;
.super Landroid/app/enterprise/IWiFiInfoPolicy$Stub;
.source "WiFiInfoPolicy.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mWifiConfig:Landroid/net/wifi/WifiConfiguration;

.field private mWifiInfo:Landroid/net/wifi/WifiInfo;

.field private mWifiMgr:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "ctx"

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/app/enterprise/IWiFiInfoPolicy$Stub;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/android/server/enterprise/WiFiInfoPolicy;->mContext:Landroid/content/Context;

    .line 46
    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/WiFiInfoPolicy;->mContext:Landroid/content/Context;

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/android/server/enterprise/WiFiInfoPolicy;->mWifiMgr:Landroid/net/wifi/WifiManager;

    .line 47
    iget-object v1, p0, Lcom/android/server/enterprise/WiFiInfoPolicy;->mWifiMgr:Landroid/net/wifi/WifiManager;

    if-eqz v1, :cond_0

    .line 48
    iget-object v1, p0, Lcom/android/server/enterprise/WiFiInfoPolicy;->mWifiMgr:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/enterprise/WiFiInfoPolicy;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 49
    const-string v1, "WiFiInfoPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WiFiInfoPolicy Construct -"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/enterprise/WiFiInfoPolicy;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    iget-object v1, p0, Lcom/android/server/enterprise/WiFiInfoPolicy;->mWifiMgr:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/enterprise/WiFiInfoPolicy;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    :cond_0
    :goto_0
    return-void

    .line 52
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 53
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public getAnonymousIdValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/server/enterprise/WiFiInfoPolicy;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->anonymous_identity:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBSSID()Ljava/lang/String;
    .locals 2

    .prologue
    .line 137
    const-string v0, "null"

    .line 139
    .local v0, str:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/enterprise/WiFiInfoPolicy;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v1, :cond_0

    .line 140
    iget-object v1, p0, Lcom/android/server/enterprise/WiFiInfoPolicy;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v1

    .line 142
    :goto_0
    return-object v1

    :cond_0
    move-object v1, v0

    goto :goto_0
.end method

.method public getCaCertValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/server/enterprise/WiFiInfoPolicy;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->ca_cert:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getClientCertValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/server/enterprise/WiFiInfoPolicy;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->client_cert:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEapValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/server/enterprise/WiFiInfoPolicy;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->eap:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHiddenSSID()Z
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/server/enterprise/WiFiInfoPolicy;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/android/server/enterprise/WiFiInfoPolicy;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getHiddenSSID()Z

    move-result v0

    .line 134
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIdentityValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/server/enterprise/WiFiInfoPolicy;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->identity:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIpAddress()I
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/server/enterprise/WiFiInfoPolicy;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/android/server/enterprise/WiFiInfoPolicy;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v0

    .line 149
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getLinkSpeed()I
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/server/enterprise/WiFiInfoPolicy;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/android/server/enterprise/WiFiInfoPolicy;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v0

    .line 163
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getMacAddress()Ljava/lang/String;
    .locals 2

    .prologue
    .line 153
    const-string v0, "null"

    .line 154
    .local v0, str:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/enterprise/WiFiInfoPolicy;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v1, :cond_0

    .line 155
    iget-object v1, p0, Lcom/android/server/enterprise/WiFiInfoPolicy;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v1

    .line 157
    :goto_0
    return-object v1

    :cond_0
    move-object v1, v0

    goto :goto_0
.end method

.method public getNetworkId()I
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/server/enterprise/WiFiInfoPolicy;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/android/server/enterprise/WiFiInfoPolicy;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v0

    .line 170
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getPasswordValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/server/enterprise/WiFiInfoPolicy;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->password:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhaseValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/server/enterprise/WiFiInfoPolicy;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->phase2:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrivateKeyValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/server/enterprise/WiFiInfoPolicy;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->private_key:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRssi()I
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/server/enterprise/WiFiInfoPolicy;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/android/server/enterprise/WiFiInfoPolicy;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v0

    .line 177
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getSSID()Ljava/lang/String;
    .locals 2

    .prologue
    .line 122
    const-string v0, "null"

    .line 124
    .local v0, str:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/enterprise/WiFiInfoPolicy;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v1, :cond_0

    .line 125
    iget-object v1, p0, Lcom/android/server/enterprise/WiFiInfoPolicy;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    .line 127
    :goto_0
    return-object v1

    :cond_0
    move-object v1, v0

    goto :goto_0
.end method

.method public getSupplicantState()Landroid/net/wifi/SupplicantState;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/server/enterprise/WiFiInfoPolicy;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/android/server/enterprise/WiFiInfoPolicy;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v0

    .line 184
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getWifiState()I
    .locals 5

    .prologue
    const-string v4, "getWifiState "

    const-string v3, "WiFiInfoPolicy"

    .line 188
    const/4 v0, -0x1

    .line 189
    .local v0, i:I
    const-string v1, "WiFiInfoPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getWifiState "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/enterprise/WiFiInfoPolicy;->mWifiMgr:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iget-object v1, p0, Lcom/android/server/enterprise/WiFiInfoPolicy;->mWifiMgr:Landroid/net/wifi/WifiManager;

    if-eqz v1, :cond_0

    .line 192
    const-string v1, "WiFiInfoPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getWifiState "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/enterprise/WiFiInfoPolicy;->mWifiMgr:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iget-object v1, p0, Lcom/android/server/enterprise/WiFiInfoPolicy;->mWifiMgr:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    .line 200
    :cond_0
    return v0
.end method

.method public setAnonymousIdValue(Ljava/lang/String;)V
    .locals 1
    .parameter "str"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/server/enterprise/WiFiInfoPolicy;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->anonymous_identity:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 83
    return-void
.end method

.method public setCaCertValue(Ljava/lang/String;)V
    .locals 1
    .parameter "str"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/server/enterprise/WiFiInfoPolicy;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->ca_cert:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public setClientCertValue(Ljava/lang/String;)V
    .locals 1
    .parameter "str"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/server/enterprise/WiFiInfoPolicy;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->client_cert:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 71
    return-void
.end method

.method public setEapValue(Ljava/lang/String;)V
    .locals 1
    .parameter "str"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/server/enterprise/WiFiInfoPolicy;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->eap:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public setIdentityValue(Ljava/lang/String;)V
    .locals 1
    .parameter "str"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/server/enterprise/WiFiInfoPolicy;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->identity:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 79
    return-void
.end method

.method public setPasswordValue(Ljava/lang/String;)V
    .locals 1
    .parameter "str"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/server/enterprise/WiFiInfoPolicy;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->password:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method public setPhaseValue(Ljava/lang/String;)V
    .locals 1
    .parameter "str"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/server/enterprise/WiFiInfoPolicy;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->phase2:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public setPrivateKeyValue(Ljava/lang/String;)V
    .locals 1
    .parameter "str"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/server/enterprise/WiFiInfoPolicy;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->private_key:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 75
    return-void
.end method
