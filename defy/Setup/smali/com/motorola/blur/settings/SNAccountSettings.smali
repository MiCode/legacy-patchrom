.class public Lcom/motorola/blur/settings/SNAccountSettings;
.super Lcom/motorola/blur/settings/AccountSettings;
.source "SNAccountSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/settings/SNAccountSettings$SNAccountProjection;
    }
.end annotation


# static fields
.field private static final SERVICES_SELECTION:Ljava/lang/String; = "providers_id=?"

.field private static final SERVICE_ID:I = 0x0

.field private static final SERVICE_ID_NAME_PROJECTION:[Ljava/lang/String; = null

.field private static final SERVICE_PRETTY_NAME:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SNAccountSettings"


# instance fields
.field protected mActivated:[Z

.field protected mActiveServiceIds:[J

.field private mCaptchaToken:Ljava/lang/String;

.field private mCaptchaUserText:Ljava/lang/String;

.field protected mPasswordUpdated:Z

.field protected mServiceIds:[J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 55
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "pretty_name"

    aput-object v2, v0, v1

    sput-object v0, Lcom/motorola/blur/settings/SNAccountSettings;->SERVICE_ID_NAME_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;J)V
    .locals 2
    .parameter "context"
    .parameter "accountId"

    .prologue
    const/4 v1, 0x0

    .line 71
    invoke-direct {p0, p1, p2, p3}, Lcom/motorola/blur/settings/AccountSettings;-><init>(Landroid/content/Context;J)V

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/blur/settings/SNAccountSettings;->mPasswordUpdated:Z

    .line 67
    iput-object v1, p0, Lcom/motorola/blur/settings/SNAccountSettings;->mCaptchaToken:Ljava/lang/String;

    .line 68
    iput-object v1, p0, Lcom/motorola/blur/settings/SNAccountSettings;->mCaptchaUserText:Ljava/lang/String;

    .line 72
    invoke-virtual {p0}, Lcom/motorola/blur/settings/SNAccountSettings;->initDataFromDB()V

    .line 73
    return-void
.end method

.method private initArrays(I)V
    .locals 1
    .parameter "size"

    .prologue
    .line 143
    new-array v0, p1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/motorola/blur/settings/SNAccountSettings;->mServicePrettyNames:[Ljava/lang/String;

    .line 144
    new-array v0, p1, [J

    iput-object v0, p0, Lcom/motorola/blur/settings/SNAccountSettings;->mServiceIds:[J

    .line 145
    new-array v0, p1, [J

    iput-object v0, p0, Lcom/motorola/blur/settings/SNAccountSettings;->mActiveServiceIds:[J

    .line 146
    new-array v0, p1, [Z

    iput-object v0, p0, Lcom/motorola/blur/settings/SNAccountSettings;->mActivated:[Z

    .line 147
    return-void
.end method


# virtual methods
.method public authenticateFromService(Ljava/lang/String;)Z
    .locals 11
    .parameter "oldPass"

    .prologue
    .line 212
    const/4 v9, 0x1

    .line 213
    .local v9, retryAttempts:B
    const/4 v8, 0x0

    .line 214
    .local v8, requestedService:Z
    iget-boolean v2, p0, Lcom/motorola/blur/settings/SNAccountSettings;->mPasswordUpdated:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/motorola/blur/settings/SNAccountSettings;->mCaptchaToken:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 215
    :cond_0
    iget-object v2, p0, Lcom/motorola/blur/settings/SNAccountSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/motorola/blur/service/blur/devicesetup/client/DeviceSetupWSClientFactory;->getClient(Landroid/content/Context;)Lcom/motorola/blur/service/blur/devicesetup/client/IDeviceSetupWSClient;

    move-result-object v10

    .line 216
    .local v10, wsClient:Lcom/motorola/blur/service/blur/devicesetup/client/IDeviceSetupWSClient;
    iget-object v2, p0, Lcom/motorola/blur/settings/SNAccountSettings;->mResolver:Landroid/content/ContentResolver;

    iget-wide v3, p0, Lcom/motorola/blur/settings/SNAccountSettings;->mProviderId:J

    invoke-static {v2, v3, v4}, Lcom/motorola/blur/provider/DeviceSetup;->getProviderName(Landroid/content/ContentResolver;J)Ljava/lang/String;

    move-result-object v1

    .line 218
    .local v1, providerName:Ljava/lang/String;
    iget-object v2, p0, Lcom/motorola/blur/settings/SNAccountSettings;->mCaptchaToken:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/motorola/blur/settings/SNAccountSettings;->mCaptchaUserText:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 223
    new-instance v0, Lcom/motorola/blur/service/blur/devicesetup/ProviderCredentials;

    iget-object v2, p0, Lcom/motorola/blur/settings/SNAccountSettings;->mEmail:Ljava/lang/String;

    iget-object v3, p0, Lcom/motorola/blur/settings/SNAccountSettings;->mPassword:Ljava/lang/String;

    iget-object v4, p0, Lcom/motorola/blur/settings/SNAccountSettings;->mCaptchaToken:Ljava/lang/String;

    iget-object v5, p0, Lcom/motorola/blur/settings/SNAccountSettings;->mCaptchaUserText:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/motorola/blur/service/blur/devicesetup/ProviderCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    .local v0, provCreds:Lcom/motorola/blur/service/blur/devicesetup/ProviderCredentials;
    :goto_0
    const/4 v4, 0x1

    const-wide/16 v5, 0x7b

    const/4 v7, 0x0

    move-object v2, v10

    move-object v3, v0

    invoke-interface/range {v2 .. v7}, Lcom/motorola/blur/service/blur/devicesetup/client/IDeviceSetupWSClient;->updateProviderCredentials(Lcom/motorola/blur/service/blur/devicesetup/ProviderCredentials;BJLjava/lang/String;)Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    .line 229
    const/4 v8, 0x1

    .line 231
    .end local v0           #provCreds:Lcom/motorola/blur/service/blur/devicesetup/ProviderCredentials;
    .end local v1           #providerName:Ljava/lang/String;
    .end local v10           #wsClient:Lcom/motorola/blur/service/blur/devicesetup/client/IDeviceSetupWSClient;
    :cond_1
    return v8

    .line 226
    .restart local v1       #providerName:Ljava/lang/String;
    .restart local v10       #wsClient:Lcom/motorola/blur/service/blur/devicesetup/client/IDeviceSetupWSClient;
    :cond_2
    new-instance v0, Lcom/motorola/blur/service/blur/devicesetup/ProviderCredentials;

    iget-object v2, p0, Lcom/motorola/blur/settings/SNAccountSettings;->mEmail:Ljava/lang/String;

    iget-object v3, p0, Lcom/motorola/blur/settings/SNAccountSettings;->mPassword:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/motorola/blur/service/blur/devicesetup/ProviderCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .restart local v0       #provCreds:Lcom/motorola/blur/service/blur/devicesetup/ProviderCredentials;
    goto :goto_0
.end method

.method public getAccountPrettyName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/motorola/blur/settings/SNAccountSettings;->mAccountPrettyName:Ljava/lang/String;

    return-object v0
.end method

.method public getActivated(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 265
    const/4 v0, 0x0

    return v0
.end method

.method public getCapability(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 192
    const/4 v0, -0x1

    return v0
.end method

.method public getEmailRetentionPolicy()I
    .locals 1

    .prologue
    .line 271
    const/4 v0, 0x0

    return v0
.end method

.method public getProviderPrettyName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/motorola/blur/settings/SNAccountSettings;->mProviderPrettyName:Ljava/lang/String;

    return-object v0
.end method

.method public getSecure()Z
    .locals 1

    .prologue
    .line 297
    const/4 v0, 0x0

    return v0
.end method

.method public getServerAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 303
    const/4 v0, 0x0

    return-object v0
.end method

.method public getServicePrettyName(I)Ljava/lang/String;
    .locals 1
    .parameter "position"

    .prologue
    .line 202
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUserPrettyName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 356
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVerifyCA()Z
    .locals 1

    .prologue
    .line 309
    const/4 v0, 0x0

    return v0
.end method

.method public initDataFromDB()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v3, 0x0

    .line 78
    iget-object v0, p0, Lcom/motorola/blur/settings/SNAccountSettings;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/motorola/blur/settings/SNAccountSettings;->mUri:Landroid/net/Uri;

    sget-object v2, Lcom/motorola/blur/settings/SNAccountSettings$SNAccountProjection;->PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 79
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 80
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 81
    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 82
    .local v7, providerId:J
    iput-wide v7, p0, Lcom/motorola/blur/settings/SNAccountSettings;->mProviderId:J

    .line 83
    iget-object v0, p0, Lcom/motorola/blur/settings/SNAccountSettings;->mContext:Landroid/content/Context;

    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v7, v8, v1, v3}, Lcom/motorola/blur/util/SimpleEncryptUtil;->decryptBasedOnPolicy(Landroid/content/Context;JLjava/lang/String;[B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/settings/SNAccountSettings;->mPassword:Ljava/lang/String;

    .line 84
    iget-object v0, p0, Lcom/motorola/blur/settings/SNAccountSettings;->mPassword:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/settings/SNAccountSettings;->mPassword:Ljava/lang/String;

    .line 87
    :cond_0
    const/4 v0, 0x5

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/settings/SNAccountSettings;->mEmail:Ljava/lang/String;

    .line 88
    const/16 v0, 0x8

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/motorola/blur/settings/SNAccountSettings;->mError:I

    .line 89
    const/4 v0, 0x4

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/settings/SNAccountSettings;->mProviderPrettyName:Ljava/lang/String;

    .line 90
    const/4 v0, 0x6

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/settings/SNAccountSettings;->mAccountPrettyName:Ljava/lang/String;

    .line 91
    const/4 v0, 0x7

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/settings/SNAccountSettings;->mUserPrettyName:Ljava/lang/String;

    .line 93
    invoke-virtual {p0, v6}, Lcom/motorola/blur/settings/SNAccountSettings;->setUpServices(Landroid/database/Cursor;)V

    .line 95
    .end local v7           #providerId:J
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 97
    :cond_2
    return-void
.end method

.method public isAuthRequired()Z
    .locals 1

    .prologue
    .line 236
    iget-boolean v0, p0, Lcom/motorola/blur/settings/SNAccountSettings;->mPasswordUpdated:Z

    return v0
.end method

.method public isResetRequired()Z
    .locals 1

    .prologue
    .line 350
    const/4 v0, 0x0

    return v0
.end method

.method public revertDataInDB()V
    .locals 0

    .prologue
    .line 151
    return-void
.end method

.method public saveForAuthentication()Z
    .locals 1

    .prologue
    .line 207
    const/4 v0, 0x0

    return v0
.end method

.method public setAccountPrettyName(Ljava/lang/String;)V
    .locals 0
    .parameter "prettyName"

    .prologue
    .line 316
    return-void
.end method

.method public setActivated(IZ)V
    .locals 0
    .parameter "position"
    .parameter "enabled"

    .prologue
    .line 243
    return-void
.end method

.method public setCaptchaInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "captchaToken"
    .parameter "captchaUserText"

    .prologue
    .line 289
    iput-object p1, p0, Lcom/motorola/blur/settings/SNAccountSettings;->mCaptchaToken:Ljava/lang/String;

    .line 290
    iput-object p2, p0, Lcom/motorola/blur/settings/SNAccountSettings;->mCaptchaUserText:Ljava/lang/String;

    .line 292
    return-void
.end method

.method public setEmailAddress(Ljava/lang/String;)V
    .locals 0
    .parameter "email"

    .prologue
    .line 255
    return-void
.end method

.method public setEmailRetentionPolicy(I)V
    .locals 0
    .parameter "policy"

    .prologue
    .line 322
    return-void
.end method

.method public setPassword(Ljava/lang/String;I)V
    .locals 1
    .parameter "password"
    .parameter "index"

    .prologue
    .line 247
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/settings/SNAccountSettings;->mPassword:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 248
    iput-object p1, p0, Lcom/motorola/blur/settings/SNAccountSettings;->mPassword:Ljava/lang/String;

    .line 249
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/blur/settings/SNAccountSettings;->mPasswordUpdated:Z

    .line 251
    :cond_0
    return-void
.end method

.method public setSecure(Z)V
    .locals 0
    .parameter "secure"

    .prologue
    .line 328
    return-void
.end method

.method public setServerAddress(Ljava/lang/String;)V
    .locals 0
    .parameter "address"

    .prologue
    .line 334
    return-void
.end method

.method protected setUpServices(Landroid/database/Cursor;)V
    .locals 14
    .parameter "cursor"

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 107
    iget-object v0, p0, Lcom/motorola/blur/settings/SNAccountSettings;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/motorola/blur/provider/DeviceSetup$Services;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/motorola/blur/settings/SNAccountSettings;->SERVICE_ID_NAME_PROJECTION:[Ljava/lang/String;

    const-string v3, "providers_id=?"

    new-array v4, v13, [Ljava/lang/String;

    iget-wide v10, p0, Lcom/motorola/blur/settings/SNAccountSettings;->mProviderId:J

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v12

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 111
    .local v9, servicesCursor:Landroid/database/Cursor;
    const-wide/16 v7, -0x1

    .line 113
    .local v7, currentId:J
    if-eqz v9, :cond_5

    .line 114
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 115
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/motorola/blur/settings/SNAccountSettings;->initArrays(I)V

    .line 116
    const/4 v6, 0x0

    .line 118
    .local v6, arrayPosition:I
    :cond_0
    invoke-interface {v9, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 119
    iget-object v0, p0, Lcom/motorola/blur/settings/SNAccountSettings;->mServicePrettyNames:[Ljava/lang/String;

    invoke-interface {v9, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    .line 121
    iget-object v0, p0, Lcom/motorola/blur/settings/SNAccountSettings;->mServiceIds:[J

    aput-wide v7, v0, v6

    .line 124
    if-eqz p1, :cond_3

    .line 125
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 127
    :cond_1
    invoke-interface {p1, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    cmp-long v0, v0, v7

    if-nez v0, :cond_2

    .line 128
    iget-object v0, p0, Lcom/motorola/blur/settings/SNAccountSettings;->mActiveServiceIds:[J

    const/4 v1, 0x3

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    aput-wide v1, v0, v6

    .line 130
    iget-object v0, p0, Lcom/motorola/blur/settings/SNAccountSettings;->mActivated:[Z

    aput-boolean v13, v0, v6

    .line 132
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 135
    :cond_3
    add-int/lit8 v6, v6, 0x1

    .line 136
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 138
    .end local v6           #arrayPosition:I
    :cond_4
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 140
    :cond_5
    return-void
.end method

.method public setUserPrettyName(Ljava/lang/String;)V
    .locals 0
    .parameter "prettyName"

    .prologue
    .line 363
    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 0
    .parameter "username"

    .prologue
    .line 340
    return-void
.end method

.method public setVerifyCA(Z)V
    .locals 0
    .parameter "verifyCA"

    .prologue
    .line 346
    return-void
.end method

.method public writeDataToDB(Z)Z
    .locals 11
    .parameter "force"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 155
    const/4 v2, 0x0

    .line 156
    .local v2, isSaved:Z
    const-wide/16 v4, -0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 157
    .local v0, activeServiceId:Ljava/lang/Long;
    const/4 v3, 0x0

    .line 160
    .local v3, values:Landroid/content/ContentValues;
    if-nez v3, :cond_0

    .line 161
    new-instance v3, Landroid/content/ContentValues;

    .end local v3           #values:Landroid/content/ContentValues;
    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 164
    .restart local v3       #values:Landroid/content/ContentValues;
    :cond_0
    if-nez p1, :cond_1

    iget-boolean v4, p0, Lcom/motorola/blur/settings/SNAccountSettings;->mPasswordUpdated:Z

    if-eqz v4, :cond_5

    .line 165
    :cond_1
    iget-object v4, p0, Lcom/motorola/blur/settings/SNAccountSettings;->mServiceIds:[J

    array-length v4, v4

    sub-int v1, v4, v9

    .local v1, currentService:I
    :goto_0
    if-ltz v1, :cond_5

    .line 166
    iget-object v4, p0, Lcom/motorola/blur/settings/SNAccountSettings;->mActiveServiceIds:[J

    aget-wide v4, v4, v1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 169
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_3

    .line 170
    if-nez v3, :cond_2

    .line 171
    new-instance v3, Landroid/content/ContentValues;

    .end local v3           #values:Landroid/content/ContentValues;
    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 172
    .restart local v3       #values:Landroid/content/ContentValues;
    :cond_2
    const-string v4, "password"

    iget-object v5, p0, Lcom/motorola/blur/settings/SNAccountSettings;->mPassword:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    const-string v4, "error"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 177
    const-string v4, "dirty"

    iget v5, p0, Lcom/motorola/blur/settings/SNAccountSettings;->mTypeOfAccount:I

    const/4 v6, 0x5

    if-ne v5, v6, :cond_4

    move v5, v8

    :goto_1
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 179
    iget-object v4, p0, Lcom/motorola/blur/settings/SNAccountSettings;->mResolver:Landroid/content/ContentResolver;

    sget-object v5, Lcom/motorola/blur/provider/DeviceSetup$ActiveServices;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5, v3, v10, v10}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 182
    invoke-virtual {v3}, Landroid/content/ContentValues;->clear()V

    .line 165
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_4
    move v5, v9

    .line 177
    goto :goto_1

    .line 186
    .end local v1           #currentService:I
    :cond_5
    const/4 v2, 0x1

    .line 187
    return v2
.end method
