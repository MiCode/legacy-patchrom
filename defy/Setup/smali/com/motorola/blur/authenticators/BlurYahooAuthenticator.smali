.class public Lcom/motorola/blur/authenticators/BlurYahooAuthenticator;
.super Lcom/motorola/blur/authenticators/BlurEmailAuthenticator;
.source "BlurYahooAuthenticator.java"


# static fields
.field private static final NON_SMTP_PROVIDER_SELECTION:Ljava/lang/String; = "capability!=4 AND providers_id=?"

.field private static final PROVIDER_SELECTION:Ljava/lang/String; = "providers_id=?"

.field private static final SERVICE_CAPABILITY_PROJECTION:[Ljava/lang/String; = null

.field private static final SERVICE_SELECION:Ljava/lang/String; = "capability=5 AND providers_id=?"

.field private static final TAG:Ljava/lang/String; = "BYEA"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 16
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "capability"

    aput-object v2, v0, v1

    sput-object v0, Lcom/motorola/blur/authenticators/BlurYahooAuthenticator;->SERVICE_CAPABILITY_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JJLcom/motorola/blur/authenticators/BlurAuthenticationListener;)V
    .locals 1
    .parameter "context"
    .parameter "username"
    .parameter "password"
    .parameter "accountId"
    .parameter "providerId"
    .parameter "listener"

    .prologue
    .line 33
    invoke-direct/range {p0 .. p8}, Lcom/motorola/blur/authenticators/BlurEmailAuthenticator;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JJLcom/motorola/blur/authenticators/BlurAuthenticationListener;)V

    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/blur/authenticators/BlurYahooAuthenticator;->mIsTokenAuth:Z

    .line 35
    const/4 v0, 0x3

    iput v0, p0, Lcom/motorola/blur/authenticators/BlurYahooAuthenticator;->mProtocolCapability:I

    .line 36
    return-void
.end method

.method private createTempAccount()J
    .locals 10

    .prologue
    .line 62
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 63
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "auth_type"

    const/16 v4, 0x28

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 64
    iget-object v3, p0, Lcom/motorola/blur/authenticators/BlurYahooAuthenticator;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/motorola/blur/provider/DeviceSetup$Services;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "providers_id=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/motorola/blur/authenticators/BlurYahooAuthenticator;->mUserInfo:Lcom/motorola/blur/authenticators/UserInfo;

    iget-wide v8, v8, Lcom/motorola/blur/authenticators/UserInfo;->providerId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v3, v4, v2, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 68
    iget-object v3, p0, Lcom/motorola/blur/authenticators/BlurYahooAuthenticator;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 69
    .local v0, resolver:Landroid/content/ContentResolver;
    iget-object v3, p0, Lcom/motorola/blur/authenticators/BlurYahooAuthenticator;->mUserInfo:Lcom/motorola/blur/authenticators/UserInfo;

    iget-wide v3, v3, Lcom/motorola/blur/authenticators/UserInfo;->accountId:J

    const-wide/16 v5, 0x1

    cmp-long v3, v3, v5

    if-gez v3, :cond_1

    .line 70
    invoke-virtual {v2}, Landroid/content/ContentValues;->clear()V

    .line 72
    const/4 v1, 0x0

    .line 73
    .local v1, uri:Landroid/net/Uri;
    const-string v3, "username"

    iget-object v4, p0, Lcom/motorola/blur/authenticators/BlurYahooAuthenticator;->mUserInfo:Lcom/motorola/blur/authenticators/UserInfo;

    iget-object v4, v4, Lcom/motorola/blur/authenticators/UserInfo;->username:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const-string v3, "password"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const-string v3, "account_pretty_name"

    iget-object v4, p0, Lcom/motorola/blur/authenticators/BlurYahooAuthenticator;->mContext:Landroid/content/Context;

    const v5, 0x7f0c013e

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/motorola/blur/authenticators/BlurYahooAuthenticator;->mContext:Landroid/content/Context;

    invoke-static {v4, v5}, Lcom/motorola/blur/provider/DeviceSetup;->createPrettyName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const-string v3, "user_pretty_name"

    iget-object v4, p0, Lcom/motorola/blur/authenticators/BlurYahooAuthenticator;->mMeName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const-string v3, "email_address"

    iget-object v4, p0, Lcom/motorola/blur/authenticators/BlurYahooAuthenticator;->mUserInfo:Lcom/motorola/blur/authenticators/UserInfo;

    iget-object v4, v4, Lcom/motorola/blur/authenticators/UserInfo;->username:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    const-string v3, "provider_id"

    iget-object v4, p0, Lcom/motorola/blur/authenticators/BlurYahooAuthenticator;->mUserInfo:Lcom/motorola/blur/authenticators/UserInfo;

    iget-wide v4, v4, Lcom/motorola/blur/authenticators/UserInfo;->providerId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 82
    sget-object v3, Lcom/motorola/blur/provider/DeviceSetup$Accounts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 84
    if-nez v1, :cond_0

    .line 85
    iget-object v3, p0, Lcom/motorola/blur/authenticators/BlurYahooAuthenticator;->mUserInfo:Lcom/motorola/blur/authenticators/UserInfo;

    iget-wide v3, v3, Lcom/motorola/blur/authenticators/UserInfo;->accountId:J

    .line 91
    .end local v1           #uri:Landroid/net/Uri;
    :goto_0
    return-wide v3

    .line 87
    .restart local v1       #uri:Landroid/net/Uri;
    :cond_0
    iget-object v3, p0, Lcom/motorola/blur/authenticators/BlurYahooAuthenticator;->mUserInfo:Lcom/motorola/blur/authenticators/UserInfo;

    invoke-static {v1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/motorola/blur/authenticators/UserInfo;->accountId:J

    .line 88
    invoke-virtual {v2}, Landroid/content/ContentValues;->clear()V

    .line 91
    .end local v1           #uri:Landroid/net/Uri;
    :cond_1
    iget-object v3, p0, Lcom/motorola/blur/authenticators/BlurYahooAuthenticator;->mUserInfo:Lcom/motorola/blur/authenticators/UserInfo;

    iget-wide v3, v3, Lcom/motorola/blur/authenticators/UserInfo;->accountId:J

    goto :goto_0
.end method


# virtual methods
.method protected startAuth()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 44
    invoke-virtual {p0}, Lcom/motorola/blur/authenticators/BlurYahooAuthenticator;->validateForEmail()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 45
    invoke-direct {p0}, Lcom/motorola/blur/authenticators/BlurYahooAuthenticator;->createTempAccount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 46
    invoke-virtual {p0}, Lcom/motorola/blur/authenticators/BlurYahooAuthenticator;->authenticate()V

    .line 55
    :goto_0
    return-void

    .line 49
    :cond_0
    const v0, 0x7f0c0094

    invoke-virtual {p0, v0}, Lcom/motorola/blur/authenticators/BlurYahooAuthenticator;->appendError(I)V

    .line 50
    invoke-virtual {p0, v4}, Lcom/motorola/blur/authenticators/BlurYahooAuthenticator;->sendForegroundMessage(I)Z

    goto :goto_0

    .line 53
    :cond_1
    invoke-virtual {p0, v4}, Lcom/motorola/blur/authenticators/BlurYahooAuthenticator;->sendForegroundMessage(I)Z

    goto :goto_0
.end method
