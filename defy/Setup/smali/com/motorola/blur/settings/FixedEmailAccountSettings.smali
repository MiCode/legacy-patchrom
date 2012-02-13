.class public Lcom/motorola/blur/settings/FixedEmailAccountSettings;
.super Lcom/motorola/blur/settings/SNAccountSettings;
.source "FixedEmailAccountSettings.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FEAccountSettings"


# instance fields
.field private mAccountInfoUpdated:Z

.field private mOldPassword:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;J)V
    .locals 1
    .parameter "context"
    .parameter "accountId"

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Lcom/motorola/blur/settings/SNAccountSettings;-><init>(Landroid/content/Context;J)V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/blur/settings/FixedEmailAccountSettings;->mOldPassword:Ljava/lang/String;

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/blur/settings/FixedEmailAccountSettings;->mAccountInfoUpdated:Z

    .line 34
    return-void
.end method

.method private updateGAMS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "accountId"
    .parameter "accountPrettyName"
    .parameter "userPrettyName"

    .prologue
    .line 122
    iget-object v5, p0, Lcom/motorola/blur/settings/FixedEmailAccountSettings;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    .line 123
    .local v1, accountManager:Landroid/accounts/AccountManager;
    const-string v5, "com.motorola.blur.provider"

    invoke-virtual {v1, v5}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v2

    .line 124
    .local v2, accounts:[Landroid/accounts/Account;
    const/4 v3, 0x0

    .local v3, i:I
    array-length v4, v2

    .local v4, size:I
    :goto_0
    if-ge v3, v4, :cond_0

    .line 125
    aget-object v0, v2, v3

    .line 126
    .local v0, account:Landroid/accounts/Account;
    const-string v5, "account"

    invoke-virtual {v1, v0, v5}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 127
    const-string v5, "account_pretty_name"

    invoke-virtual {v1, v0, v5, p2}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    const-string v5, "user_pretty_name"

    invoke-virtual {v1, v0, v5, p3}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    .end local v0           #account:Landroid/accounts/Account;
    :cond_0
    return-void

    .line 124
    .restart local v0       #account:Landroid/accounts/Account;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getUserPrettyName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/motorola/blur/settings/FixedEmailAccountSettings;->mUserPrettyName:Ljava/lang/String;

    return-object v0
.end method

.method public isAuthRequired()Z
    .locals 1

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/motorola/blur/settings/FixedEmailAccountSettings;->mPasswordUpdated:Z

    return v0
.end method

.method public revertDataInDB()V
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/blur/settings/FixedEmailAccountSettings;->mPasswordUpdated:Z

    .line 52
    iget-object v0, p0, Lcom/motorola/blur/settings/FixedEmailAccountSettings;->mOldPassword:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/motorola/blur/settings/FixedEmailAccountSettings;->mOldPassword:Ljava/lang/String;

    iput-object v0, p0, Lcom/motorola/blur/settings/FixedEmailAccountSettings;->mPassword:Ljava/lang/String;

    .line 55
    :cond_0
    return-void
.end method

.method public saveForAuthentication()Z
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 59
    const-wide/16 v3, -0x1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 60
    .local v0, activeServiceId:Ljava/lang/Long;
    const/4 v2, 0x0

    .line 62
    .local v2, values:Landroid/content/ContentValues;
    iget-object v3, p0, Lcom/motorola/blur/settings/FixedEmailAccountSettings;->mServiceIds:[J

    array-length v3, v3

    sub-int v1, v3, v7

    .local v1, currentService:I
    :goto_0
    if-ltz v1, :cond_2

    .line 63
    iget-object v3, p0, Lcom/motorola/blur/settings/FixedEmailAccountSettings;->mActiveServiceIds:[J

    aget-wide v3, v3, v1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 67
    iget-boolean v3, p0, Lcom/motorola/blur/settings/FixedEmailAccountSettings;->mPasswordUpdated:Z

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_1

    .line 68
    if-nez v2, :cond_0

    .line 69
    new-instance v2, Landroid/content/ContentValues;

    .end local v2           #values:Landroid/content/ContentValues;
    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 70
    .restart local v2       #values:Landroid/content/ContentValues;
    :cond_0
    const-string v3, "password"

    iget-object v4, p0, Lcom/motorola/blur/settings/FixedEmailAccountSettings;->mPassword:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    iget-object v3, p0, Lcom/motorola/blur/settings/FixedEmailAccountSettings;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/motorola/blur/provider/DeviceSetup$ActiveServices;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4, v2, v8, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 73
    invoke-virtual {v2}, Landroid/content/ContentValues;->clear()V

    .line 62
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 76
    :cond_2
    return v7
.end method

.method public setAccountPrettyName(Ljava/lang/String;)V
    .locals 1
    .parameter "prettyName"

    .prologue
    .line 137
    iput-object p1, p0, Lcom/motorola/blur/settings/FixedEmailAccountSettings;->mAccountPrettyName:Ljava/lang/String;

    .line 138
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/blur/settings/FixedEmailAccountSettings;->mAccountInfoUpdated:Z

    return-void
.end method

.method public setPassword(Ljava/lang/String;I)V
    .locals 1
    .parameter "password"
    .parameter "index"

    .prologue
    .line 43
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/settings/FixedEmailAccountSettings;->mPassword:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/motorola/blur/settings/FixedEmailAccountSettings;->mPassword:Ljava/lang/String;

    iput-object v0, p0, Lcom/motorola/blur/settings/FixedEmailAccountSettings;->mOldPassword:Ljava/lang/String;

    .line 45
    iput-object p1, p0, Lcom/motorola/blur/settings/FixedEmailAccountSettings;->mPassword:Ljava/lang/String;

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/blur/settings/FixedEmailAccountSettings;->mPasswordUpdated:Z

    .line 48
    :cond_0
    return-void
.end method

.method public setUserPrettyName(Ljava/lang/String;)V
    .locals 1
    .parameter "prettyName"

    .prologue
    .line 142
    iput-object p1, p0, Lcom/motorola/blur/settings/FixedEmailAccountSettings;->mUserPrettyName:Ljava/lang/String;

    .line 143
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/blur/settings/FixedEmailAccountSettings;->mAccountInfoUpdated:Z

    .line 144
    return-void
.end method

.method public writeDataToDB(Z)Z
    .locals 12
    .parameter "force"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 81
    const/4 v2, 0x0

    .line 82
    .local v2, isSaved:Z
    const-wide/16 v6, -0x1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 83
    .local v0, activeServiceId:Ljava/lang/Long;
    const/4 v5, 0x0

    .line 86
    .local v5, values:Landroid/content/ContentValues;
    if-nez v5, :cond_0

    .line 87
    new-instance v5, Landroid/content/ContentValues;

    .end local v5           #values:Landroid/content/ContentValues;
    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 90
    .restart local v5       #values:Landroid/content/ContentValues;
    :cond_0
    if-nez p1, :cond_1

    iget-boolean v6, p0, Lcom/motorola/blur/settings/FixedEmailAccountSettings;->mPasswordUpdated:Z

    if-eqz v6, :cond_5

    .line 91
    :cond_1
    iget-object v6, p0, Lcom/motorola/blur/settings/FixedEmailAccountSettings;->mServiceIds:[J

    array-length v6, v6

    sub-int v1, v6, v11

    .local v1, currentService:I
    :goto_0
    if-ltz v1, :cond_5

    .line 92
    iget-object v6, p0, Lcom/motorola/blur/settings/FixedEmailAccountSettings;->mActiveServiceIds:[J

    aget-wide v6, v6, v1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 95
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_4

    .line 96
    if-nez v5, :cond_2

    .line 97
    new-instance v5, Landroid/content/ContentValues;

    .end local v5           #values:Landroid/content/ContentValues;
    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 98
    .restart local v5       #values:Landroid/content/ContentValues;
    :cond_2
    const-string v6, "password"

    iget-object v7, p0, Lcom/motorola/blur/settings/FixedEmailAccountSettings;->mPassword:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const-string v6, "dirty"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 100
    iget-object v6, p0, Lcom/motorola/blur/settings/FixedEmailAccountSettings;->mResolver:Landroid/content/ContentResolver;

    sget-object v7, Lcom/motorola/blur/provider/DeviceSetup$ActiveServices;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v6, v7, v5, v10, v10}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 103
    invoke-virtual {v5}, Landroid/content/ContentValues;->clear()V

    .line 104
    iget-boolean v6, p0, Lcom/motorola/blur/settings/FixedEmailAccountSettings;->mAccountInfoUpdated:Z

    if-eqz v6, :cond_4

    .line 105
    const-string v6, "account_pretty_name"

    iget-object v7, p0, Lcom/motorola/blur/settings/FixedEmailAccountSettings;->mAccountPrettyName:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const-string v6, "user_pretty_name"

    iget-object v7, p0, Lcom/motorola/blur/settings/FixedEmailAccountSettings;->mUserPrettyName:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    iget-wide v6, p0, Lcom/motorola/blur/settings/FixedEmailAccountSettings;->mAccountId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    .line 108
    .local v3, sAccountId:Ljava/lang/String;
    iget-object v6, p0, Lcom/motorola/blur/settings/FixedEmailAccountSettings;->mResolver:Landroid/content/ContentResolver;

    sget-object v7, Lcom/motorola/blur/provider/DeviceSetup$Accounts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v7, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v6, v7, v5, v10, v10}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 109
    .local v4, updated:I
    if-ne v4, v11, :cond_3

    .line 110
    iget-object v6, p0, Lcom/motorola/blur/settings/FixedEmailAccountSettings;->mAccountPrettyName:Ljava/lang/String;

    iget-object v7, p0, Lcom/motorola/blur/settings/FixedEmailAccountSettings;->mUserPrettyName:Ljava/lang/String;

    invoke-direct {p0, v3, v6, v7}, Lcom/motorola/blur/settings/FixedEmailAccountSettings;->updateGAMS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    :cond_3
    invoke-virtual {v5}, Landroid/content/ContentValues;->clear()V

    .line 91
    .end local v3           #sAccountId:Ljava/lang/String;
    .end local v4           #updated:I
    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 117
    .end local v1           #currentService:I
    :cond_5
    const/4 v2, 0x1

    .line 118
    return v2
.end method
