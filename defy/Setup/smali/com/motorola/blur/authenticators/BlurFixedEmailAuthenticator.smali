.class public Lcom/motorola/blur/authenticators/BlurFixedEmailAuthenticator;
.super Lcom/motorola/blur/authenticators/BlurEmailAuthenticator;
.source "BlurFixedEmailAuthenticator.java"


# static fields
.field private static final NON_SMTP_PROVIDER_SELECTION:Ljava/lang/String; = "capability!=4 AND providers_id=?"

.field private static final PROVIDER_SELECTION:Ljava/lang/String; = "providers_id=?"

.field private static final SERVICE_CAPABILITY_PROJECTION:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "BFEA"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 18
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "capability"

    aput-object v2, v0, v1

    sput-object v0, Lcom/motorola/blur/authenticators/BlurFixedEmailAuthenticator;->SERVICE_CAPABILITY_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JJLcom/motorola/blur/authenticators/BlurAuthenticationListener;)V
    .locals 0
    .parameter "context"
    .parameter "username"
    .parameter "password"
    .parameter "accountId"
    .parameter "providerId"
    .parameter "listener"

    .prologue
    .line 27
    invoke-direct/range {p0 .. p8}, Lcom/motorola/blur/authenticators/BlurEmailAuthenticator;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JJLcom/motorola/blur/authenticators/BlurAuthenticationListener;)V

    .line 29
    return-void
.end method

