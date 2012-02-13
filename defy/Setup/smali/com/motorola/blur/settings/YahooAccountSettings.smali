.class public Lcom/motorola/blur/settings/YahooAccountSettings;
.super Lcom/motorola/blur/settings/SNAccountSettings;
.source "YahooAccountSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/settings/YahooAccountSettings$YahooService;
    }
.end annotation


# static fields
.field public static final CONTACTS:I = 0x1

.field public static final EMAIL:I = 0x0

.field private static final TAG:Ljava/lang/String; = "YahooAccountSettings"

.field private static final sYahooServices:[Lcom/motorola/blur/settings/YahooAccountSettings$YahooService;


# instance fields
.field private mAccountInfoUpdated:Z

.field private mCapabilities:[I

.field private mInitActivatedVal:[Z

.field private mServiceUpdated:[Z

.field private mYPasswordUpdated:Z

.field private mYahooPassword:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const v4, 0x7f0c007b

    const/4 v3, 0x3

    .line 37
    new-array v0, v3, [Lcom/motorola/blur/settings/YahooAccountSettings$YahooService;

    const/4 v1, 0x0

    new-instance v2, Lcom/motorola/blur/settings/YahooAccountSettings$YahooService;

    invoke-direct {v2, v3, v4}, Lcom/motorola/blur/settings/YahooAccountSettings$YahooService;-><init>(II)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/motorola/blur/settings/YahooAccountSettings$YahooService;

    const/4 v3, 0x4

    invoke-direct {v2, v3, v4}, Lcom/motorola/blur/settings/YahooAccountSettings$YahooService;-><init>(II)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lcom/motorola/blur/settings/YahooAccountSettings$YahooService;

    const/4 v3, 0x5

    const v4, 0x7f0c00a4

    invoke-direct {v2, v3, v4}, Lcom/motorola/blur/settings/YahooAccountSettings$YahooService;-><init>(II)V

    aput-object v2, v0, v1

    sput-object v0, Lcom/motorola/blur/settings/YahooAccountSettings;->sYahooServices:[Lcom/motorola/blur/settings/YahooAccountSettings$YahooService;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;J)V
    .locals 1
    .parameter "context"
    .parameter "accountId"

    .prologue
    const/4 v0, 0x0

    .line 61
    invoke-direct {p0, p1, p2, p3}, Lcom/motorola/blur/settings/SNAccountSettings;-><init>(Landroid/content/Context;J)V

    .line 48
    iput-boolean v0, p0, Lcom/motorola/blur/settings/YahooAccountSettings;->mYPasswordUpdated:Z

    .line 50
    iput-boolean v0, p0, Lcom/motorola/blur/settings/YahooAccountSettings;->mAccountInfoUpdated:Z

    .line 52
    const/4 v0, 0x2

    new-array v0, v0, [Z

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/motorola/blur/settings/YahooAccountSettings;->mServiceUpdated:[Z

    .line 62
    return-void

    .line 52
    nop

    :array_0
    .array-data 0x1
        0x0t
        0x0t
    .end array-data
.end method

.method private initArrays(II)V
    .locals 1
    .parameter "internalSize"
    .parameter "externalSize"

    .prologue
    .line 112
    new-array v0, p2, [Ljava/lang/String;

    iput-object v0, p0, Lcom/motorola/blur/settings/YahooAccountSettings;->mServicePrettyNames:[Ljava/lang/String;

    .line 113
    new-array v0, p1, [J

    iput-object v0, p0, Lcom/motorola/blur/settings/YahooAccountSettings;->mServiceIds:[J

    .line 114
    new-array v0, p1, [J

    iput-object v0, p0, Lcom/motorola/blur/settings/YahooAccountSettings;->mActiveServiceIds:[J

    .line 115
    new-array v0, p1, [I

    iput-object v0, p0, Lcom/motorola/blur/settings/YahooAccountSettings;->mCapabilities:[I

    .line 116
    new-array v0, p2, [Z

    iput-object v0, p0, Lcom/motorola/blur/settings/YahooAccountSettings;->mActivated:[Z

    .line 117
    new-array v0, p2, [Z

    iput-object v0, p0, Lcom/motorola/blur/settings/YahooAccountSettings;->mServiceUpdated:[Z

    .line 118
    new-array v0, p1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/motorola/blur/settings/YahooAccountSettings;->mYahooPassword:[Ljava/lang/String;

    .line 119
    new-array v0, p2, [Z

    iput-object v0, p0, Lcom/motorola/blur/settings/YahooAccountSettings;->mInitActivatedVal:[Z

    .line 120
    return-void
.end method

.method private isActivated(I)Z
    .locals 3
    .parameter "currentService"

    .prologue
    const/4 v2, 0x0

    .line 309
    iget-object v0, p0, Lcom/motorola/blur/settings/YahooAccountSettings;->mCapabilities:[I

    aget v0, v0, p1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/motorola/blur/settings/YahooAccountSettings;->mCapabilities:[I

    aget v1, v1, p1

    if-ne v0, v1, :cond_1

    .line 311
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/settings/YahooAccountSettings;->mActivated:[Z

    aget-boolean v0, v0, v2

    .line 315
    :goto_0
    return v0

    .line 312
    :cond_1
    iget-object v0, p0, Lcom/motorola/blur/settings/YahooAccountSettings;->mCapabilities:[I

    aget v0, v0, p1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    .line 313
    iget-object v0, p0, Lcom/motorola/blur/settings/YahooAccountSettings;->mActivated:[Z

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    .line 315
    goto :goto_0
.end method

.method private isServiceUpdated(I)Z
    .locals 3
    .parameter "currentService"

    .prologue
    const/4 v2, 0x0

    .line 320
    iget-object v0, p0, Lcom/motorola/blur/settings/YahooAccountSettings;->mCapabilities:[I

    aget v0, v0, p1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/motorola/blur/settings/YahooAccountSettings;->mCapabilities:[I

    aget v1, v1, p1

    if-ne v0, v1, :cond_1

    .line 322
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/settings/YahooAccountSettings;->mServiceUpdated:[Z

    aget-boolean v0, v0, v2

    .line 326
    :goto_0
    return v0

    .line 323
    :cond_1
    iget-object v0, p0, Lcom/motorola/blur/settings/YahooAccountSettings;->mCapabilities:[I

    aget v0, v0, p1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    .line 324
    iget-object v0, p0, Lcom/motorola/blur/settings/YahooAccountSettings;->mServiceUpdated:[Z

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    .line 326
    goto :goto_0
.end method

.method private setYahooPassword(Ljava/lang/String;I)V
    .locals 2
    .parameter "password"
    .parameter "actualIndex"

    .prologue
    const/4 v1, 0x1

    .line 175
    iget-object v0, p0, Lcom/motorola/blur/settings/YahooAccountSettings;->mYahooPassword:[Ljava/lang/String;

    aget-object v0, v0, p2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/settings/YahooAccountSettings;->mYahooPassword:[Ljava/lang/String;

    aget-object v0, v0, p2

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/settings/YahooAccountSettings;->mYahooPassword:[Ljava/lang/String;

    aput-object p1, v0, p2

    .line 178
    iput-boolean v1, p0, Lcom/motorola/blur/settings/YahooAccountSettings;->mYPasswordUpdated:Z

    .line 181
    :cond_1
    return-void
.end method


# virtual methods
.method public getActivated(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 365
    iget-object v0, p0, Lcom/motorola/blur/settings/YahooAccountSettings;->mActivated:[Z

    aget-boolean v0, v0, p1

    return v0
.end method

.method public getInitialActivatedVal(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 369
    iget-object v0, p0, Lcom/motorola/blur/settings/YahooAccountSettings;->mInitActivatedVal:[Z

    aget-boolean v0, v0, p1

    return v0
.end method

.method public getServiceCount()I
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lcom/motorola/blur/settings/YahooAccountSettings;->mServicePrettyNames:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getServicePrettyName(I)Ljava/lang/String;
    .locals 1
    .parameter "position"

    .prologue
    .line 360
    iget-object v0, p0, Lcom/motorola/blur/settings/YahooAccountSettings;->mServicePrettyNames:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getUserPrettyName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lcom/motorola/blur/settings/YahooAccountSettings;->mUserPrettyName:Ljava/lang/String;

    return-object v0
.end method

.method public isAuthRequired()Z
    .locals 3

    .prologue
    .line 124
    iget-boolean v1, p0, Lcom/motorola/blur/settings/YahooAccountSettings;->mYPasswordUpdated:Z

    .line 125
    .local v1, needsAuth:Z
    const/4 v0, 0x0

    .local v0, currentPos:I
    :goto_0
    iget-object v2, p0, Lcom/motorola/blur/settings/YahooAccountSettings;->mActivated:[Z

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 126
    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/motorola/blur/settings/YahooAccountSettings;->mServiceUpdated:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/motorola/blur/settings/YahooAccountSettings;->mActivated:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    move v1, v2

    .line 125
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 126
    :cond_1
    const/4 v2, 0x0

    move v1, v2

    goto :goto_1

    .line 129
    :cond_2
    return v1
.end method

.method public revertDataInDB()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const-wide/16 v7, -0x1

    .line 185
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/motorola/blur/settings/YahooAccountSettings;->mYPasswordUpdated:Z

    .line 187
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 188
    .local v0, activeServiceId:Ljava/lang/Long;
    const/4 v2, 0x0

    .line 190
    .local v2, isActivated:Z
    iget-object v3, p0, Lcom/motorola/blur/settings/YahooAccountSettings;->mCapabilities:[I

    array-length v3, v3

    const/4 v4, 0x1

    sub-int v1, v3, v4

    .local v1, currentService:I
    :goto_0
    if-ltz v1, :cond_1

    .line 191
    iget-object v3, p0, Lcom/motorola/blur/settings/YahooAccountSettings;->mActiveServiceIds:[J

    aget-wide v3, v3, v1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 192
    invoke-direct {p0, v1}, Lcom/motorola/blur/settings/YahooAccountSettings;->isActivated(I)Z

    move-result v2

    .line 193
    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    invoke-direct {p0, v1}, Lcom/motorola/blur/settings/YahooAccountSettings;->isServiceUpdated(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 196
    iget-object v3, p0, Lcom/motorola/blur/settings/YahooAccountSettings;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/motorola/blur/provider/DeviceSetup$ActiveServices;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4, v9, v9}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 199
    iget-object v3, p0, Lcom/motorola/blur/settings/YahooAccountSettings;->mActiveServiceIds:[J

    aput-wide v7, v3, v1

    .line 200
    iget-object v3, p0, Lcom/motorola/blur/settings/YahooAccountSettings;->mServiceIds:[J

    aput-wide v7, v3, v1

    .line 190
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 203
    :cond_1
    return-void
.end method

.method public saveForAuthentication()Z
    .locals 14

    .prologue
    const-wide/16 v0, -0x1

    const/4 v13, 0x0

    const/4 v2, 0x0

    .line 207
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 208
    .local v6, activeServiceId:Ljava/lang/Long;
    const/4 v10, 0x0

    .line 209
    .local v10, isActivated:Z
    const/4 v12, 0x0

    .line 210
    .local v12, values:Landroid/content/ContentValues;
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    .line 211
    .local v11, serviceId:Ljava/lang/Long;
    iget-object v0, p0, Lcom/motorola/blur/settings/YahooAccountSettings;->mCapabilities:[I

    array-length v0, v0

    const/4 v1, 0x1

    sub-int v7, v0, v1

    .local v7, currentService:I
    :goto_0
    if-ltz v7, :cond_4

    .line 212
    iget-object v0, p0, Lcom/motorola/blur/settings/YahooAccountSettings;->mActiveServiceIds:[J

    aget-wide v0, v0, v7

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 213
    invoke-direct {p0, v7}, Lcom/motorola/blur/settings/YahooAccountSettings;->isActivated(I)Z

    move-result v10

    .line 215
    if-eqz v10, :cond_3

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v4, 0x1

    cmp-long v0, v0, v4

    if-gez v0, :cond_3

    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "providers_id = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v4, p0, Lcom/motorola/blur/settings/YahooAccountSettings;->mProviderId:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "capability"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/settings/YahooAccountSettings;->mCapabilities:[I

    aget v1, v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 219
    .local v3, selection:Ljava/lang/String;
    iget-object v0, p0, Lcom/motorola/blur/settings/YahooAccountSettings;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/motorola/blur/provider/DeviceSetup$Services;->CONTENT_URI:Landroid/net/Uri;

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 221
    .local v8, cursor:Landroid/database/Cursor;
    if-eqz v8, :cond_1

    .line 222
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    invoke-interface {v8, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    .line 225
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 227
    :cond_1
    if-nez v12, :cond_2

    .line 228
    new-instance v12, Landroid/content/ContentValues;

    .end local v12           #values:Landroid/content/ContentValues;
    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 230
    .restart local v12       #values:Landroid/content/ContentValues;
    :cond_2
    const-string v0, "service_id"

    invoke-virtual {v12, v0, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 231
    const-string v0, "account"

    iget-wide v4, p0, Lcom/motorola/blur/settings/YahooAccountSettings;->mAccountId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 232
    const-string v0, "username"

    iget-object v1, p0, Lcom/motorola/blur/settings/YahooAccountSettings;->mEmail:Ljava/lang/String;

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    const-string v0, "password"

    const-string v1, ""

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    iget-object v0, p0, Lcom/motorola/blur/settings/YahooAccountSettings;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/motorola/blur/provider/DeviceSetup$ActiveServices;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v12}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v9

    .line 236
    .local v9, insertedUri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/motorola/blur/settings/YahooAccountSettings;->mServiceIds:[J

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    aput-wide v4, v0, v7

    .line 237
    iget-object v0, p0, Lcom/motorola/blur/settings/YahooAccountSettings;->mActiveServiceIds:[J

    invoke-static {v9}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v4

    aput-wide v4, v0, v7

    .line 239
    invoke-virtual {v12}, Landroid/content/ContentValues;->clear()V

    .line 211
    .end local v3           #selection:Ljava/lang/String;
    .end local v8           #cursor:Landroid/database/Cursor;
    .end local v9           #insertedUri:Landroid/net/Uri;
    :cond_3
    add-int/lit8 v7, v7, -0x1

    goto/16 :goto_0

    .line 242
    :cond_4
    return v13
.end method

.method public setAccountPrettyName(Ljava/lang/String;)V
    .locals 1
    .parameter "prettyName"

    .prologue
    .line 332
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/settings/YahooAccountSettings;->mAccountPrettyName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 334
    iput-object p1, p0, Lcom/motorola/blur/settings/YahooAccountSettings;->mAccountPrettyName:Ljava/lang/String;

    .line 335
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/blur/settings/YahooAccountSettings;->mAccountInfoUpdated:Z

    .line 337
    :cond_0
    return-void
.end method

.method public setActivated(IZ)V
    .locals 2
    .parameter "position"
    .parameter "enabled"

    .prologue
    .line 374
    iget-object v0, p0, Lcom/motorola/blur/settings/YahooAccountSettings;->mActivated:[Z

    aget-boolean v0, v0, p1

    if-eq v0, p2, :cond_0

    .line 375
    iget-object v0, p0, Lcom/motorola/blur/settings/YahooAccountSettings;->mServiceUpdated:[Z

    iget-object v1, p0, Lcom/motorola/blur/settings/YahooAccountSettings;->mServiceUpdated:[Z

    aget-boolean v1, v1, p1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    aput-boolean v1, v0, p1

    .line 376
    iget-object v0, p0, Lcom/motorola/blur/settings/YahooAccountSettings;->mActivated:[Z

    aput-boolean p2, v0, p1

    .line 378
    :cond_0
    return-void

    .line 375
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setPassword(Ljava/lang/String;I)V
    .locals 7
    .parameter "password"
    .parameter "index"

    .prologue
    const/4 v6, 0x1

    .line 143
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 144
    const/4 v4, -0x1

    if-ne p2, v4, :cond_3

    .line 145
    const/4 v2, 0x1

    .line 146
    .local v2, updatedPassword:Z
    iget-object v3, p0, Lcom/motorola/blur/settings/YahooAccountSettings;->mYahooPassword:[Ljava/lang/String;

    .line 147
    .local v3, yahooPassword:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    array-length v1, v3

    .local v1, length:I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 148
    aget-object v4, v3, v0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    aget-object v4, v3, v0

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-ne v4, v6, :cond_1

    .line 150
    const/4 v2, 0x0

    .line 172
    .end local v0           #i:I
    .end local v1           #length:I
    .end local v2           #updatedPassword:Z
    .end local v3           #yahooPassword:[Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 147
    .restart local v0       #i:I
    .restart local v1       #length:I
    .restart local v2       #updatedPassword:Z
    .restart local v3       #yahooPassword:[Ljava/lang/String;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 154
    :cond_2
    if-eqz v2, :cond_0

    .line 155
    iput-object p1, p0, Lcom/motorola/blur/settings/YahooAccountSettings;->mPassword:Ljava/lang/String;

    .line 156
    iput-boolean v6, p0, Lcom/motorola/blur/settings/YahooAccountSettings;->mYPasswordUpdated:Z

    goto :goto_1

    .line 159
    .end local v0           #i:I
    .end local v1           #length:I
    .end local v2           #updatedPassword:Z
    .end local v3           #yahooPassword:[Ljava/lang/String;
    :cond_3
    const/4 v0, 0x0

    .restart local v0       #i:I
    iget-object v4, p0, Lcom/motorola/blur/settings/YahooAccountSettings;->mCapabilities:[I

    array-length v1, v4

    .restart local v1       #length:I
    :goto_2
    if-ge v0, v1, :cond_0

    .line 160
    iget-object v4, p0, Lcom/motorola/blur/settings/YahooAccountSettings;->mCapabilities:[I

    aget v4, v4, v0

    const/4 v5, 0x5

    if-ne v4, v5, :cond_4

    if-ne p2, v6, :cond_4

    .line 162
    invoke-direct {p0, p1, v0}, Lcom/motorola/blur/settings/YahooAccountSettings;->setYahooPassword(Ljava/lang/String;I)V

    goto :goto_1

    .line 164
    :cond_4
    if-nez p2, :cond_6

    iget-object v4, p0, Lcom/motorola/blur/settings/YahooAccountSettings;->mCapabilities:[I

    aget v4, v4, v0

    const/4 v5, 0x3

    if-eq v4, v5, :cond_5

    iget-object v4, p0, Lcom/motorola/blur/settings/YahooAccountSettings;->mCapabilities:[I

    aget v4, v4, v0

    const/4 v5, 0x4

    if-ne v4, v5, :cond_6

    .line 167
    :cond_5
    invoke-direct {p0, p1, v0}, Lcom/motorola/blur/settings/YahooAccountSettings;->setYahooPassword(Ljava/lang/String;I)V

    .line 159
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method protected setUpServices(Landroid/database/Cursor;)V
    .locals 11
    .parameter "cursor"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 72
    sget-object v3, Lcom/motorola/blur/settings/YahooAccountSettings;->sYahooServices:[Lcom/motorola/blur/settings/YahooAccountSettings$YahooService;

    array-length v2, v3

    .line 73
    .local v2, length:I
    sub-int v3, v2, v9

    invoke-direct {p0, v2, v3}, Lcom/motorola/blur/settings/YahooAccountSettings;->initArrays(II)V

    .line 74
    const/4 v0, -0x1

    .line 75
    .local v0, capabilityId:I
    sub-int v1, v2, v9

    .local v1, currentPos:I
    :goto_0
    if-ltz v1, :cond_5

    .line 76
    if-lez v1, :cond_0

    .line 77
    iget-object v3, p0, Lcom/motorola/blur/settings/YahooAccountSettings;->mServicePrettyNames:[Ljava/lang/String;

    sub-int v4, v1, v9

    iget-object v5, p0, Lcom/motorola/blur/settings/YahooAccountSettings;->mContext:Landroid/content/Context;

    sget-object v6, Lcom/motorola/blur/settings/YahooAccountSettings;->sYahooServices:[Lcom/motorola/blur/settings/YahooAccountSettings$YahooService;

    aget-object v6, v6, v1

    iget v6, v6, Lcom/motorola/blur/settings/YahooAccountSettings$YahooService;->prettyNameId:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 80
    :cond_0
    sget-object v3, Lcom/motorola/blur/settings/YahooAccountSettings;->sYahooServices:[Lcom/motorola/blur/settings/YahooAccountSettings$YahooService;

    aget-object v3, v3, v1

    iget v0, v3, Lcom/motorola/blur/settings/YahooAccountSettings$YahooService;->capabilityId:I

    .line 81
    iget-object v3, p0, Lcom/motorola/blur/settings/YahooAccountSettings;->mCapabilities:[I

    aput v0, v3, v1

    .line 82
    if-eqz p1, :cond_3

    .line 83
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 85
    :cond_1
    const/16 v3, 0x9

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-ne v0, v3, :cond_2

    .line 87
    iget-object v3, p0, Lcom/motorola/blur/settings/YahooAccountSettings;->mServiceIds:[J

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    aput-wide v4, v3, v1

    .line 89
    iget-object v3, p0, Lcom/motorola/blur/settings/YahooAccountSettings;->mActiveServiceIds:[J

    const/4 v4, 0x3

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    aput-wide v4, v3, v1

    .line 91
    iget-object v3, p0, Lcom/motorola/blur/settings/YahooAccountSettings;->mYahooPassword:[Ljava/lang/String;

    iget-object v4, p0, Lcom/motorola/blur/settings/YahooAccountSettings;->mContext:Landroid/content/Context;

    iget-wide v5, p0, Lcom/motorola/blur/settings/YahooAccountSettings;->mProviderId:J

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v4, v5, v6, v7, v8}, Lcom/motorola/blur/util/SimpleEncryptUtil;->decryptBasedOnPolicy(Landroid/content/Context;JLjava/lang/String;[B)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    .line 98
    const/4 v3, 0x5

    if-ne v0, v3, :cond_4

    .line 99
    iget-object v3, p0, Lcom/motorola/blur/settings/YahooAccountSettings;->mActivated:[Z

    aput-boolean v9, v3, v9

    .line 100
    iget-object v3, p0, Lcom/motorola/blur/settings/YahooAccountSettings;->mInitActivatedVal:[Z

    aput-boolean v9, v3, v9

    .line 106
    :cond_2
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 75
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 102
    :cond_4
    iget-object v3, p0, Lcom/motorola/blur/settings/YahooAccountSettings;->mActivated:[Z

    aput-boolean v9, v3, v10

    .line 103
    iget-object v3, p0, Lcom/motorola/blur/settings/YahooAccountSettings;->mInitActivatedVal:[Z

    aput-boolean v9, v3, v10

    goto :goto_1

    .line 109
    :cond_5
    return-void
.end method

.method public setUserPrettyName(Ljava/lang/String;)V
    .locals 1
    .parameter "prettyName"

    .prologue
    .line 341
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/settings/YahooAccountSettings;->mUserPrettyName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 343
    iput-object p1, p0, Lcom/motorola/blur/settings/YahooAccountSettings;->mUserPrettyName:Ljava/lang/String;

    .line 344
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/blur/settings/YahooAccountSettings;->mAccountInfoUpdated:Z

    .line 346
    :cond_0
    return-void
.end method

.method public writeDataToDB(Z)Z
    .locals 14
    .parameter "force"

    .prologue
    const-wide/16 v12, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 247
    const/4 v3, 0x0

    .line 248
    .local v3, isSaved:Z
    const-wide/16 v7, -0x1

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 249
    .local v0, activeServiceId:Ljava/lang/Long;
    const/4 v2, 0x0

    .line 250
    .local v2, isActivated:Z
    const/4 v6, 0x0

    .line 253
    .local v6, values:Landroid/content/ContentValues;
    if-nez v6, :cond_0

    .line 254
    new-instance v6, Landroid/content/ContentValues;

    .end local v6           #values:Landroid/content/ContentValues;
    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 257
    .restart local v6       #values:Landroid/content/ContentValues;
    :cond_0
    if-nez p1, :cond_1

    iget-boolean v7, p0, Lcom/motorola/blur/settings/YahooAccountSettings;->mYPasswordUpdated:Z

    if-nez v7, :cond_1

    iget-boolean v7, p0, Lcom/motorola/blur/settings/YahooAccountSettings;->mAccountInfoUpdated:Z

    if-eqz v7, :cond_6

    .line 258
    :cond_1
    iget-boolean v7, p0, Lcom/motorola/blur/settings/YahooAccountSettings;->mAccountInfoUpdated:Z

    if-eqz v7, :cond_2

    .line 259
    const-string v7, "account_pretty_name"

    iget-object v8, p0, Lcom/motorola/blur/settings/YahooAccountSettings;->mAccountPrettyName:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    const-string v7, "user_pretty_name"

    iget-object v8, p0, Lcom/motorola/blur/settings/YahooAccountSettings;->mUserPrettyName:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    iget-wide v7, p0, Lcom/motorola/blur/settings/YahooAccountSettings;->mAccountId:J

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    .line 262
    .local v4, sAccountId:Ljava/lang/String;
    iget-object v7, p0, Lcom/motorola/blur/settings/YahooAccountSettings;->mResolver:Landroid/content/ContentResolver;

    sget-object v8, Lcom/motorola/blur/provider/DeviceSetup$Accounts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v8, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v7, v8, v6, v10, v10}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    .line 264
    .local v5, updated:I
    invoke-virtual {v6}, Landroid/content/ContentValues;->clear()V

    .line 267
    .end local v4           #sAccountId:Ljava/lang/String;
    .end local v5           #updated:I
    :cond_2
    iget-object v7, p0, Lcom/motorola/blur/settings/YahooAccountSettings;->mCapabilities:[I

    array-length v7, v7

    sub-int v1, v7, v11

    .local v1, currentService:I
    :goto_0
    if-ltz v1, :cond_6

    .line 268
    iget-object v7, p0, Lcom/motorola/blur/settings/YahooAccountSettings;->mActiveServiceIds:[J

    aget-wide v7, v7, v1

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 269
    invoke-direct {p0, v1}, Lcom/motorola/blur/settings/YahooAccountSettings;->isActivated(I)Z

    move-result v2

    .line 274
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    cmp-long v7, v7, v12

    if-lez v7, :cond_4

    iget-boolean v7, p0, Lcom/motorola/blur/settings/YahooAccountSettings;->mYPasswordUpdated:Z

    if-eqz v7, :cond_4

    .line 275
    if-nez v6, :cond_3

    .line 276
    new-instance v6, Landroid/content/ContentValues;

    .end local v6           #values:Landroid/content/ContentValues;
    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 277
    .restart local v6       #values:Landroid/content/ContentValues;
    :cond_3
    const-string v7, "password"

    iget-object v8, p0, Lcom/motorola/blur/settings/YahooAccountSettings;->mYahooPassword:[Ljava/lang/String;

    aget-object v8, v8, v1

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    const-string v7, "dirty"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 280
    iget-object v7, p0, Lcom/motorola/blur/settings/YahooAccountSettings;->mResolver:Landroid/content/ContentResolver;

    sget-object v8, Lcom/motorola/blur/provider/DeviceSetup$ActiveServices;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v7, v8, v6, v10, v10}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 283
    invoke-virtual {v6}, Landroid/content/ContentValues;->clear()V

    .line 296
    :cond_4
    if-nez v2, :cond_5

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    cmp-long v7, v7, v12

    if-lez v7, :cond_5

    .line 298
    iget-object v7, p0, Lcom/motorola/blur/settings/YahooAccountSettings;->mResolver:Landroid/content/ContentResolver;

    sget-object v8, Lcom/motorola/blur/provider/DeviceSetup$ActiveServices;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v7, v8, v10, v10}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 267
    :cond_5
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 304
    .end local v1           #currentService:I
    :cond_6
    const/4 v3, 0x1

    .line 305
    return v3
.end method
