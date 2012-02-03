.class public Lcom/android/server/enterprise/VpnInfoPolicy;
.super Landroid/app/enterprise/IVpnInfoPolicy$Stub;
.source "VpnInfoPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/VpnInfoPolicy$1;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private final KEY_PREFIX_IPSEC_PSK:Ljava/lang/String;

.field private final KEY_PREFIX_L2TP_SECRET:Ljava/lang/String;

.field private final PREF_ADD_VPN:Ljava/lang/String;

.field private final PREF_VPN_LIST:Ljava/lang/String;

.field private final PROFILES_ROOT:Ljava/lang/String;

.field private final PROFILE_OBJ_FILE:Ljava/lang/String;

.field private mAddVpn:Landroid/preference/PreferenceScreen;

.field private mContext:Landroid/content/Context;

.field private mKeyStore:Landroid/security/KeyStore;

.field private mVpnListContainer:Landroid/preference/PreferenceCategory;

.field private mVpnManager:Landroid/net/vpn/VpnManager;

.field private mVpnProfile:Landroid/net/vpn/VpnProfile;

.field private mVpnProfileList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/vpn/VpnProfile;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    const-string v0, "VpnPolicy"

    sput-object v0, Lcom/android/server/enterprise/VpnInfoPolicy;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "ctx"

    .prologue
    .line 89
    invoke-direct {p0}, Landroid/app/enterprise/IVpnInfoPolicy$Stub;-><init>()V

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/net/vpn/VpnManager;->getProfilePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/VpnInfoPolicy;->PROFILES_ROOT:Ljava/lang/String;

    .line 72
    const-string v0, ".pobj"

    iput-object v0, p0, Lcom/android/server/enterprise/VpnInfoPolicy;->PROFILE_OBJ_FILE:Ljava/lang/String;

    .line 74
    const-string v0, "VPN_i"

    iput-object v0, p0, Lcom/android/server/enterprise/VpnInfoPolicy;->KEY_PREFIX_IPSEC_PSK:Ljava/lang/String;

    .line 75
    const-string v0, "VPN_l"

    iput-object v0, p0, Lcom/android/server/enterprise/VpnInfoPolicy;->KEY_PREFIX_L2TP_SECRET:Ljava/lang/String;

    .line 77
    const-string v0, "add_new_vpn"

    iput-object v0, p0, Lcom/android/server/enterprise/VpnInfoPolicy;->PREF_ADD_VPN:Ljava/lang/String;

    .line 78
    const-string v0, "vpn_list"

    iput-object v0, p0, Lcom/android/server/enterprise/VpnInfoPolicy;->PREF_VPN_LIST:Ljava/lang/String;

    .line 87
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/VpnInfoPolicy;->mKeyStore:Landroid/security/KeyStore;

    .line 91
    iput-object p1, p0, Lcom/android/server/enterprise/VpnInfoPolicy;->mContext:Landroid/content/Context;

    .line 92
    new-instance v0, Landroid/net/vpn/VpnManager;

    iget-object v1, p0, Lcom/android/server/enterprise/VpnInfoPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/net/vpn/VpnManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/VpnInfoPolicy;->mVpnManager:Landroid/net/vpn/VpnManager;

    .line 93
    sget-object v0, Lcom/android/server/enterprise/VpnInfoPolicy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Vpn policy Construct -"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/enterprise/VpnInfoPolicy;->mVpnManager:Landroid/net/vpn/VpnManager;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    invoke-direct {p0}, Lcom/android/server/enterprise/VpnInfoPolicy;->retrieveVpnListFromStorage()V

    .line 95
    return-void
.end method

.method private addProfile(Landroid/net/vpn/VpnProfile;)V
    .locals 1
    .parameter "p"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 160
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/VpnInfoPolicy;->setProfileId(Landroid/net/vpn/VpnProfile;)V

    .line 161
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/VpnInfoPolicy;->processSecrets(Landroid/net/vpn/VpnProfile;)V

    .line 162
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/VpnInfoPolicy;->saveProfileToStorage(Landroid/net/vpn/VpnProfile;)V

    .line 164
    iget-object v0, p0, Lcom/android/server/enterprise/VpnInfoPolicy;->mVpnProfileList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    invoke-direct {p0}, Lcom/android/server/enterprise/VpnInfoPolicy;->retrieveVpnListFromStorage()V

    .line 169
    return-void
.end method