.method private createTempAccount()J
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 52
    iget-object v1, p0, Lcom/motorola/blur/authenticators/BlurFixedEmailAuthenticator;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 53
    .local v0, resolver:Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/motorola/blur/authenticators/BlurFixedEmailAuthenticator;->mUserInfo:Lcom/motorola/blur/authenticators/UserInfo;

    iget-wide v1, v1, Lcom/motorola/blur/authenticators/UserInfo;->accountId:J

    const-wide/16 v3, 0x1

    cmp-long v1, v1, v3

    if-gez v1, :cond_2

    .line 54
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 55
    .local v8, values:Landroid/content/ContentValues;
    const/4 v7, 0x0

    .line 56
    .local v7, uri:Landroid/net/Uri;
    const-string v1, "username"

    iget-object v2, p0, Lcom/motorola/blur/authenticators/BlurFixedEmailAuthenticator;->mUserInfo:Lcom/motorola/blur/authenticators/UserInfo;

    iget-object v2, v2, Lcom/motorola/blur/authenticators/UserInfo;->username:Ljava/lang/String;

    invoke-virtual {v8, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    const-string v1, "password"

    iget-object v2, p0, Lcom/motorola/blur/authenticators/BlurFixedEmailAuthenticator;->mUserInfo:Lcom/motorola/blur/authenticators/UserInfo;

    iget-object v2, v2, Lcom/motorola/blur/authenticators/UserInfo;->password:Ljava/lang/String;

    invoke-virtual {v8, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    const-string v1, "account_pretty_name"

    iget-object v2, p0, Lcom/motorola/blur/authenticators/BlurFixedEmailAuthenticator;->mUserInfo:Lcom/motorola/blur/authenticators/UserInfo;

    iget-object v2, v2, Lcom/motorola/blur/authenticators/UserInfo;->username:Ljava/lang/String;

    iget-object v3, p0, Lcom/motorola/blur/authenticators/BlurFixedEmailAuthenticator;->mContext:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/motorola/blur/provider/DeviceSetup;->createPrettyName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    const-string v1, "user_pretty_name"

    iget-object v2, p0, Lcom/motorola/blur/authenticators/BlurFixedEmailAuthenticator;->mMeName:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/motorola/blur/authenticators/BlurFixedEmailAuthenticator;->mMeName:Ljava/lang/String;

    :goto_0
    invoke-virtual {v8, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    const-string v1, "email_address"

    iget-object v2, p0, Lcom/motorola/blur/authenticators/BlurFixedEmailAuthenticator;->mUserInfo:Lcom/motorola/blur/authenticators/UserInfo;

    iget-object v2, v2, Lcom/motorola/blur/authenticators/UserInfo;->username:Ljava/lang/String;

    invoke-virtual {v8, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const-string v1, "provider_id"

    iget-object v2, p0, Lcom/motorola/blur/authenticators/BlurFixedEmailAuthenticator;->mUserInfo:Lcom/motorola/blur/authenticators/UserInfo;

    iget-wide v2, v2, Lcom/motorola/blur/authenticators/UserInfo;->providerId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 65
    sget-object v1, Lcom/motorola/blur/provider/DeviceSetup$Accounts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v7

    .line 67
    if-nez v7, :cond_1

    .line 68
    iget-object v1, p0, Lcom/motorola/blur/authenticators/BlurFixedEmailAuthenticator;->mUserInfo:Lcom/motorola/blur/authenticators/UserInfo;

    iget-wide v1, v1, Lcom/motorola/blur/authenticators/UserInfo;->accountId:J

    .line 90
    .end local v7           #uri:Landroid/net/Uri;
    .end local v8           #values:Landroid/content/ContentValues;
    :goto_1
    return-wide v1

    .line 60
    .restart local v7       #uri:Landroid/net/Uri;
    .restart local v8       #values:Landroid/content/ContentValues;
    :cond_0
    iget-object v2, p0, Lcom/motorola/blur/authenticators/BlurFixedEmailAuthenticator;->mUserInfo:Lcom/motorola/blur/authenticators/UserInfo;

    iget-object v2, v2, Lcom/motorola/blur/authenticators/UserInfo;->username:Ljava/lang/String;

    goto :goto_0

    .line 70
    :cond_1
    iget-object v1, p0, Lcom/motorola/blur/authenticators/BlurFixedEmailAuthenticator;->mUserInfo:Lcom/motorola/blur/authenticators/UserInfo;

    invoke-static {v7}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/motorola/blur/authenticators/UserInfo;->accountId:J

    .line 71
    invoke-virtual {v8}, Landroid/content/ContentValues;->clear()V

    .line 74
    .end local v7           #uri:Landroid/net/Uri;
    .end local v8           #values:Landroid/content/ContentValues;
    :cond_2
    sget-object v1, Lcom/motorola/blur/provider/DeviceSetup$Services;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/motorola/blur/authenticators/BlurFixedEmailAuthenticator;->SERVICE_CAPABILITY_PROJECTION:[Ljava/lang/String;

    const-string v3, "capability!=4 AND providers_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    iget-object v5, p0, Lcom/motorola/blur/authenticators/BlurFixedEmailAuthenticator;->mUserInfo:Lcom/motorola/blur/authenticators/UserInfo;

    iget-wide v9, v5, Lcom/motorola/blur/authenticators/UserInfo;->providerId:J

    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v11

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 77
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_4

    .line 78
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 79
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 88
    :cond_3
    :goto_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 90
    :cond_4
    iget-object v1, p0, Lcom/motorola/blur/authenticators/BlurFixedEmailAuthenticator;->mUserInfo:Lcom/motorola/blur/authenticators/UserInfo;

    iget-wide v1, v1, Lcom/motorola/blur/authenticators/UserInfo;->accountId:J

    goto :goto_1

    .line 81
    :pswitch_0
    const/4 v1, 0x3

    iput v1, p0, Lcom/motorola/blur/authenticators/BlurFixedEmailAuthenticator;->mProtocolCapability:I

    goto :goto_2

    .line 84
    :pswitch_1
    const/4 v1, 0x2

    iput v1, p0, Lcom/motorola/blur/authenticators/BlurFixedEmailAuthenticator;->mProtocolCapability:I

    goto :goto_2

    .line 79
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected startAuth()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 37
    invoke-virtual {p0}, Lcom/motorola/blur/authenticators/BlurFixedEmailAuthenticator;->validateForEmail()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 38
    invoke-direct {p0}, Lcom/motorola/blur/authenticators/BlurFixedEmailAuthenticator;->createTempAccount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 39
    invoke-virtual {p0}, Lcom/motorola/blur/authenticators/BlurFixedEmailAuthenticator;->authenticate()V

    .line 48
    :goto_0
    return-void

    .line 42
    :cond_0
    const v0, 0x7f0c0094

    invoke-virtual {p0, v0}, Lcom/motorola/blur/authenticators/BlurFixedEmailAuthenticator;->appendError(I)V

    .line 43
    invoke-virtual {p0, v4}, Lcom/motorola/blur/authenticators/BlurFixedEmailAuthenticator;->sendForegroundMessage(I)Z

    goto :goto_0

    .line 46
    :cond_1
    invoke-virtual {p0, v4}, Lcom/motorola/blur/authenticators/BlurFixedEmailAuthenticator;->sendForegroundMessage(I)Z

    goto :goto_0
.end method
