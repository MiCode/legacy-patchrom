.class public Lcom/motorola/blur/settings/ASAccountSettings;
.super Lcom/motorola/blur/settings/AccountSettings;
.source "ASAccountSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/settings/ASAccountSettings$ActiveSyncService;,
        Lcom/motorola/blur/settings/ASAccountSettings$ASAccountProjection;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;

.field private static final sActiveSyncServices:[Lcom/motorola/blur/settings/ASAccountSettings$ActiveSyncService;


# instance fields
.field private mActivated:[Z

.field private mActiveServiceIds:[J

.field private mActiveServiceUpdated:Z

.field private mCapabilities:[I

.field private mEmailUpdated:Z

.field private mOldPass:Ljava/lang/String;

.field private mOldSecure:I

.field private mOldServer:Ljava/lang/String;

.field private mOldUser:Ljava/lang/String;

.field private mOldVerifyCA:I

.field private mPassUpdated:Z

.field private mPrettyNameUpdated:Z

.field private mRetentionPolicy:I

.field private mSecure:I

.field private mSecurityUpdated:Z

.field private mServerAddress:Ljava/lang/String;

.field private mServerPort:I

.field private mServerUpdated:Z

.field private mServiceIds:[J

.field private mServiceUpdated:Z

.field private mUserUpdated:Z

.field private mVerifyCA:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 69
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/motorola/blur/settings/ASAccountSettings$ActiveSyncService;

    const/4 v1, 0x0

    new-instance v2, Lcom/motorola/blur/settings/ASAccountSettings$ActiveSyncService;

    const v3, 0x7f0c007b

    invoke-direct {v2, v4, v3}, Lcom/motorola/blur/settings/ASAccountSettings$ActiveSyncService;-><init>(II)V

    aput-object v2, v0, v1

    new-instance v1, Lcom/motorola/blur/settings/ASAccountSettings$ActiveSyncService;

    const/4 v2, 0x5

    const v3, 0x7f0c00a4

    invoke-direct {v1, v2, v3}, Lcom/motorola/blur/settings/ASAccountSettings$ActiveSyncService;-><init>(II)V

    aput-object v1, v0, v4

    const/4 v1, 0x2

    new-instance v2, Lcom/motorola/blur/settings/ASAccountSettings$ActiveSyncService;

    const/16 v3, 0xc

    const v4, 0x7f0c00a5

    invoke-direct {v2, v3, v4}, Lcom/motorola/blur/settings/ASAccountSettings$ActiveSyncService;-><init>(II)V

    aput-object v2, v0, v1

    sput-object v0, Lcom/motorola/blur/settings/ASAccountSettings;->sActiveSyncServices:[Lcom/motorola/blur/settings/ASAccountSettings$ActiveSyncService;

    .line 74
    const-string v0, "ASAccountSettings"

    sput-object v0, Lcom/motorola/blur/settings/ASAccountSettings;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;J)V
    .locals 4
    .parameter "context"
    .parameter "accountId"

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 99
    invoke-direct {p0, p1, p2, p3}, Lcom/motorola/blur/settings/AccountSettings;-><init>(Landroid/content/Context;J)V

    .line 79
    const/4 v0, 0x1

    iput v0, p0, Lcom/motorola/blur/settings/ASAccountSettings;->mRetentionPolicy:I

    .line 80
    iput-object v3, p0, Lcom/motorola/blur/settings/ASAccountSettings;->mServerAddress:Ljava/lang/String;

    .line 81
    iput v2, p0, Lcom/motorola/blur/settings/ASAccountSettings;->mServerPort:I

    .line 82
    iput v2, p0, Lcom/motorola/blur/settings/ASAccountSettings;->mSecure:I

    .line 83
    iput v2, p0, Lcom/motorola/blur/settings/ASAccountSettings;->mVerifyCA:I

    .line 84
    iput-object v3, p0, Lcom/motorola/blur/settings/ASAccountSettings;->mOldPass:Ljava/lang/String;

    .line 85
    iput-object v3, p0, Lcom/motorola/blur/settings/ASAccountSettings;->mOldUser:Ljava/lang/String;

    .line 86
    iput-object v3, p0, Lcom/motorola/blur/settings/ASAccountSettings;->mOldServer:Ljava/lang/String;

    .line 87
    iput v2, p0, Lcom/motorola/blur/settings/ASAccountSettings;->mOldSecure:I

    .line 88
    iput v2, p0, Lcom/motorola/blur/settings/ASAccountSettings;->mOldVerifyCA:I

    .line 89
    iput-boolean v1, p0, Lcom/motorola/blur/settings/ASAccountSettings;->mServiceUpdated:Z

    .line 90
    iput-boolean v1, p0, Lcom/motorola/blur/settings/ASAccountSettings;->mActiveServiceUpdated:Z

    .line 91
    iput-boolean v1, p0, Lcom/motorola/blur/settings/ASAccountSettings;->mEmailUpdated:Z

    .line 92
    iput-boolean v1, p0, Lcom/motorola/blur/settings/ASAccountSettings;->mPassUpdated:Z

    .line 93
    iput-boolean v1, p0, Lcom/motorola/blur/settings/ASAccountSettings;->mUserUpdated:Z

    .line 94
    iput-boolean v1, p0, Lcom/motorola/blur/settings/ASAccountSettings;->mServerUpdated:Z

    .line 95
    iput-boolean v1, p0, Lcom/motorola/blur/settings/ASAccountSettings;->mSecurityUpdated:Z

    .line 96
    iput-boolean v1, p0, Lcom/motorola/blur/settings/ASAccountSettings;->mPrettyNameUpdated:Z

    .line 100
    invoke-virtual {p0}, Lcom/motorola/blur/settings/ASAccountSettings;->initDataFromDB()V

    .line 101
    return-void
.end method

.method private initArrays(I)V
    .locals 1
    .parameter "size"

    .prologue
    .line 166
    new-array v0, p1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/motorola/blur/settings/ASAccountSettings;->mServicePrettyNames:[Ljava/lang/String;

    .line 167
    new-array v0, p1, [J

    iput-object v0, p0, Lcom/motorola/blur/settings/ASAccountSettings;->mServiceIds:[J

    .line 168
    new-array v0, p1, [J

    iput-object v0, p0, Lcom/motorola/blur/settings/ASAccountSettings;->mActiveServiceIds:[J

    .line 169
    new-array v0, p1, [I

    iput-object v0, p0, Lcom/motorola/blur/settings/ASAccountSettings;->mCapabilities:[I

    .line 170
    new-array v0, p1, [Z

    iput-object v0, p0, Lcom/motorola/blur/settings/ASAccountSettings;->mActivated:[Z

    .line 171
    return-void
.end method

.method private isPasswordUpdated()Z
    .locals 1

    .prologue
    .line 611
    iget-boolean v0, p0, Lcom/motorola/blur/settings/ASAccountSettings;->mPassUpdated:Z

    return v0
.end method

.method private isSecurityChanged()Z
    .locals 1

    .prologue
    .line 615
    iget-boolean v0, p0, Lcom/motorola/blur/settings/ASAccountSettings;->mSecurityUpdated:Z

    return v0
.end method

.method private isUserServerChanged()Z
    .locals 1

    .prologue
    .line 608
    iget-boolean v0, p0, Lcom/motorola/blur/settings/ASAccountSettings;->mUserUpdated:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/motorola/blur/settings/ASAccountSettings;->mServerUpdated:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private sendValidatedIntents(IJ)V
    .locals 6
    .parameter "currentService"
    .parameter "activeServiceId"

    .prologue
    .line 586
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.motorola.blur.setup.changes.ACTION_VALIDATED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 588
    .local v1, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/motorola/blur/settings/ASAccountSettings;->mCapabilities:[I

    aget v0, v2, p1

    .line 589
    .local v0, capability:I
    const-string v2, "com.motorola.blur.setup.changes.capability.%d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 591
    const-string v2, "capability"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 592
    const-string v2, "_id"

    invoke-virtual {v1, v2, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 594
    const-string v2, "account_id"

    iget-wide v3, p0, Lcom/motorola/blur/settings/ASAccountSettings;->mAccountId:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 596
    const-string v2, "provider_id"

    iget-wide v3, p0, Lcom/motorola/blur/settings/ASAccountSettings;->mProviderId:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 598
    iget-object v2, p0, Lcom/motorola/blur/settings/ASAccountSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 599
    return-void
.end method

.method private setUpServices(Landroid/database/Cursor;)V
    .locals 7
    .parameter "cursor"

    .prologue
    const/4 v6, 0x1

    .line 143
    sget-object v3, Lcom/motorola/blur/settings/ASAccountSettings;->sActiveSyncServices:[Lcom/motorola/blur/settings/ASAccountSettings$ActiveSyncService;

    array-length v2, v3

    .line 144
    .local v2, length:I
    invoke-direct {p0, v2}, Lcom/motorola/blur/settings/ASAccountSettings;->initArrays(I)V

    .line 145
    const/4 v0, -0x1

    .line 146
    .local v0, capabilityId:I
    sub-int v1, v2, v6

    .local v1, currentPos:I
    :goto_0
    if-ltz v1, :cond_3

    .line 147
    iget-object v3, p0, Lcom/motorola/blur/settings/ASAccountSettings;->mServicePrettyNames:[Ljava/lang/String;

    iget-object v4, p0, Lcom/motorola/blur/settings/ASAccountSettings;->mContext:Landroid/content/Context;

    sget-object v5, Lcom/motorola/blur/settings/ASAccountSettings;->sActiveSyncServices:[Lcom/motorola/blur/settings/ASAccountSettings$ActiveSyncService;

    aget-object v5, v5, v1

    iget v5, v5, Lcom/motorola/blur/settings/ASAccountSettings$ActiveSyncService;->prettyNameId:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    .line 148
    sget-object v3, Lcom/motorola/blur/settings/ASAccountSettings;->sActiveSyncServices:[Lcom/motorola/blur/settings/ASAccountSettings$ActiveSyncService;

    aget-object v3, v3, v1

    iget v0, v3, Lcom/motorola/blur/settings/ASAccountSettings$ActiveSyncService;->capabilityId:I

    .line 149
    iget-object v3, p0, Lcom/motorola/blur/settings/ASAccountSettings;->mCapabilities:[I

    aput v0, v3, v1

    .line 150
    if-eqz p1, :cond_2

    .line 151
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 153
    :cond_0
    const/16 v3, 0x8

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-ne v0, v3, :cond_1

    .line 154
    iget-object v3, p0, Lcom/motorola/blur/settings/ASAccountSettings;->mServiceIds:[J

    const/4 v4, 0x0

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    aput-wide v4, v3, v1

    .line 155
    iget-object v3, p0, Lcom/motorola/blur/settings/ASAccountSettings;->mActiveServiceIds:[J

    const/4 v4, 0x5

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    aput-wide v4, v3, v1

    .line 156
    iget-object v3, p0, Lcom/motorola/blur/settings/ASAccountSettings;->mActivated:[Z

    aput-boolean v6, v3, v1

    .line 157
    if-ne v0, v6, :cond_1

    .line 158
    const/16 v3, 0xb

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, p0, Lcom/motorola/blur/settings/ASAccountSettings;->mRetentionPolicy:I

    .line 160
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 146
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 163
    :cond_3
    return-void
.end method


# virtual methods
.method public authenticateFromService(Ljava/lang/String;)Z
    .locals 1
    .parameter "oldPass"

    .prologue
    .line 176
    const/4 v0, 0x0

    return v0
.end method

.method public getAccountPrettyName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 506
    iget-object v0, p0, Lcom/motorola/blur/settings/ASAccountSettings;->mAccountPrettyName:Ljava/lang/String;

    return-object v0
.end method

.method public getActivated(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 574
    iget-object v0, p0, Lcom/motorola/blur/settings/ASAccountSettings;->mActivated:[Z

    aget-boolean v0, v0, p1

    return v0
.end method

.method public getCapability(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 181
    iget-object v0, p0, Lcom/motorola/blur/settings/ASAccountSettings;->mCapabilities:[I

    aget v0, v0, p1

    return v0
.end method

.method public getEmailRetentionPolicy()I
    .locals 1

    .prologue
    .line 579
    iget v0, p0, Lcom/motorola/blur/settings/ASAccountSettings;->mRetentionPolicy:I

    return v0
.end method

.method public getProviderPrettyName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/motorola/blur/settings/ASAccountSettings;->mProviderPrettyName:Ljava/lang/String;

    return-object v0
.end method

.method public getSecure()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 550
    iget v0, p0, Lcom/motorola/blur/settings/ASAccountSettings;->mSecure:I

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getServerAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 561
    iget-object v0, p0, Lcom/motorola/blur/settings/ASAccountSettings;->mServerAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getServicePrettyName(I)Ljava/lang/String;
    .locals 1
    .parameter "position"

    .prologue
    .line 191
    iget-object v0, p0, Lcom/motorola/blur/settings/ASAccountSettings;->mServicePrettyNames:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getUserPrettyName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 626
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVerifyCA()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 539
    iget v0, p0, Lcom/motorola/blur/settings/ASAccountSettings;->mVerifyCA:I

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initDataFromDB()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v3, 0x0

    .line 106
    iget-object v0, p0, Lcom/motorola/blur/settings/ASAccountSettings;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/motorola/blur/settings/ASAccountSettings;->mUri:Landroid/net/Uri;

    sget-object v2, Lcom/motorola/blur/settings/ASAccountSettings$ASAccountProjection;->PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 107
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_3

    .line 108
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 109
    const/4 v0, 0x4

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 110
    .local v7, providerId:J
    iput-wide v7, p0, Lcom/motorola/blur/settings/ASAccountSettings;->mProviderId:J

    .line 111
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/settings/ASAccountSettings;->mUsername:Ljava/lang/String;

    .line 112
    iget-object v0, p0, Lcom/motorola/blur/settings/ASAccountSettings;->mContext:Landroid/content/Context;

    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v7, v8, v1, v3}, Lcom/motorola/blur/util/SimpleEncryptUtil;->decryptBasedOnPolicy(Landroid/content/Context;JLjava/lang/String;[B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/settings/ASAccountSettings;->mPassword:Ljava/lang/String;

    .line 113
    iget-object v0, p0, Lcom/motorola/blur/settings/ASAccountSettings;->mPassword:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/settings/ASAccountSettings;->mPassword:Ljava/lang/String;

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/settings/ASAccountSettings;->mPassword:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 119
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/settings/ASAccountSettings;->mPassword:Ljava/lang/String;

    .line 121
    :cond_1
    const/16 v0, 0xe

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/motorola/blur/settings/ASAccountSettings;->mError:I

    .line 122
    const/4 v0, 0x3

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/settings/ASAccountSettings;->mServerAddress:Ljava/lang/String;

    .line 123
    const/16 v0, 0x9

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/motorola/blur/settings/ASAccountSettings;->mServerPort:I

    .line 124
    const/4 v0, 0x7

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/motorola/blur/settings/ASAccountSettings;->mSecure:I

    .line 125
    const/16 v0, 0xd

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/motorola/blur/settings/ASAccountSettings;->mVerifyCA:I

    .line 126
    const/4 v0, 0x6

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/settings/ASAccountSettings;->mProviderPrettyName:Ljava/lang/String;

    .line 127
    const/16 v0, 0xa

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/settings/ASAccountSettings;->mEmail:Ljava/lang/String;

    .line 128
    const/16 v0, 0xc

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/settings/ASAccountSettings;->mAccountPrettyName:Ljava/lang/String;

    .line 130
    invoke-direct {p0, v6}, Lcom/motorola/blur/settings/ASAccountSettings;->setUpServices(Landroid/database/Cursor;)V

    .line 132
    .end local v7           #providerId:J
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 134
    :cond_3
    return-void
.end method

.method public isAuthRequired()Z
    .locals 1

    .prologue
    .line 196
    invoke-direct {p0}, Lcom/motorola/blur/settings/ASAccountSettings;->isUserServerChanged()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/motorola/blur/settings/ASAccountSettings;->isPasswordUpdated()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/motorola/blur/settings/ASAccountSettings;->isSecurityChanged()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isResetRequired()Z
    .locals 1

    .prologue
    .line 604
    invoke-direct {p0}, Lcom/motorola/blur/settings/ASAccountSettings;->isUserServerChanged()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/motorola/blur/settings/ASAccountSettings;->mEmailUpdated:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public revertDataInDB()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x1

    .line 201
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/blur/settings/ASAccountSettings;->mUserUpdated:Z

    .line 205
    iget-boolean v0, p0, Lcom/motorola/blur/settings/ASAccountSettings;->mPassUpdated:Z

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/motorola/blur/settings/ASAccountSettings;->mOldPass:Ljava/lang/String;

    iput-object v0, p0, Lcom/motorola/blur/settings/ASAccountSettings;->mPassword:Ljava/lang/String;

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/settings/ASAccountSettings;->mOldUser:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 209
    iput-boolean v1, p0, Lcom/motorola/blur/settings/ASAccountSettings;->mUserUpdated:Z

    .line 210
    iget-object v0, p0, Lcom/motorola/blur/settings/ASAccountSettings;->mOldUser:Ljava/lang/String;

    iput-object v0, p0, Lcom/motorola/blur/settings/ASAccountSettings;->mUsername:Ljava/lang/String;

    .line 212
    :cond_1
    iget-object v0, p0, Lcom/motorola/blur/settings/ASAccountSettings;->mOldServer:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 213
    iput-boolean v1, p0, Lcom/motorola/blur/settings/ASAccountSettings;->mServiceUpdated:Z

    .line 214
    iget-object v0, p0, Lcom/motorola/blur/settings/ASAccountSettings;->mOldServer:Ljava/lang/String;

    iput-object v0, p0, Lcom/motorola/blur/settings/ASAccountSettings;->mServerAddress:Ljava/lang/String;

    .line 217
    :cond_2
    iget v0, p0, Lcom/motorola/blur/settings/ASAccountSettings;->mOldSecure:I

    if-eq v0, v2, :cond_3

    .line 218
    iput-boolean v1, p0, Lcom/motorola/blur/settings/ASAccountSettings;->mServiceUpdated:Z

    .line 219
    iput-boolean v1, p0, Lcom/motorola/blur/settings/ASAccountSettings;->mSecurityUpdated:Z

    .line 220
    iget v0, p0, Lcom/motorola/blur/settings/ASAccountSettings;->mOldSecure:I

    iput v0, p0, Lcom/motorola/blur/settings/ASAccountSettings;->mSecure:I

    .line 223
    :cond_3
    iget v0, p0, Lcom/motorola/blur/settings/ASAccountSettings;->mOldVerifyCA:I

    if-eq v0, v2, :cond_4

    .line 224
    iput-boolean v1, p0, Lcom/motorola/blur/settings/ASAccountSettings;->mSecurityUpdated:Z

    .line 225
    iget v0, p0, Lcom/motorola/blur/settings/ASAccountSettings;->mOldVerifyCA:I

    iput v0, p0, Lcom/motorola/blur/settings/ASAccountSettings;->mVerifyCA:I

    .line 227
    :cond_4
    invoke-virtual {p0}, Lcom/motorola/blur/settings/ASAccountSettings;->saveForAuthentication()Z

    .line 228
    return-void
.end method

.method public saveForAuthentication()Z
    .locals 11

    .prologue
    const-wide/16 v9, 0x0

    const-wide/16 v5, -0x1

    const/4 v8, 0x0

    .line 232
    const/4 v2, 0x0

    .line 234
    .local v2, isSaved:Z
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 235
    .local v0, activeServiceId:Ljava/lang/Long;
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 236
    .local v3, serviceId:Ljava/lang/Long;
    const/4 v4, 0x0

    .line 238
    .local v4, values:Landroid/content/ContentValues;
    iget-object v5, p0, Lcom/motorola/blur/settings/ASAccountSettings;->mServiceIds:[J

    array-length v5, v5

    const/4 v6, 0x1

    sub-int v1, v5, v6

    .local v1, currentService:I
    :goto_0
    if-ltz v1, :cond_5

    .line 239
    iget-object v5, p0, Lcom/motorola/blur/settings/ASAccountSettings;->mActiveServiceIds:[J

    aget-wide v5, v5, v1

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 240
    iget-object v5, p0, Lcom/motorola/blur/settings/ASAccountSettings;->mServiceIds:[J

    aget-wide v5, v5, v1

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 245
    iget-boolean v5, p0, Lcom/motorola/blur/settings/ASAccountSettings;->mServiceUpdated:Z

    if-eqz v5, :cond_1

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v5, v5, v9

    if-lez v5, :cond_1

    .line 246
    if-nez v4, :cond_0

    .line 247
    new-instance v4, Landroid/content/ContentValues;

    .end local v4           #values:Landroid/content/ContentValues;
    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 248
    .restart local v4       #values:Landroid/content/ContentValues;
    :cond_0
    const-string v5, "server_address"

    iget-object v6, p0, Lcom/motorola/blur/settings/ASAccountSettings;->mServerAddress:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    const-string v5, "secure"

    iget v6, p0, Lcom/motorola/blur/settings/ASAccountSettings;->mSecure:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 250
    iget-object v5, p0, Lcom/motorola/blur/settings/ASAccountSettings;->mResolver:Landroid/content/ContentResolver;

    sget-object v6, Lcom/motorola/blur/provider/DeviceSetup$Services;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6, v4, v8, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 252
    invoke-virtual {v4}, Landroid/content/ContentValues;->clear()V

    .line 257
    :cond_1
    iget-boolean v5, p0, Lcom/motorola/blur/settings/ASAccountSettings;->mUserUpdated:Z

    if-nez v5, :cond_2

    iget-boolean v5, p0, Lcom/motorola/blur/settings/ASAccountSettings;->mPassUpdated:Z

    if-nez v5, :cond_2

    iget-boolean v5, p0, Lcom/motorola/blur/settings/ASAccountSettings;->mSecurityUpdated:Z

    if-eqz v5, :cond_4

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v5, v5, v9

    if-lez v5, :cond_4

    .line 258
    if-nez v4, :cond_3

    .line 259
    new-instance v4, Landroid/content/ContentValues;

    .end local v4           #values:Landroid/content/ContentValues;
    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 260
    .restart local v4       #values:Landroid/content/ContentValues;
    :cond_3
    const-string v5, "username"

    iget-object v6, p0, Lcom/motorola/blur/settings/ASAccountSettings;->mUsername:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    const-string v5, "password"

    iget-object v6, p0, Lcom/motorola/blur/settings/ASAccountSettings;->mPassword:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    const-string v5, "verify_ca"

    iget v6, p0, Lcom/motorola/blur/settings/ASAccountSettings;->mVerifyCA:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 263
    iget-object v5, p0, Lcom/motorola/blur/settings/ASAccountSettings;->mResolver:Landroid/content/ContentResolver;

    sget-object v6, Lcom/motorola/blur/provider/DeviceSetup$ActiveServices;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6, v4, v8, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 265
    invoke-virtual {v4}, Landroid/content/ContentValues;->clear()V

    .line 238
    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_0

    .line 268
    :cond_5
    return v2
.end method

.method public setAccountPrettyName(Ljava/lang/String;)V
    .locals 1
    .parameter "prettyName"

    .prologue
    .line 529
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/blur/settings/ASAccountSettings;->mPrettyNameUpdated:Z

    .line 530
    iput-object p1, p0, Lcom/motorola/blur/settings/ASAccountSettings;->mAccountPrettyName:Ljava/lang/String;

    .line 531
    return-void
.end method

.method public setActivated(IZ)V
    .locals 1
    .parameter "position"
    .parameter "enabled"

    .prologue
    .line 273
    iget-object v0, p0, Lcom/motorola/blur/settings/ASAccountSettings;->mActivated:[Z

    aput-boolean p2, v0, p1

    .line 274
    return-void
.end method

.method public setCaptchaInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "captchaToken"
    .parameter "captchaUserText"

    .prologue
    .line 620
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Captcha called on AS account"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setEmailAddress(Ljava/lang/String;)V
    .locals 1
    .parameter "email"

    .prologue
    .line 417
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/settings/ASAccountSettings;->mEmail:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/motorola/blur/settings/ASAccountSettings;->mEmailUpdated:Z

    .line 418
    iput-object p1, p0, Lcom/motorola/blur/settings/ASAccountSettings;->mEmail:Ljava/lang/String;

    .line 419
    return-void

    .line 417
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setEmailRetentionPolicy(I)V
    .locals 1
    .parameter "policy"

    .prologue
    .line 516
    iget v0, p0, Lcom/motorola/blur/settings/ASAccountSettings;->mRetentionPolicy:I

    if-eq p1, v0, :cond_0

    .line 517
    iput p1, p0, Lcom/motorola/blur/settings/ASAccountSettings;->mRetentionPolicy:I

    .line 518
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/blur/settings/ASAccountSettings;->mActiveServiceUpdated:Z

    .line 520
    :cond_0
    return-void
.end method

.method public setPassword(Ljava/lang/String;I)V
    .locals 2
    .parameter "password"
    .parameter "index"

    .prologue
    const/4 v1, 0x1

    .line 284
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/motorola/blur/settings/ASAccountSettings;->mPassword:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/settings/ASAccountSettings;->mPassword:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/settings/ASAccountSettings;->mPassword:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 285
    :cond_0
    iput-boolean v1, p0, Lcom/motorola/blur/settings/ASAccountSettings;->mActiveServiceUpdated:Z

    .line 286
    iput-boolean v1, p0, Lcom/motorola/blur/settings/ASAccountSettings;->mPassUpdated:Z

    .line 287
    iget-object v0, p0, Lcom/motorola/blur/settings/ASAccountSettings;->mOldPass:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 288
    iget-object v0, p0, Lcom/motorola/blur/settings/ASAccountSettings;->mPassword:Ljava/lang/String;

    iput-object v0, p0, Lcom/motorola/blur/settings/ASAccountSettings;->mOldPass:Ljava/lang/String;

    .line 290
    :cond_1
    iput-object p1, p0, Lcom/motorola/blur/settings/ASAccountSettings;->mPassword:Ljava/lang/String;

    .line 292
    :cond_2
    return-void
.end method

.method public setSecure(Z)V
    .locals 3
    .parameter "secure"

    .prologue
    const/4 v2, 0x1

    .line 471
    if-eqz p1, :cond_2

    move v0, v2

    .line 472
    .local v0, sec:I
    :goto_0
    iget v1, p0, Lcom/motorola/blur/settings/ASAccountSettings;->mSecure:I

    if-eq v0, v1, :cond_1

    .line 473
    iput-boolean v2, p0, Lcom/motorola/blur/settings/ASAccountSettings;->mServiceUpdated:Z

    .line 474
    iput-boolean v2, p0, Lcom/motorola/blur/settings/ASAccountSettings;->mSecurityUpdated:Z

    .line 475
    iget v1, p0, Lcom/motorola/blur/settings/ASAccountSettings;->mOldSecure:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 476
    iget v1, p0, Lcom/motorola/blur/settings/ASAccountSettings;->mSecure:I

    iput v1, p0, Lcom/motorola/blur/settings/ASAccountSettings;->mOldSecure:I

    .line 478
    :cond_0
    iput v0, p0, Lcom/motorola/blur/settings/ASAccountSettings;->mSecure:I

    .line 480
    :cond_1
    return-void

    .line 471
    .end local v0           #sec:I
    :cond_2
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public setServerAddress(Ljava/lang/String;)V
    .locals 2
    .parameter "address"

    .prologue
    const/4 v1, 0x1

    .line 450
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/motorola/blur/settings/ASAccountSettings;->mServerAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 451
    iput-boolean v1, p0, Lcom/motorola/blur/settings/ASAccountSettings;->mServerUpdated:Z

    .line 452
    iput-boolean v1, p0, Lcom/motorola/blur/settings/ASAccountSettings;->mServiceUpdated:Z

    .line 453
    iget-object v0, p0, Lcom/motorola/blur/settings/ASAccountSettings;->mOldServer:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 454
    iget-object v0, p0, Lcom/motorola/blur/settings/ASAccountSettings;->mServerAddress:Ljava/lang/String;

    iput-object v0, p0, Lcom/motorola/blur/settings/ASAccountSettings;->mOldServer:Ljava/lang/String;

    .line 456
    :cond_0
    iput-object p1, p0, Lcom/motorola/blur/settings/ASAccountSettings;->mServerAddress:Ljava/lang/String;

    .line 458
    :cond_1
    return-void
.end method

.method public setUserPrettyName(Ljava/lang/String;)V
    .locals 0
    .parameter "prettyName"

    .prologue
    .line 633
    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 2
    .parameter "username"

    .prologue
    const/4 v1, 0x1

    .line 430
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/motorola/blur/settings/ASAccountSettings;->mUsername:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 431
    iput-boolean v1, p0, Lcom/motorola/blur/settings/ASAccountSettings;->mActiveServiceUpdated:Z

    .line 432
    iput-boolean v1, p0, Lcom/motorola/blur/settings/ASAccountSettings;->mUserUpdated:Z

    .line 433
    iget-object v0, p0, Lcom/motorola/blur/settings/ASAccountSettings;->mOldUser:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 434
    iget-object v0, p0, Lcom/motorola/blur/settings/ASAccountSettings;->mUsername:Ljava/lang/String;

    iput-object v0, p0, Lcom/motorola/blur/settings/ASAccountSettings;->mOldUser:Ljava/lang/String;

    .line 436
    :cond_0
    iput-object p1, p0, Lcom/motorola/blur/settings/ASAccountSettings;->mUsername:Ljava/lang/String;

    .line 438
    :cond_1
    return-void
.end method

.method public setVerifyCA(Z)V
    .locals 3
    .parameter "verifyCA"

    .prologue
    const/4 v2, 0x1

    .line 488
    if-eqz p1, :cond_2

    move v0, v2

    .line 489
    .local v0, verify:I
    :goto_0
    iget v1, p0, Lcom/motorola/blur/settings/ASAccountSettings;->mVerifyCA:I

    if-eq v0, v1, :cond_1

    .line 490
    iput-boolean v2, p0, Lcom/motorola/blur/settings/ASAccountSettings;->mActiveServiceUpdated:Z

    .line 491
    iput-boolean v2, p0, Lcom/motorola/blur/settings/ASAccountSettings;->mSecurityUpdated:Z

    .line 492
    iget v1, p0, Lcom/motorola/blur/settings/ASAccountSettings;->mOldVerifyCA:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 493
    iget v1, p0, Lcom/motorola/blur/settings/ASAccountSettings;->mVerifyCA:I

    iput v1, p0, Lcom/motorola/blur/settings/ASAccountSettings;->mOldVerifyCA:I

    .line 495
    :cond_0
    iput v0, p0, Lcom/motorola/blur/settings/ASAccountSettings;->mVerifyCA:I

    .line 497
    :cond_1
    return-void

    .line 488
    .end local v0           #verify:I
    :cond_2
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public writeDataToDB(Z)Z
    .locals 12
    .parameter "force"

    .prologue
    .line 299
    const/4 v4, 0x0

    .line 300
    .local v4, isSaved:Z
    const/4 v3, 0x0

    .line 301
    .local v3, isActivated:Z
    const-wide/16 v8, -0x1

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 302
    .local v0, activeServiceId:Ljava/lang/Long;
    const-wide/16 v8, -0x1

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 303
    .local v5, serviceId:Ljava/lang/Long;
    const/4 v7, 0x0

    .line 306
    .local v7, values:Landroid/content/ContentValues;
    iget-boolean v8, p0, Lcom/motorola/blur/settings/ASAccountSettings;->mEmailUpdated:Z

    if-nez v8, :cond_0

    iget-boolean v8, p0, Lcom/motorola/blur/settings/ASAccountSettings;->mPrettyNameUpdated:Z

    if-nez v8, :cond_0

    if-eqz p1, :cond_2

    .line 307
    :cond_0
    if-nez v7, :cond_1

    .line 308
    new-instance v7, Landroid/content/ContentValues;

    .end local v7           #values:Landroid/content/ContentValues;
    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 310
    .restart local v7       #values:Landroid/content/ContentValues;
    :cond_1
    const-string v8, "email_address"

    iget-object v9, p0, Lcom/motorola/blur/settings/ASAccountSettings;->mEmail:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    const-string v8, "account_pretty_name"

    iget-object v9, p0, Lcom/motorola/blur/settings/ASAccountSettings;->mAccountPrettyName:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    iget-object v8, p0, Lcom/motorola/blur/settings/ASAccountSettings;->mResolver:Landroid/content/ContentResolver;

    sget-object v9, Lcom/motorola/blur/provider/DeviceSetup$Accounts;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v10, p0, Lcom/motorola/blur/settings/ASAccountSettings;->mAccountId:J

    invoke-static {v9, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v7, v10, v11}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 313
    invoke-virtual {v7}, Landroid/content/ContentValues;->clear()V

    .line 316
    :cond_2
    iget-object v8, p0, Lcom/motorola/blur/settings/ASAccountSettings;->mServiceIds:[J

    array-length v8, v8

    const/4 v9, 0x1

    sub-int v1, v8, v9

    .local v1, currentService:I
    :goto_0
    if-ltz v1, :cond_e

    .line 317
    iget-object v8, p0, Lcom/motorola/blur/settings/ASAccountSettings;->mActivated:[Z

    aget-boolean v3, v8, v1

    .line 318
    iget-object v8, p0, Lcom/motorola/blur/settings/ASAccountSettings;->mActiveServiceIds:[J

    aget-wide v8, v8, v1

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 319
    iget-object v8, p0, Lcom/motorola/blur/settings/ASAccountSettings;->mServiceIds:[J

    aget-wide v8, v8, v1

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 324
    iget-boolean v8, p0, Lcom/motorola/blur/settings/ASAccountSettings;->mServiceUpdated:Z

    if-eqz v8, :cond_4

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-lez v8, :cond_4

    .line 325
    if-nez v7, :cond_3

    .line 326
    new-instance v7, Landroid/content/ContentValues;

    .end local v7           #values:Landroid/content/ContentValues;
    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 327
    .restart local v7       #values:Landroid/content/ContentValues;
    :cond_3
    const-string v8, "server_address"

    iget-object v9, p0, Lcom/motorola/blur/settings/ASAccountSettings;->mServerAddress:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    const-string v8, "server_port"

    iget v9, p0, Lcom/motorola/blur/settings/ASAccountSettings;->mServerPort:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 329
    const-string v8, "secure"

    iget v9, p0, Lcom/motorola/blur/settings/ASAccountSettings;->mSecure:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 330
    iget-object v8, p0, Lcom/motorola/blur/settings/ASAccountSettings;->mResolver:Landroid/content/ContentResolver;

    sget-object v9, Lcom/motorola/blur/provider/DeviceSetup$Services;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v7, v10, v11}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 332
    invoke-virtual {v7}, Landroid/content/ContentValues;->clear()V

    .line 337
    :cond_4
    iget-boolean v8, p0, Lcom/motorola/blur/settings/ASAccountSettings;->mActiveServiceUpdated:Z

    if-nez v8, :cond_5

    if-eqz p1, :cond_8

    :cond_5
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-lez v8, :cond_8

    .line 338
    if-nez v7, :cond_6

    .line 339
    new-instance v7, Landroid/content/ContentValues;

    .end local v7           #values:Landroid/content/ContentValues;
    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 340
    .restart local v7       #values:Landroid/content/ContentValues;
    :cond_6
    const-string v8, "username"

    iget-object v9, p0, Lcom/motorola/blur/settings/ASAccountSettings;->mUsername:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    const-string v8, "password"

    iget-object v9, p0, Lcom/motorola/blur/settings/ASAccountSettings;->mPassword:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    iget-object v8, p0, Lcom/motorola/blur/settings/ASAccountSettings;->mCapabilities:[I

    aget v8, v8, v1

    const/4 v9, 0x1

    if-ne v8, v9, :cond_7

    .line 344
    const-string v8, "retention_policy"

    iget v9, p0, Lcom/motorola/blur/settings/ASAccountSettings;->mRetentionPolicy:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 346
    :cond_7
    const-string v8, "verify_ca"

    iget v9, p0, Lcom/motorola/blur/settings/ASAccountSettings;->mVerifyCA:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 347
    iget-object v8, p0, Lcom/motorola/blur/settings/ASAccountSettings;->mResolver:Landroid/content/ContentResolver;

    sget-object v9, Lcom/motorola/blur/provider/DeviceSetup$ActiveServices;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v7, v10, v11}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 350
    invoke-virtual {v7}, Landroid/content/ContentValues;->clear()V

    .line 362
    :cond_8
    if-eqz v3, :cond_d

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const-wide/16 v10, 0x1

    cmp-long v8, v8, v10

    if-gez v8, :cond_d

    .line 363
    if-nez v7, :cond_9

    .line 364
    new-instance v7, Landroid/content/ContentValues;

    .end local v7           #values:Landroid/content/ContentValues;
    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 366
    .restart local v7       #values:Landroid/content/ContentValues;
    :cond_9
    const-string v8, "capability"

    iget-object v9, p0, Lcom/motorola/blur/settings/ASAccountSettings;->mCapabilities:[I

    aget v9, v9, v1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 368
    const-string v8, "server_address"

    iget-object v9, p0, Lcom/motorola/blur/settings/ASAccountSettings;->mServerAddress:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    iget v8, p0, Lcom/motorola/blur/settings/ASAccountSettings;->mServerPort:I

    if-lez v8, :cond_a

    .line 370
    const-string v8, "server_port"

    iget v9, p0, Lcom/motorola/blur/settings/ASAccountSettings;->mServerPort:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 371
    :cond_a
    const-string v8, "pretty_name"

    iget-object v9, p0, Lcom/motorola/blur/settings/ASAccountSettings;->mServicePrettyNames:[Ljava/lang/String;

    aget-object v9, v9, v1

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    const-string v8, "secure"

    iget v9, p0, Lcom/motorola/blur/settings/ASAccountSettings;->mSecure:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 374
    const-string v8, "providers_id"

    iget-wide v9, p0, Lcom/motorola/blur/settings/ASAccountSettings;->mProviderId:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 375
    iget-object v8, p0, Lcom/motorola/blur/settings/ASAccountSettings;->mResolver:Landroid/content/ContentResolver;

    sget-object v9, Lcom/motorola/blur/provider/DeviceSetup$Services;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v8, v9, v7}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v6

    .line 376
    .local v6, serviceUri:Landroid/net/Uri;
    invoke-static {v6}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 377
    invoke-virtual {v7}, Landroid/content/ContentValues;->clear()V

    .line 379
    const-string v8, "service_id"

    invoke-virtual {v7, v8, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 380
    const-string v8, "account"

    iget-wide v9, p0, Lcom/motorola/blur/settings/ASAccountSettings;->mAccountId:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 381
    const-string v8, "username"

    iget-object v9, p0, Lcom/motorola/blur/settings/ASAccountSettings;->mUsername:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    const-string v8, "password"

    iget-object v9, p0, Lcom/motorola/blur/settings/ASAccountSettings;->mPassword:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    const-string v8, "retention_policy"

    iget v9, p0, Lcom/motorola/blur/settings/ASAccountSettings;->mRetentionPolicy:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 384
    const-string v8, "verify_ca"

    iget v9, p0, Lcom/motorola/blur/settings/ASAccountSettings;->mVerifyCA:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 385
    iget-object v8, p0, Lcom/motorola/blur/settings/ASAccountSettings;->mResolver:Landroid/content/ContentResolver;

    sget-object v9, Lcom/motorola/blur/provider/DeviceSetup$ActiveServices;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v8, v9, v7}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    .line 387
    .local v2, insertedUri:Landroid/net/Uri;
    if-eqz v2, :cond_b

    .line 392
    invoke-static {v2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v8

    invoke-direct {p0, v1, v8, v9}, Lcom/motorola/blur/settings/ASAccountSettings;->sendValidatedIntents(IJ)V

    .line 396
    :cond_b
    invoke-virtual {v7}, Landroid/content/ContentValues;->clear()V

    .line 316
    .end local v2           #insertedUri:Landroid/net/Uri;
    .end local v6           #serviceUri:Landroid/net/Uri;
    :cond_c
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_0

    .line 397
    :cond_d
    if-nez v3, :cond_c

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-lez v8, :cond_c

    .line 399
    iget-object v8, p0, Lcom/motorola/blur/settings/ASAccountSettings;->mResolver:Landroid/content/ContentResolver;

    sget-object v9, Lcom/motorola/blur/provider/DeviceSetup$ActiveServices;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v10, v11}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 404
    iget-object v8, p0, Lcom/motorola/blur/settings/ASAccountSettings;->mResolver:Landroid/content/ContentResolver;

    sget-object v9, Lcom/motorola/blur/provider/DeviceSetup$Services;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v10, v11}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1

    .line 410
    :cond_e
    const/4 v4, 0x1

    .line 411
    return v4
.end method