.method private checkIdConsistency(Ljava/lang/String;Landroid/net/vpn/VpnProfile;)Z
    .locals 3
    .parameter "dirName"
    .parameter "p"

    .prologue
    .line 127
    invoke-virtual {p2}, Landroid/net/vpn/VpnProfile;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 128
    sget-object v0, Lcom/android/server/enterprise/VpnInfoPolicy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ID inconsistent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " vs "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/net/vpn/VpnProfile;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    const/4 v0, 0x0

    .line 131
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private deserialize(Ljava/io/File;)Landroid/net/vpn/VpnProfile;
    .locals 5
    .parameter "profileObjectFile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 137
    :try_start_0
    new-instance v1, Ljava/io/ObjectInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v3}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 139
    .local v1, ois:Ljava/io/ObjectInputStream;
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/vpn/VpnProfile;

    .line 140
    .local v2, p:Landroid/net/vpn/VpnProfile;
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v2

    .line 144
    .end local v1           #ois:Ljava/io/ObjectInputStream;
    .end local v2           #p:Landroid/net/vpn/VpnProfile;
    :goto_0
    return-object v3

    .line 142
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 143
    .local v0, e:Ljava/lang/ClassNotFoundException;
    sget-object v3, Lcom/android/server/enterprise/VpnInfoPolicy;->TAG:Ljava/lang/String;

    const-string v4, "deserialize a profile"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 144
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private processSecrets(Landroid/net/vpn/VpnProfile;)V
    .locals 10
    .parameter "p"

    .prologue
    const-string v9, "keystore write failed: key="

    .line 191
    sget-object v6, Lcom/android/server/enterprise/VpnInfoPolicy$1;->$SwitchMap$android$net$vpn$VpnType:[I

    invoke-virtual {p1}, Landroid/net/vpn/VpnProfile;->getType()Landroid/net/vpn/VpnType;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/vpn/VpnType;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 219
    :goto_0
    return-void

    .line 193
    :pswitch_0
    move-object v0, p1

    check-cast v0, Landroid/net/vpn/L2tpIpsecPskProfile;

    move-object v4, v0

    .line 194
    .local v4, pskProfile:Landroid/net/vpn/L2tpIpsecPskProfile;
    invoke-virtual {v4}, Landroid/net/vpn/L2tpIpsecPskProfile;->getPresharedKey()Ljava/lang/String;

    move-result-object v3

    .line 195
    .local v3, presharedKey:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "VPN_i"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/net/vpn/VpnProfile;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 196
    .local v1, key:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/android/server/enterprise/VpnInfoPolicy;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v6, v1, v3}, Landroid/security/KeyStore;->put(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 198
    sget-object v6, Lcom/android/server/enterprise/VpnInfoPolicy;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "keystore write failed: key="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :cond_0
    invoke-virtual {v4, v1}, Landroid/net/vpn/L2tpIpsecPskProfile;->setPresharedKey(Ljava/lang/String;)V

    .line 205
    .end local v1           #key:Ljava/lang/String;
    .end local v3           #presharedKey:Ljava/lang/String;
    .end local v4           #pskProfile:Landroid/net/vpn/L2tpIpsecPskProfile;
    :pswitch_1
    move-object v0, p1

    check-cast v0, Landroid/net/vpn/L2tpProfile;

    move-object v2, v0

    .line 206
    .local v2, l2tpProfile:Landroid/net/vpn/L2tpProfile;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "VPN_l"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/net/vpn/VpnProfile;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 207
    .restart local v1       #key:Ljava/lang/String;
    invoke-virtual {v2}, Landroid/net/vpn/L2tpProfile;->isSecretEnabled()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 208
    invoke-virtual {v2}, Landroid/net/vpn/L2tpProfile;->getSecretString()Ljava/lang/String;

    move-result-object v5

    .line 209
    .local v5, secret:Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/android/server/enterprise/VpnInfoPolicy;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v6, v1, v5}, Landroid/security/KeyStore;->put(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 211
    sget-object v6, Lcom/android/server/enterprise/VpnInfoPolicy;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "keystore write failed: key="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    :cond_1
    invoke-virtual {v2, v1}, Landroid/net/vpn/L2tpProfile;->setSecretString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 215
    .end local v5           #secret:Ljava/lang/String;
    :cond_2
    iget-object v6, p0, Lcom/android/server/enterprise/VpnInfoPolicy;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v6, v1}, Landroid/security/KeyStore;->delete(Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 191
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private removeProfileFromStorage(Landroid/net/vpn/VpnProfile;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 241
    return-void
.end method

.method private retrieveVpnListFromStorage()V
    .locals 13

    .prologue
    .line 99
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v9}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v9

    iput-object v9, p0, Lcom/android/server/enterprise/VpnInfoPolicy;->mVpnProfileList:Ljava/util/List;

    .line 102
    new-instance v8, Ljava/io/File;

    iget-object v9, p0, Lcom/android/server/enterprise/VpnInfoPolicy;->PROFILES_ROOT:Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 103
    .local v8, root:Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    .line 104
    .local v2, dirs:[Ljava/lang/String;
    sget-object v9, Lcom/android/server/enterprise/VpnInfoPolicy;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "retrieveVpnListFromStorage() -dir:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " -root:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " -list"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/enterprise/VpnInfoPolicy;->mVpnProfileList:Ljava/util/List;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    if-nez v2, :cond_1

    .line 124
    :cond_0
    return-void

    .line 107
    :cond_1
    move-object v0, v2

    .local v0, arr$:[Ljava/lang/String;
    array-length v6, v0

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_0
    if-ge v5, v6, :cond_0

    aget-object v1, v0, v5

    .line 108
    .local v1, dir:Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v8, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v10, ".pobj"

    invoke-direct {v4, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 109
    .local v4, f:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_3

    .line 107
    :cond_2
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 111
    :cond_3
    :try_start_0
    invoke-direct {p0, v4}, Lcom/android/server/enterprise/VpnInfoPolicy;->deserialize(Ljava/io/File;)Landroid/net/vpn/VpnProfile;

    move-result-object v7

    .line 112
    .local v7, p:Landroid/net/vpn/VpnProfile;
    if-eqz v7, :cond_2

    .line 113
    invoke-direct {p0, v1, v7}, Lcom/android/server/enterprise/VpnInfoPolicy;->checkIdConsistency(Ljava/lang/String;Landroid/net/vpn/VpnProfile;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 115
    iget-object v9, p0, Lcom/android/server/enterprise/VpnInfoPolicy;->mVpnProfileList:Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    sget-object v9, Lcom/android/server/enterprise/VpnInfoPolicy;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mVpnProfileList0-"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v7}, Landroid/net/vpn/VpnProfile;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    .end local v7           #p:Landroid/net/vpn/VpnProfile;
    :goto_2
    sget-object v9, Lcom/android/server/enterprise/VpnInfoPolicy;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mVpnProfileList4-"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/enterprise/VpnInfoPolicy;->mVpnProfileList:Ljava/util/List;

    const/4 v12, 0x0

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 117
    :catch_0
    move-exception v9

    move-object v3, v9

    .line 118
    .local v3, e:Ljava/io/IOException;
    sget-object v9, Lcom/android/server/enterprise/VpnInfoPolicy;->TAG:Ljava/lang/String;

    const-string v10, "retrieveVpnListFromStorage()"

    invoke-static {v9, v10, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method private setProfileId(Landroid/net/vpn/VpnProfile;)V
    .locals 6
    .parameter "profile"

    .prologue
    .line 175
    :cond_0
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 177
    .local v1, id:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x8

    if-lt v3, v4, :cond_0

    .line 179
    iget-object v3, p0, Lcom/android/server/enterprise/VpnInfoPolicy;->mVpnProfileList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/vpn/VpnProfile;

    .line 180
    .local v2, p:Landroid/net/vpn/VpnProfile;
    invoke-virtual {v2}, Landroid/net/vpn/VpnProfile;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 181
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/VpnInfoPolicy;->setProfileId(Landroid/net/vpn/VpnProfile;)V

    .line 188
    .end local v2           #p:Landroid/net/vpn/VpnProfile;
    :goto_0
    return-void

    .line 185
    :cond_2
    invoke-virtual {p1, v1}, Landroid/net/vpn/VpnProfile;->setId(Ljava/lang/String;)V

    .line 186
    sget-object v3, Lcom/android/server/enterprise/VpnInfoPolicy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setProfileId-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/server/enterprise/VpnInfoPolicy;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public createProfile(Ljava/lang/String;)V
    .locals 2
    .parameter "type"

    .prologue
    .line 149
    iget-object v1, p0, Lcom/android/server/enterprise/VpnInfoPolicy;->mVpnManager:Landroid/net/vpn/VpnManager;

    const-class v0, Landroid/net/vpn/VpnType;

    invoke-static {v0, p1}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/net/vpn/VpnType;

    invoke-virtual {v1, v0}, Landroid/net/vpn/VpnManager;->createVpnProfile(Landroid/net/vpn/VpnType;)Landroid/net/vpn/VpnProfile;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/VpnInfoPolicy;->mVpnProfile:Landroid/net/vpn/VpnProfile;

    .line 152
    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/VpnInfoPolicy;->mVpnProfile:Landroid/net/vpn/VpnProfile;

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/VpnInfoPolicy;->addProfile(Landroid/net/vpn/VpnProfile;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    :goto_0
    return-void

    .line 154
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/android/server/enterprise/VpnInfoPolicy;->mVpnProfile:Landroid/net/vpn/VpnProfile;

    invoke-virtual {v0}, Landroid/net/vpn/VpnProfile;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcom/android/server/enterprise/VpnInfoPolicy;->mVpnProfile:Landroid/net/vpn/VpnProfile;

    invoke-virtual {v0}, Landroid/net/vpn/VpnProfile;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getProfileDir(Landroid/net/vpn/VpnProfile;)Ljava/lang/String;
    .locals 2
    .parameter "p"

    .prologue
    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/enterprise/VpnInfoPolicy;->PROFILES_ROOT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/vpn/VpnProfile;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServerName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/android/server/enterprise/VpnInfoPolicy;->mVpnProfile:Landroid/net/vpn/VpnProfile;

    invoke-virtual {v0}, Landroid/net/vpn/VpnProfile;->getServerName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/android/server/enterprise/VpnInfoPolicy;->mVpnProfile:Landroid/net/vpn/VpnProfile;

    invoke-virtual {v0}, Landroid/net/vpn/VpnProfile;->getState()Landroid/net/vpn/VpnState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/vpn/VpnState;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 3

    .prologue
    .line 272
    sget-object v0, Lcom/android/server/enterprise/VpnInfoPolicy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "talking with getType policy1-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/enterprise/VpnInfoPolicy;->mVpnProfile:Landroid/net/vpn/VpnProfile;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    invoke-direct {p0}, Lcom/android/server/enterprise/VpnInfoPolicy;->retrieveVpnListFromStorage()V

    .line 275
    sget-object v0, Lcom/android/server/enterprise/VpnInfoPolicy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "talking with getType policy2-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/enterprise/VpnInfoPolicy;->mVpnProfile:Landroid/net/vpn/VpnProfile;

    invoke-virtual {v2}, Landroid/net/vpn/VpnProfile;->getType()Landroid/net/vpn/VpnType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    sget-object v0, Lcom/android/server/enterprise/VpnInfoPolicy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "talking with getType policy3-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/enterprise/VpnInfoPolicy;->mVpnProfile:Landroid/net/vpn/VpnProfile;

    invoke-virtual {v2}, Landroid/net/vpn/VpnProfile;->getType()Landroid/net/vpn/VpnType;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/vpn/VpnType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    iget-object v0, p0, Lcom/android/server/enterprise/VpnInfoPolicy;->mVpnProfile:Landroid/net/vpn/VpnProfile;

    invoke-virtual {v0}, Landroid/net/vpn/VpnProfile;->getType()Landroid/net/vpn/VpnType;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/vpn/VpnType;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method saveProfileToStorage(Landroid/net/vpn/VpnProfile;)V
    .locals 5
    .parameter "p"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 226
    sget-object v2, Lcom/android/server/enterprise/VpnInfoPolicy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "saveProfileToStorage1-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/vpn/VpnProfile;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/VpnInfoPolicy;->getProfileDir(Landroid/net/vpn/VpnProfile;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 228
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 230
    :cond_0
    sget-object v2, Lcom/android/server/enterprise/VpnInfoPolicy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "saveProfileToStorage2-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    new-instance v1, Ljava/io/ObjectOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    new-instance v3, Ljava/io/File;

    const-string v4, ".pobj"

    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 233
    .local v1, oos:Ljava/io/ObjectOutputStream;
    sget-object v2, Lcom/android/server/enterprise/VpnInfoPolicy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "saveProfileToStorage3-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    invoke-virtual {v1, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 235
    sget-object v2, Lcom/android/server/enterprise/VpnInfoPolicy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "saveProfileToStorage4-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/vpn/VpnProfile;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    .line 237
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 1
    .parameter "Id"

    .prologue
    .line 252
    iget-object v0, p0, Lcom/android/server/enterprise/VpnInfoPolicy;->mVpnProfile:Landroid/net/vpn/VpnProfile;

    invoke-virtual {v0, p1}, Landroid/net/vpn/VpnProfile;->setId(Ljava/lang/String;)V

    .line 253
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 244
    iget-object v0, p0, Lcom/android/server/enterprise/VpnInfoPolicy;->mVpnProfile:Landroid/net/vpn/VpnProfile;

    invoke-virtual {v0, p1}, Landroid/net/vpn/VpnProfile;->setName(Ljava/lang/String;)V

    .line 245
    return-void
.end method

.method public setServerName(Ljava/lang/String;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 248
    iget-object v0, p0, Lcom/android/server/enterprise/VpnInfoPolicy;->mVpnProfile:Landroid/net/vpn/VpnProfile;

    invoke-virtual {v0, p1}, Landroid/net/vpn/VpnProfile;->setServerName(Ljava/lang/String;)V

    .line 249
    return-void
.end method

.method public setState(I)V
    .locals 3
    .parameter "state"

    .prologue
    .line 256
    sget-object v0, Lcom/android/server/enterprise/VpnInfoPolicy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setState policy-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    packed-switch p1, :pswitch_data_0

    .line 267
    iget-object v0, p0, Lcom/android/server/enterprise/VpnInfoPolicy;->mVpnProfile:Landroid/net/vpn/VpnProfile;

    sget-object v1, Landroid/net/vpn/VpnState;->UNKNOWN:Landroid/net/vpn/VpnState;

    invoke-virtual {v0, v1}, Landroid/net/vpn/VpnProfile;->setState(Landroid/net/vpn/VpnState;)V

    .line 269
    :goto_0
    return-void

    .line 258
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/enterprise/VpnInfoPolicy;->mVpnProfile:Landroid/net/vpn/VpnProfile;

    sget-object v1, Landroid/net/vpn/VpnState;->CONNECTING:Landroid/net/vpn/VpnState;

    invoke-virtual {v0, v1}, Landroid/net/vpn/VpnProfile;->setState(Landroid/net/vpn/VpnState;)V

    goto :goto_0

    .line 259
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/enterprise/VpnInfoPolicy;->mVpnProfile:Landroid/net/vpn/VpnProfile;

    sget-object v1, Landroid/net/vpn/VpnState;->DISCONNECTING:Landroid/net/vpn/VpnState;

    invoke-virtual {v0, v1}, Landroid/net/vpn/VpnProfile;->setState(Landroid/net/vpn/VpnState;)V

    goto :goto_0

    .line 261
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/enterprise/VpnInfoPolicy;->mVpnProfile:Landroid/net/vpn/VpnProfile;

    sget-object v1, Landroid/net/vpn/VpnState;->CANCELLED:Landroid/net/vpn/VpnState;

    invoke-virtual {v0, v1}, Landroid/net/vpn/VpnProfile;->setState(Landroid/net/vpn/VpnState;)V

    goto :goto_0

    .line 262
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/enterprise/VpnInfoPolicy;->mVpnProfile:Landroid/net/vpn/VpnProfile;

    sget-object v1, Landroid/net/vpn/VpnState;->CONNECTED:Landroid/net/vpn/VpnState;

    invoke-virtual {v0, v1}, Landroid/net/vpn/VpnProfile;->setState(Landroid/net/vpn/VpnState;)V

    goto :goto_0

    .line 264
    :pswitch_4
    iget-object v0, p0, Lcom/android/server/enterprise/VpnInfoPolicy;->mVpnProfile:Landroid/net/vpn/VpnProfile;

    sget-object v1, Landroid/net/vpn/VpnState;->IDLE:Landroid/net/vpn/VpnState;

    invoke-virtual {v0, v1}, Landroid/net/vpn/VpnProfile;->setState(Landroid/net/vpn/VpnState;)V

    goto :goto_0

    .line 265
    :pswitch_5
    iget-object v0, p0, Lcom/android/server/enterprise/VpnInfoPolicy;->mVpnProfile:Landroid/net/vpn/VpnProfile;

    sget-object v1, Landroid/net/vpn/VpnState;->UNUSABLE:Landroid/net/vpn/VpnState;

    invoke-virtual {v0, v1}, Landroid/net/vpn/VpnProfile;->setState(Landroid/net/vpn/VpnState;)V

    goto :goto_0

    .line 257
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
