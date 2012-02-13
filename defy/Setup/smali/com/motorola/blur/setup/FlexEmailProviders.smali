.class public Lcom/motorola/blur/setup/FlexEmailProviders;
.super Ljava/lang/Object;
.source "FlexEmailProviders.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/setup/FlexEmailProviders$DatabaseHelper;
    }
.end annotation


# static fields
.field private static final DATABASE_NAME:Ljava/lang/String; = "email_providers.db"

.field private static final DATABASE_TABLE_DOMAIN:Ljava/lang/String; = "domain"

.field private static final DATABASE_TABLE_PROVIDER:Ljava/lang/String; = "provider"

.field private static final DATABASE_TABLE_SETTINGS:Ljava/lang/String; = "settings"

.field public static DATABASE_VERSION:I = 0x0

.field private static final DEFAULT_EMAIL_PATTERN:Ljava/lang/String; = "(.*)@(.*)"

.field private static final DEFAULT_LOGIN_REPLACEMENT:Ljava/lang/String; = "$1@$2"

.field private static final DOMAIN_QUERY_PROJECTION:[Ljava/lang/String; = null

.field public static final INVALID_ID:J = -0x1L

.field public static final QUERY_INDEX_DOMAIN_KEY_PROVIDER_ID:I = 0x0

.field public static final QUERY_INDEX_SETTINGS_KEY_ADDRESS:I = 0x1

.field public static final QUERY_INDEX_SETTINGS_KEY_AUTH_TYPE:I = 0x5

.field public static final QUERY_INDEX_SETTINGS_KEY_PORT:I = 0x2

.field public static final QUERY_INDEX_SETTINGS_KEY_SSL:I = 0x3

.field public static final QUERY_INDEX_SETTINGS_KEY_TLS:I = 0x6

.field public static final QUERY_INDEX_SETTINGS_KEY_TYPE:I = 0x0

.field public static final QUERY_INDEX_SETTINGS_KEY_VERIFY_CERT:I = 0x4

.field private static final SETTINGS_QUERY_PROJECTION:[Ljava/lang/String; = null

.field public static final TABLE_DOMAIN_KEY_NAME:Ljava/lang/String; = "name"

.field public static final TABLE_DOMAIN_KEY_PROVIDER_ID:Ljava/lang/String; = "provider_id"

.field public static final TABLE_PROVIDER_KEY_ID:Ljava/lang/String; = "_id"

.field public static final TABLE_PROVIDER_KEY_NAME:Ljava/lang/String; = "name"

.field public static final TABLE_SETTINGS_KEY_ADDRESS:Ljava/lang/String; = "address"

.field public static final TABLE_SETTINGS_KEY_AUTH_TYPE:Ljava/lang/String; = "authentication_type"

.field public static final TABLE_SETTINGS_KEY_PORT:Ljava/lang/String; = "port"

.field public static final TABLE_SETTINGS_KEY_PROVIDER_ID:Ljava/lang/String; = "provider_id"

.field public static final TABLE_SETTINGS_KEY_SSL:Ljava/lang/String; = "ssl"

.field public static final TABLE_SETTINGS_KEY_TLS:Ljava/lang/String; = "tls"

.field public static final TABLE_SETTINGS_KEY_TYPE:Ljava/lang/String; = "type"

.field public static final TABLE_SETTINGS_KEY_VERIFY_CERT:Ljava/lang/String; = "verify_cert"

.field private static final TAG:Ljava/lang/String; = "FlexEmailProviders"

.field private static final TYPE_IMAP4:I = 0x0

.field private static final TYPE_POP3:I = 0x1

.field private static final TYPE_SMTP:I = 0x2

.field private static mInstance:Lcom/motorola/blur/setup/FlexEmailProviders;

.field private static mNewDbCreated:Z


# instance fields
.field private mDb:Landroid/database/sqlite/SQLiteDatabase;

.field private mDbHelper:Lcom/motorola/blur/setup/FlexEmailProviders$DatabaseHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 37
    sput v2, Lcom/motorola/blur/setup/FlexEmailProviders;->DATABASE_VERSION:I

    .line 61
    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "provider_id"

    aput-object v1, v0, v3

    sput-object v0, Lcom/motorola/blur/setup/FlexEmailProviders;->DOMAIN_QUERY_PROJECTION:[Ljava/lang/String;

    .line 67
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "type"

    aput-object v1, v0, v3

    const-string v1, "address"

    aput-object v1, v0, v2

    const/4 v1, 0x2

    const-string v2, "port"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "ssl"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "verify_cert"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "authentication_type"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "tls"

    aput-object v2, v0, v1

    sput-object v0, Lcom/motorola/blur/setup/FlexEmailProviders;->SETTINGS_QUERY_PROJECTION:[Ljava/lang/String;

    .line 89
    const/4 v0, 0x0

    sput-object v0, Lcom/motorola/blur/setup/FlexEmailProviders;->mInstance:Lcom/motorola/blur/setup/FlexEmailProviders;

    .line 93
    sput-boolean v3, Lcom/motorola/blur/setup/FlexEmailProviders;->mNewDbCreated:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    :try_start_0
    new-instance v2, Lcom/motorola/blur/setup/FlexEmailProviders$DatabaseHelper;

    invoke-direct {v2, p1}, Lcom/motorola/blur/setup/FlexEmailProviders$DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/motorola/blur/setup/FlexEmailProviders;->mDbHelper:Lcom/motorola/blur/setup/FlexEmailProviders$DatabaseHelper;

    .line 149
    iget-object v2, p0, Lcom/motorola/blur/setup/FlexEmailProviders;->mDbHelper:Lcom/motorola/blur/setup/FlexEmailProviders$DatabaseHelper;

    invoke-virtual {v2}, Lcom/motorola/blur/setup/FlexEmailProviders$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/blur/setup/FlexEmailProviders;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 151
    sget-boolean v2, Lcom/motorola/blur/setup/FlexEmailProviders;->mNewDbCreated:Z

    if-eqz v2, :cond_0

    .line 152
    new-instance v1, Lcom/motorola/flex/OverlayHelper;

    invoke-direct {v1, p1}, Lcom/motorola/flex/OverlayHelper;-><init>(Landroid/content/Context;)V

    .line 153
    .local v1, oh:Lcom/motorola/flex/OverlayHelper;
    iget-object v2, p0, Lcom/motorola/blur/setup/FlexEmailProviders;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v2}, Lcom/motorola/flex/OverlayHelper;->applyXml(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 154
    const/4 v2, 0x0

    sput-boolean v2, Lcom/motorola/blur/setup/FlexEmailProviders;->mNewDbCreated:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    .end local v1           #oh:Lcom/motorola/flex/OverlayHelper;
    :cond_0
    :goto_0
    return-void

    .line 156
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 157
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 17
    sput-boolean p0, Lcom/motorola/blur/setup/FlexEmailProviders;->mNewDbCreated:Z

    return p0
.end method

.method public static finish()V
    .locals 1

    .prologue
    .line 176
    sget-object v0, Lcom/motorola/blur/setup/FlexEmailProviders;->mInstance:Lcom/motorola/blur/setup/FlexEmailProviders;

    if-eqz v0, :cond_0

    .line 177
    sget-object v0, Lcom/motorola/blur/setup/FlexEmailProviders;->mInstance:Lcom/motorola/blur/setup/FlexEmailProviders;

    iget-object v0, v0, Lcom/motorola/blur/setup/FlexEmailProviders;->mDbHelper:Lcom/motorola/blur/setup/FlexEmailProviders$DatabaseHelper;

    invoke-virtual {v0}, Lcom/motorola/blur/setup/FlexEmailProviders$DatabaseHelper;->close()V

    .line 178
    const/4 v0, 0x0

    sput-object v0, Lcom/motorola/blur/setup/FlexEmailProviders;->mInstance:Lcom/motorola/blur/setup/FlexEmailProviders;

    .line 180
    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/motorola/blur/setup/FlexEmailProviders;
    .locals 2

    .prologue
    .line 169
    sget-object v0, Lcom/motorola/blur/setup/FlexEmailProviders;->mInstance:Lcom/motorola/blur/setup/FlexEmailProviders;

    if-nez v0, :cond_0

    .line 170
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not initialized. Call initialize first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 172
    :cond_0
    sget-object v0, Lcom/motorola/blur/setup/FlexEmailProviders;->mInstance:Lcom/motorola/blur/setup/FlexEmailProviders;

    return-object v0
.end method

.method private getProviderFromDomain(Ljava/lang/String;)J
    .locals 11
    .parameter "domain"

    .prologue
    const/4 v4, 0x0

    .line 253
    const/4 v8, 0x0

    .line 254
    .local v8, cursor:Landroid/database/Cursor;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "name = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 256
    .local v3, whereClause:Ljava/lang/String;
    iget-object v0, p0, Lcom/motorola/blur/setup/FlexEmailProviders;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "domain"

    sget-object v2, Lcom/motorola/blur/setup/FlexEmailProviders;->DOMAIN_QUERY_PROJECTION:[Ljava/lang/String;

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 258
    const-wide/16 v9, -0x1

    .line 260
    .local v9, providerId:J
    if-eqz v8, :cond_1

    .line 261
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 264
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 266
    :cond_1
    return-wide v9
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 163
    sget-object v0, Lcom/motorola/blur/setup/FlexEmailProviders;->mInstance:Lcom/motorola/blur/setup/FlexEmailProviders;

    if-nez v0, :cond_0

    .line 164
    new-instance v0, Lcom/motorola/blur/setup/FlexEmailProviders;

    invoke-direct {v0, p0}, Lcom/motorola/blur/setup/FlexEmailProviders;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/motorola/blur/setup/FlexEmailProviders;->mInstance:Lcom/motorola/blur/setup/FlexEmailProviders;

    .line 166
    :cond_0
    return-void
.end method


# virtual methods
.method public getProviderInfo(Ljava/lang/String;)Ljava/util/List;
    .locals 13
    .parameter "domain"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 196
    const/4 v12, 0x0

    .line 198
    .local v12, serverInfoList:Ljava/util/List;,"Ljava/util/List<Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo;>;"
    if-eqz p1, :cond_2

    .line 199
    invoke-direct {p0, p1}, Lcom/motorola/blur/setup/FlexEmailProviders;->getProviderFromDomain(Ljava/lang/String;)J

    move-result-wide v10

    .line 201
    .local v10, providerId:J
    const-wide/16 v0, -0x1

    cmp-long v0, v10, v0

    if-eqz v0, :cond_2

    .line 202
    new-instance v12, Ljava/util/ArrayList;

    .end local v12           #serverInfoList:Ljava/util/List;,"Ljava/util/List<Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo;>;"
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 203
    .restart local v12       #serverInfoList:Ljava/util/List;,"Ljava/util/List<Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo;>;"
    const/4 v9, 0x0

    .line 204
    .local v9, cursor:Landroid/database/Cursor;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "provider_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 205
    .local v3, whereClause:Ljava/lang/String;
    iget-object v0, p0, Lcom/motorola/blur/setup/FlexEmailProviders;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "settings"

    sget-object v2, Lcom/motorola/blur/setup/FlexEmailProviders;->SETTINGS_QUERY_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 207
    if-eqz v9, :cond_2

    .line 208
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 210
    :cond_0
    invoke-static {}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo;->newBuilder()Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo$Builder;

    move-result-object v8

    .line 211
    .local v8, builder:Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo$Builder;
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 224
    :goto_0
    const/4 v0, 0x1

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo$Builder;->setServer(Ljava/lang/String;)Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo$Builder;

    .line 225
    const/4 v0, 0x2

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v8, v0}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo$Builder;->setPort(I)Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo$Builder;

    .line 226
    const/4 v0, 0x3

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v8, v0}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo$Builder;->setSsl(Z)Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo$Builder;

    .line 227
    const/4 v0, 0x4

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    const/4 v0, 0x1

    :goto_2
    invoke-virtual {v8, v0}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo$Builder;->setVerifyCA(Z)Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo$Builder;

    .line 228
    const/4 v0, 0x5

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v8, v0}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo$Builder;->setAuthType(I)Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo$Builder;

    .line 229
    const/4 v0, 0x6

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo$SecurityPolicy;->valueOf(I)Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo$SecurityPolicy;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo$Builder;->setSecurityPolicy(Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo$SecurityPolicy;)Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo$Builder;

    .line 231
    const-string v0, "(.*)@(.*)"

    invoke-virtual {v8, v0}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo$Builder;->setEmailPattern(Ljava/lang/String;)Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo$Builder;

    .line 232
    const-string v0, "$1@$2"

    invoke-virtual {v8, v0}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo$Builder;->setLoginReplacement(Ljava/lang/String;)Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo$Builder;

    .line 242
    invoke-virtual {v8}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo$Builder;->build()Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo;

    move-result-object v0

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 245
    .end local v8           #builder:Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo$Builder;
    :cond_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 249
    .end local v3           #whereClause:Ljava/lang/String;
    .end local v9           #cursor:Landroid/database/Cursor;
    .end local v10           #providerId:J
    :cond_2
    return-object v12

    .line 213
    .restart local v3       #whereClause:Ljava/lang/String;
    .restart local v8       #builder:Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo$Builder;
    .restart local v9       #cursor:Landroid/database/Cursor;
    .restart local v10       #providerId:J
    :pswitch_0
    sget-object v0, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo$Type;->IMAP4:Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo$Type;

    invoke-virtual {v8, v0}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo$Builder;->setType(Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo$Type;)Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo$Builder;

    goto :goto_0

    .line 216
    :pswitch_1
    sget-object v0, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo$Type;->POP3:Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo$Type;

    invoke-virtual {v8, v0}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo$Builder;->setType(Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo$Type;)Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo$Builder;

    goto :goto_0

    .line 219
    :pswitch_2
    sget-object v0, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo$Type;->SMTP:Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo$Type;

    invoke-virtual {v8, v0}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo$Builder;->setType(Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo$Type;)Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo$Builder;

    goto :goto_0

    .line 226
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 227
    :cond_4
    const/4 v0, 0x0

    goto :goto_2

    .line 211
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getProvidersCount()I
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 183
    const/4 v9, 0x0

    .line 184
    .local v9, cursor:Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 186
    .local v8, count:I
    iget-object v0, p0, Lcom/motorola/blur/setup/FlexEmailProviders;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "provider"

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 188
    if-eqz v9, :cond_0

    .line 189
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v8

    .line 190
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 192
    :cond_0
    return v8
.end method
