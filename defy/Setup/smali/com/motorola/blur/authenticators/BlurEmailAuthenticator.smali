.class public Lcom/motorola/blur/authenticators/BlurEmailAuthenticator;
.super Lcom/motorola/blur/authenticators/BlurAuthenticator;
.source "BlurEmailAuthenticator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/authenticators/BlurEmailAuthenticator$5;
    }
.end annotation


# static fields
.field protected static final ACCOUNTS_CHANGED_PERMISSION:Ljava/lang/String; = "com.motorola.blur.setupprovider.Permissions.ACCESS_ACCOUNTS"

.field private static final AS_ACCOUNT_SELECTION:Ljava/lang/String; = "account=?"

.field private static final AUTH_TYPE_FALSE:I = 0x0

.field private static final AUTH_TYPE_TRUE:I = 0x1

.field protected static final AUTH_TYPE_YAHOO:I = 0x28

.field private static final CAPABILITY_SELECTION:Ljava/lang/String; = "capability!=4"

.field private static final DEFAULT_LOGIN_REPLACEMENT:Ljava/lang/String; = "$1"

.field protected static final LOADED_FLEX_SETTINGS:I = 0x7

.field private static final RECEIVED_AUTHENTICATOR:I = 0x4

.field private static final RECEIVED_AUTH_RESPONSE:I = 0x3

.field protected static final RECEIVED_MAIL_SETTINGS:I = 0x2

.field protected static final SERVICE_RESTARTED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "BEA"


# instance fields
.field private final mAuthObserver:Lcom/motorola/blur/util/authentication/AuthenticationFactory$AuthenticationObserver;

.field protected mIsTokenAuth:Z

.field protected mMeName:Ljava/lang/String;

.field protected mProtocolCapability:I

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field protected mRegistered:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JJLcom/motorola/blur/authenticators/BlurAuthenticationListener;)V
    .locals 2
    .parameter "context"
    .parameter "username"
    .parameter "password"
    .parameter "accountId"
    .parameter "providerId"
    .parameter "listener"

    .prologue
    const/4 v1, 0x0

    .line 217
    invoke-direct/range {p0 .. p8}, Lcom/motorola/blur/authenticators/BlurAuthenticator;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JJLcom/motorola/blur/authenticators/BlurAuthenticationListener;)V

    .line 67
    iput v1, p0, Lcom/motorola/blur/authenticators/BlurEmailAuthenticator;->mProtocolCapability:I

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/blur/authenticators/BlurEmailAuthenticator;->mMeName:Ljava/lang/String;

    .line 77
    iput-boolean v1, p0, Lcom/motorola/blur/authenticators/BlurEmailAuthenticator;->mIsTokenAuth:Z

    .line 78
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/authenticators/BlurEmailAuthenticator;->mRegistered:Ljava/lang/Boolean;

    .line 81
    new-instance v0, Lcom/motorola/blur/authenticators/BlurEmailAuthenticator$1;

    invoke-direct {v0, p0}, Lcom/motorola/blur/authenticators/BlurEmailAuthenticator$1;-><init>(Lcom/motorola/blur/authenticators/BlurEmailAuthenticator;)V

    iput-object v0, p0, Lcom/motorola/blur/authenticators/BlurEmailAuthenticator;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 97
    new-instance v0, Lcom/motorola/blur/authenticators/BlurEmailAuthenticator$2;

    invoke-direct {v0, p0}, Lcom/motorola/blur/authenticators/BlurEmailAuthenticator$2;-><init>(Lcom/motorola/blur/authenticators/BlurEmailAuthenticator;)V

    iput-object v0, p0, Lcom/motorola/blur/authenticators/BlurEmailAuthenticator;->mAuthObserver:Lcom/motorola/blur/util/authentication/AuthenticationFactory$AuthenticationObserver;

    .line 218
    invoke-direct {p0}, Lcom/motorola/blur/authenticators/BlurEmailAuthenticator;->setMeName()V

    .line 219
    return-void
.end method

.method private static addServiceAndActiveService(Landroid/content/ContentResolver;JLandroid/content/ContentValues;Landroid/content/ContentValues;)Z
    .locals 5
    .parameter "resolver"
    .parameter "accountId"
    .parameter "svcValues"
    .parameter "asValues"

    .prologue
    .line 752
    sget-object v3, Lcom/motorola/blur/provider/DeviceSetup$Services;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v3, p3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    .line 753
    .local v2, uri:Landroid/net/Uri;
    if-nez v2, :cond_0

    .line 754
    const/4 v3, 0x0

    .line 760
    :goto_0
    return v3

    .line 756
    :cond_0
    invoke-static {v2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    .line 757
    .local v0, serviceId:J
    const-string v3, "account"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p4, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 758
    const-string v3, "service_id"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p4, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 759
    sget-object v3, Lcom/motorola/blur/provider/DeviceSetup$ActiveServices;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v3, p4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 760
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private createTempAccount(Ljava/util/List;)J
    .locals 30
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo;",
            ">;)J"
        }
    .end annotation

    .prologue
    .line 258
    .local p1, serverInfos:Ljava/util/List;,"Ljava/util/List<Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo;>;"
    const/16 v17, 0x0

    .line 259
    .local v17, info:Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo;
    const/16 v16, 0x0

    .line 260
    .local v16, incomingSettings:Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo;
    const/16 v24, 0x0

    .line 261
    .local v24, smtpSettings:Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo;
    const-wide/16 v5, 0x0

    .line 262
    .local v5, accountId:J
    const/4 v12, 0x0

    .line 263
    .local v12, emailType:I
    const/16 v20, 0x0

    .line 265
    .local v20, policy:I
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v27

    const/16 v28, 0x1

    sub-int v14, v27, v28

    .local v14, i:I
    :goto_0
    if-ltz v14, :cond_1

    .line 266
    move-object/from16 v0, p1

    move v1, v14

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    .end local v17           #info:Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo;
    check-cast v17, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo;

    .line 267
    .restart local v17       #info:Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo;
    sget-object v27, Lcom/motorola/blur/authenticators/BlurEmailAuthenticator$5;->$SwitchMap$com$motorola$blur$service$emailsettings$protocol$EmailProvidersProtocol$ProviderResponse$ServerInfo$Type:[I

    invoke-virtual/range {v17 .. v17}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo;->getType()Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo$Type;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo$Type;->ordinal()I

    move-result v28

    aget v27, v27, v28

    packed-switch v27, :pswitch_data_0

    .line 265
    :cond_0
    :goto_1
    add-int/lit8 v14, v14, -0x1

    goto :goto_0

    .line 272
    :pswitch_0
    const/4 v12, 0x3

    .line 273
    const/16 v20, 0x0

    .line 274
    move-object/from16 v16, v17

    .line 275
    goto :goto_1

    .line 281
    :pswitch_1
    if-nez v16, :cond_0

    .line 282
    const/4 v12, 0x2

    .line 283
    move-object/from16 v16, v17

    .line 284
    const/16 v20, 0x2

    goto :goto_1

    .line 291
    :pswitch_2
    move-object/from16 v24, v17

    goto :goto_1

    .line 297
    :cond_1
    if-eqz v12, :cond_12

    if-eqz v24, :cond_12

    .line 298
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/authenticators/BlurEmailAuthenticator;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    .line 299
    .local v22, resolver:Landroid/content/ContentResolver;
    new-instance v25, Landroid/content/ContentValues;

    invoke-direct/range {v25 .. v25}, Landroid/content/ContentValues;-><init>()V

    .line 300
    .local v25, smtpValues:Landroid/content/ContentValues;
    const-string v27, "server_port"

    invoke-virtual/range {v24 .. v24}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo;->getPort()I

    move-result v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 301
    const-string v27, "server_address"

    invoke-virtual/range {v24 .. v24}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo;->getServer()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    const-string v27, "capability"

    const/16 v28, 0x4

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 303
    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/motorola/blur/authenticators/BlurEmailAuthenticator;->setSsl(Landroid/content/ContentValues;Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo;)V

    .line 304
    const-string v27, "providers_id"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/authenticators/BlurEmailAuthenticator;->mUserInfo:Lcom/motorola/blur/authenticators/UserInfo;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-wide v0, v0, Lcom/motorola/blur/authenticators/UserInfo;->providerId:J

    move-wide/from16 v28, v0

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v28

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 306
    new-instance v23, Landroid/content/ContentValues;

    invoke-direct/range {v23 .. v23}, Landroid/content/ContentValues;-><init>()V

    .line 307
    .local v23, smtpAsValues:Landroid/content/ContentValues;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/motorola/blur/authenticators/BlurEmailAuthenticator;->hasYahooFlags(Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo;)Z

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/motorola/blur/authenticators/BlurEmailAuthenticator;->mIsTokenAuth:Z

    .line 309
    invoke-virtual/range {v24 .. v24}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo;->hasAuth()Z

    move-result v27

    if-eqz v27, :cond_2

    invoke-virtual/range {v24 .. v24}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo;->hasAuth()Z

    move-result v27

    if-eqz v27, :cond_3

    invoke-virtual/range {v24 .. v24}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo;->getAuth()Z

    move-result v27

    if-eqz v27, :cond_3

    .line 311
    :cond_2
    const-string v27, "username"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/motorola/blur/authenticators/BlurEmailAuthenticator;->makeUsernameFromEmail(Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    const-string v27, "password"

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/motorola/blur/authenticators/BlurEmailAuthenticator;->mIsTokenAuth:Z

    move/from16 v28, v0

    if-eqz v28, :cond_6

    const/16 v28, 0x0

    :goto_2
    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    :cond_3
    invoke-virtual/range {v24 .. v24}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo;->hasAuthType()Z

    move-result v27

    if-eqz v27, :cond_7

    .line 316
    const-string v27, "auth_type"

    invoke-virtual/range {v24 .. v24}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo;->getAuthType()I

    move-result v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 323
    :goto_3
    invoke-virtual/range {v24 .. v24}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo;->hasSecurityPolicy()Z

    move-result v27

    if-eqz v27, :cond_9

    .line 324
    const-string v27, "security_policy"

    invoke-virtual/range {v24 .. v24}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo;->getSecurityPolicy()Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo$SecurityPolicy;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo$SecurityPolicy;->getNumber()I

    move-result v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 329
    :goto_4
    invoke-virtual/range {v24 .. v24}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo;->hasVerifyCA()Z

    move-result v27

    if-eqz v27, :cond_a

    .line 330
    const-string v27, "verify_ca"

    invoke-virtual/range {v24 .. v24}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo;->getVerifyCA()Z

    move-result v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v28

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 335
    :goto_5
    new-instance v19, Landroid/content/ContentValues;

    invoke-direct/range {v19 .. v19}, Landroid/content/ContentValues;-><init>()V

    .line 336
    .local v19, mailValues:Landroid/content/ContentValues;
    const-string v27, "server_port"

    invoke-virtual/range {v16 .. v16}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo;->getPort()I

    move-result v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 337
    const-string v27, "server_address"

    invoke-virtual/range {v16 .. v16}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo;->getServer()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    const-string v27, "providers_id"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/authenticators/BlurEmailAuthenticator;->mUserInfo:Lcom/motorola/blur/authenticators/UserInfo;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-wide v0, v0, Lcom/motorola/blur/authenticators/UserInfo;->providerId:J

    move-wide/from16 v28, v0

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v28

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 339
    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/motorola/blur/authenticators/BlurEmailAuthenticator;->setSsl(Landroid/content/ContentValues;Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo;)V

    .line 341
    invoke-virtual/range {v16 .. v16}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo;->hasImageURL()Z

    move-result v27

    if-eqz v27, :cond_4

    .line 342
    invoke-virtual/range {v16 .. v16}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo;->getImageURL()Ljava/lang/String;

    move-result-object v15

    .line 343
    .local v15, imagePath:Ljava/lang/String;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v27

    if-nez v27, :cond_4

    .line 344
    const-string v27, "path"

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    move-object v2, v15

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    .end local v15           #imagePath:Ljava/lang/String;
    :cond_4
    const-string v27, "capability"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 349
    new-instance v18, Landroid/content/ContentValues;

    invoke-direct/range {v18 .. v18}, Landroid/content/ContentValues;-><init>()V

    .line 350
    .local v18, mailAsValues:Landroid/content/ContentValues;
    const-string v27, "username"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/motorola/blur/authenticators/BlurEmailAuthenticator;->makeUsernameFromEmail(Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    const/4 v9, -0x1

    .line 352
    .local v9, authType:I
    invoke-virtual/range {v16 .. v16}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo;->hasAuthType()Z

    move-result v27

    if-eqz v27, :cond_b

    .line 353
    invoke-virtual/range {v16 .. v16}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo;->getAuthType()I

    move-result v9

    .line 354
    const-string v27, "auth_type"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 360
    :goto_6
    const-string v27, "password"

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/motorola/blur/authenticators/BlurEmailAuthenticator;->mIsTokenAuth:Z

    move/from16 v28, v0

    if-eqz v28, :cond_d

    const/16 v28, 0x0

    :goto_7
    move-object/from16 v0, v18

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    const-string v27, "retention_policy"

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 364
    invoke-virtual/range {v16 .. v16}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo;->hasSecurityPolicy()Z

    move-result v27

    if-eqz v27, :cond_e

    .line 365
    const-string v27, "security_policy"

    invoke-virtual/range {v16 .. v16}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo;->getSecurityPolicy()Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo$SecurityPolicy;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo$SecurityPolicy;->getNumber()I

    move-result v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 370
    :goto_8
    invoke-virtual/range {v16 .. v16}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo;->hasVerifyCA()Z

    move-result v27

    if-eqz v27, :cond_f

    .line 371
    const-string v27, "verify_ca"

    invoke-virtual/range {v16 .. v16}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo;->getVerifyCA()Z

    move-result v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v28

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 376
    :goto_9
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 377
    .local v8, acctValues:Landroid/content/ContentValues;
    const-string v27, "provider_id"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/authenticators/BlurEmailAuthenticator;->mUserInfo:Lcom/motorola/blur/authenticators/UserInfo;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-wide v0, v0, Lcom/motorola/blur/authenticators/UserInfo;->providerId:J

    move-wide/from16 v28, v0

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v28

    move-object v0, v8

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 378
    const-string v27, "email_address"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/authenticators/BlurEmailAuthenticator;->mUserInfo:Lcom/motorola/blur/authenticators/UserInfo;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/motorola/blur/authenticators/UserInfo;->username:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object v0, v8

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    const-string v27, "account_pretty_name"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/authenticators/BlurEmailAuthenticator;->mUserInfo:Lcom/motorola/blur/authenticators/UserInfo;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/motorola/blur/authenticators/UserInfo;->username:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/authenticators/BlurEmailAuthenticator;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    invoke-static/range {v28 .. v29}, Lcom/motorola/blur/provider/DeviceSetup;->createPrettyName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v28

    move-object v0, v8

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    const-string v27, "user_pretty_name"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/authenticators/BlurEmailAuthenticator;->mMeName:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object v0, v8

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/authenticators/BlurEmailAuthenticator;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    const-string v28, "ftr_34568_enable"

    invoke-static/range {v27 .. v28}, Lcom/motorola/android/provider/MotorolaSettings;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 384
    .local v13, ftr_setting:Ljava/lang/String;
    if-eqz v13, :cond_5

    const-string v27, "true"

    move-object v0, v13

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_5

    .line 386
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/authenticators/BlurEmailAuthenticator;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    const-string v28, "com.motorola.blur.datamanager.app"

    const/16 v29, 0x0

    invoke-virtual/range {v27 .. v29}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v10

    .line 388
    .local v10, dmAppCtx:Landroid/content/Context;
    const-string v27, "34568_data_disable"

    const/16 v28, 0x0

    move-object v0, v10

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v21

    .line 391
    .local v21, preferences:Landroid/content/SharedPreferences;
    const-string v27, "sync_connection"

    const/16 v28, 0xff

    move-object/from16 v0, v21

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v26

    .line 393
    .local v26, sync_connect:I
    const-string v27, "sync_connection"

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    move-object v0, v8

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 401
    .end local v10           #dmAppCtx:Landroid/content/Context;
    .end local v21           #preferences:Landroid/content/SharedPreferences;
    .end local v26           #sync_connect:I
    :cond_5
    :goto_a
    sget-object v27, Lcom/motorola/blur/provider/DeviceSetup$Accounts;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v7

    .line 403
    .local v7, accountUri:Landroid/net/Uri;
    if-eqz v7, :cond_11

    .line 404
    invoke-static {v7}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v5

    .line 405
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/authenticators/BlurEmailAuthenticator;->mUserInfo:Lcom/motorola/blur/authenticators/UserInfo;

    move-object/from16 v27, v0

    move-wide v0, v5

    move-object/from16 v2, v27

    iput-wide v0, v2, Lcom/motorola/blur/authenticators/UserInfo;->accountId:J

    .line 406
    const-wide/16 v27, 0x0

    cmp-long v27, v5, v27

    if-lez v27, :cond_11

    .line 407
    move-object/from16 v0, v22

    move-wide v1, v5

    move-object/from16 v3, v19

    move-object/from16 v4, v18

    invoke-static {v0, v1, v2, v3, v4}, Lcom/motorola/blur/authenticators/BlurEmailAuthenticator;->addServiceAndActiveService(Landroid/content/ContentResolver;JLandroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v27

    if-nez v27, :cond_10

    .line 408
    const-wide/16 v27, -0x1

    .line 420
    .end local v7           #accountUri:Landroid/net/Uri;
    .end local v8           #acctValues:Landroid/content/ContentValues;
    .end local v9           #authType:I
    .end local v13           #ftr_setting:Ljava/lang/String;
    .end local v18           #mailAsValues:Landroid/content/ContentValues;
    .end local v19           #mailValues:Landroid/content/ContentValues;
    .end local v22           #resolver:Landroid/content/ContentResolver;
    .end local v23           #smtpAsValues:Landroid/content/ContentValues;
    .end local v25           #smtpValues:Landroid/content/ContentValues;
    :goto_b
    return-wide v27

    .line 312
    .restart local v22       #resolver:Landroid/content/ContentResolver;
    .restart local v23       #smtpAsValues:Landroid/content/ContentValues;
    .restart local v25       #smtpValues:Landroid/content/ContentValues;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/authenticators/BlurEmailAuthenticator;->mUserInfo:Lcom/motorola/blur/authenticators/UserInfo;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/motorola/blur/authenticators/UserInfo;->password:Ljava/lang/String;

    move-object/from16 v28, v0

    goto/16 :goto_2

    .line 317
    :cond_7
    const-string v27, "username"

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_8

    .line 318
    const-string v27, "auth_type"

    const/16 v28, 0x1

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_3

    .line 320
    :cond_8
    const-string v27, "auth_type"

    const/16 v28, 0x0

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_3

    .line 326
    :cond_9
    const-string v27, "security_policy"

    const/16 v28, 0x1

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_4

    .line 332
    :cond_a
    const-string v27, "verify_ca"

    const/16 v28, 0x1

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_5

    .line 355
    .restart local v9       #authType:I
    .restart local v18       #mailAsValues:Landroid/content/ContentValues;
    .restart local v19       #mailValues:Landroid/content/ContentValues;
    :cond_b
    const-string v27, "username"

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_c

    .line 356
    const-string v27, "auth_type"

    const/16 v28, 0x1

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_6

    .line 358
    :cond_c
    const-string v27, "auth_type"

    const/16 v28, 0x0

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_6

    .line 360
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/authenticators/BlurEmailAuthenticator;->mUserInfo:Lcom/motorola/blur/authenticators/UserInfo;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/motorola/blur/authenticators/UserInfo;->password:Ljava/lang/String;

    move-object/from16 v28, v0

    goto/16 :goto_7

    .line 367
    :cond_e
    const-string v27, "security_policy"

    const/16 v28, 0x1

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_8

    .line 373
    :cond_f
    const-string v27, "verify_ca"

    const/16 v28, 0x1

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_9

    .line 394
    .restart local v8       #acctValues:Landroid/content/ContentValues;
    .restart local v13       #ftr_setting:Ljava/lang/String;
    :catch_0
    move-exception v27

    move-object/from16 v11, v27

    .line 395
    .local v11, e:Ljava/lang/Exception;
    const-string v27, "BEA"

    const-string v28, "Exception during get sync_connect"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 410
    .end local v11           #e:Ljava/lang/Exception;
    .restart local v7       #accountUri:Landroid/net/Uri;
    :cond_10
    move-object/from16 v0, v22

    move-wide v1, v5

    move-object/from16 v3, v25

    move-object/from16 v4, v23

    invoke-static {v0, v1, v2, v3, v4}, Lcom/motorola/blur/authenticators/BlurEmailAuthenticator;->addServiceAndActiveService(Landroid/content/ContentResolver;JLandroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v27

    if-nez v27, :cond_11

    .line 411
    const-wide/16 v27, -0x1

    goto/16 :goto_b

    .line 415
    :cond_11
    move v0, v12

    move-object/from16 v1, p0

    iput v0, v1, Lcom/motorola/blur/authenticators/BlurEmailAuthenticator;->mProtocolCapability:I

    .end local v7           #accountUri:Landroid/net/Uri;
    .end local v8           #acctValues:Landroid/content/ContentValues;
    .end local v9           #authType:I
    .end local v13           #ftr_setting:Ljava/lang/String;
    .end local v18           #mailAsValues:Landroid/content/ContentValues;
    .end local v19           #mailValues:Landroid/content/ContentValues;
    .end local v22           #resolver:Landroid/content/ContentResolver;
    .end local v23           #smtpAsValues:Landroid/content/ContentValues;
    .end local v25           #smtpValues:Landroid/content/ContentValues;
    :cond_12
    move-wide/from16 v27, v5

    .line 420
    goto/16 :goto_b

    .line 267
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static grabActiveServiceValues(Landroid/content/ContentValues;)Landroid/content/ContentValues;
    .locals 5
    .parameter "serverValues"

    .prologue
    const-string v4, "username"

    const-string v3, "password"

    const-string v2, "max_size"

    .line 772
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 774
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "username"

    invoke-virtual {p0, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 776
    const-string v1, "username"

    const-string v1, "username"

    invoke-virtual {p0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 778
    const-string v1, "username"

    invoke-virtual {p0, v4}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 780
    :cond_0
    const-string v1, "password"

    invoke-virtual {p0, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 782
    const-string v1, "password"

    const-string v1, "password"

    invoke-virtual {p0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 784
    const-string v1, "password"

    invoke-virtual {p0, v3}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 786
    :cond_1
    const-string v1, "max_size"

    invoke-virtual {p0, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 788
    const-string v1, "max_size"

    const-string v1, "max_size"

    invoke-virtual {p0, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 790
    const-string v1, "max_size"

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 793
    :cond_2
    return-object v0
.end method

.method private handleMailSettings(Ljava/util/List;)Z
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 232
    .local p1, serverInfos:Ljava/util/List;,"Ljava/util/List<Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo;>;"
    invoke-direct {p0, p1}, Lcom/motorola/blur/authenticators/BlurEmailAuthenticator;->createTempAccount(Ljava/util/List;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadProvidersFromFlex(Ljava/lang/String;)V
    .locals 4
    .parameter "emailAddress"

    .prologue
    .line 477
    invoke-static {}, Lcom/motorola/blur/setup/FlexEmailProviders;->getInstance()Lcom/motorola/blur/setup/FlexEmailProviders;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/motorola/blur/authenticators/BlurEmailAuthenticator;->parseDomain(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/blur/setup/FlexEmailProviders;->getProviderInfo(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 478
    .local v1, serverInfos:Ljava/util/List;,"Ljava/util/List<Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo;>;"
    const-string v2, "BEA"

    const-string v3, "send serverinfos to processBackgroundMessage"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    invoke-virtual {p0}, Lcom/motorola/blur/authenticators/BlurEmailAuthenticator;->getBackgroundMessage()Landroid/os/Message;

    move-result-object v0

    .line 481
    .local v0, msg:Landroid/os/Message;
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 482
    const/4 v2, 0x7

    iput v2, v0, Landroid/os/Message;->what:I

    .line 483
    invoke-virtual {p0, v0}, Lcom/motorola/blur/authenticators/BlurEmailAuthenticator;->sendBackgroundMessage(Landroid/os/Message;)Z

    .line 484
    return-void
.end method

.method private parseDomain(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "emailAddress"

    .prologue
    .line 487
    const/4 v0, 0x0

    .line 488
    .local v0, domain:Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 489
    const/16 v3, 0x40

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    add-int/lit8 v1, v3, 0x1

    .line 490
    .local v1, domainBegin:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 491
    .local v2, domainEnd:I
    if-lez v2, :cond_0

    if-le v2, v1, :cond_0

    .line 492
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 495
    .end local v1           #domainBegin:I
    .end local v2           #domainEnd:I
    :cond_0
    return-object v0
.end method

.method private static removeActiveServiceValues(Landroid/content/ContentValues;)Landroid/content/ContentValues;
    .locals 1
    .parameter "serverValues"

    .prologue
    .line 804
    const-string v0, "username"

    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 805
    const-string v0, "password"

    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 806
    const-string v0, "max_size"

    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 808
    return-object p0
.end method

.method private setMeName()V
    .locals 1

    .prologue
    .line 866
    iget-object v0, p0, Lcom/motorola/blur/authenticators/BlurEmailAuthenticator;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/motorola/blur/setup/SilentBlurUtility;->isSilentRegistrationRequired(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 867
    iget-object v0, p0, Lcom/motorola/blur/authenticators/BlurEmailAuthenticator;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/motorola/blur/provider/contacts/IdentityModelProvider$ProviderQueries;->getBlurOwnerName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/authenticators/BlurEmailAuthenticator;->mMeName:Ljava/lang/String;

    .line 869
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/authenticators/BlurEmailAuthenticator;->mMeName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 870
    iget-object v0, p0, Lcom/motorola/blur/authenticators/BlurEmailAuthenticator;->mUserInfo:Lcom/motorola/blur/authenticators/UserInfo;

    iget-object v0, v0, Lcom/motorola/blur/authenticators/UserInfo;->username:Ljava/lang/String;

    iput-object v0, p0, Lcom/motorola/blur/authenticators/BlurEmailAuthenticator;->mMeName:Ljava/lang/String;

    .line 872
    :cond_1
    return-void
.end method

.method private static setSsl(Landroid/content/ContentValues;Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo;)V
    .locals 5
    .parameter "values"
    .parameter "info"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const-string v4, "secure"

    .line 737
    invoke-virtual {p1}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo;->hasSsl()Z

    move-result v0

    if-nez v0, :cond_1

    .line 738
    const-string v0, "secure"

    invoke-virtual {p1}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo;->getPort()I

    move-result v0

    const/16 v1, 0xc8

    if-le v0, v1, :cond_0

    move v0, v2

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 742
    :goto_1
    return-void

    :cond_0
    move v0, v3

    .line 738
    goto :goto_0

    .line 740
    :cond_1
    const-string v0, "secure"

    invoke-virtual {p1}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo;->getSsl()Z

    move-result v0

    if-ne v0, v2, :cond_2

    move v0, v2

    :goto_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1

    :cond_2
    move v0, v3

    goto :goto_2
.end method

.method private showManualConfigurationUI(Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;)Landroid/app/AlertDialog;
    .locals 3
    .parameter "error"

    .prologue
    .line 592
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/motorola/blur/authenticators/BlurEmailAuthenticator;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c008e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->None:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    if-ne p1, v1, :cond_0

    const v1, 0x7f0c0110

    :goto_0
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0112

    new-instance v2, Lcom/motorola/blur/authenticators/BlurEmailAuthenticator$4;

    invoke-direct {v2, p0}, Lcom/motorola/blur/authenticators/BlurEmailAuthenticator$4;-><init>(Lcom/motorola/blur/authenticators/BlurEmailAuthenticator;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    new-instance v2, Lcom/motorola/blur/authenticators/BlurEmailAuthenticator$3;

    invoke-direct {v2, p0}, Lcom/motorola/blur/authenticators/BlurEmailAuthenticator$3;-><init>(Lcom/motorola/blur/authenticators/BlurEmailAuthenticator;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    :cond_0
    const v1, 0x7f0c0111

    goto :goto_0
.end method


# virtual methods
.method public authenticate()V
    .locals 4

    .prologue
    .line 500
    new-instance v0, Lcom/motorola/blur/service/email/provider/EmailAuthenticationFactory;

    invoke-direct {v0}, Lcom/motorola/blur/service/email/provider/EmailAuthenticationFactory;-><init>()V

    .line 501
    .local v0, factory:Lcom/motorola/blur/util/authentication/AuthenticationFactory;
    iget-object v1, p0, Lcom/motorola/blur/authenticators/BlurEmailAuthenticator;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/motorola/blur/authenticators/BlurEmailAuthenticator;->mAuthObserver:Lcom/motorola/blur/util/authentication/AuthenticationFactory$AuthenticationObserver;

    invoke-virtual {p0}, Lcom/motorola/blur/authenticators/BlurEmailAuthenticator;->getProtocolName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/motorola/blur/util/authentication/AuthenticationFactory;->getAuthenticator(Landroid/content/Context;Lcom/motorola/blur/util/authentication/AuthenticationFactory$AuthenticationObserver;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 502
    const-string v1, "BEA"

    const-string v2, "Failed to get authenticator"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    :cond_0
    return-void
.end method

.method protected buildDupeQuery(Ljava/lang/StringBuilder;)Landroid/net/Uri;
    .locals 3
    .parameter "selection"

    .prologue
    .line 855
    const-string v0, "provider_id"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/authenticators/BlurEmailAuthenticator;->mUserInfo:Lcom/motorola/blur/authenticators/UserInfo;

    iget-wide v1, v1, Lcom/motorola/blur/authenticators/UserInfo;->providerId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "email_address"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/authenticators/BlurEmailAuthenticator;->mUserInfo:Lcom/motorola/blur/authenticators/UserInfo;

    iget-object v1, v1, Lcom/motorola/blur/authenticators/UserInfo;->username:Ljava/lang/String;

    invoke-static {v1}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 862
    sget-object v0, Lcom/motorola/blur/provider/DeviceSetup$Accounts;->CONTENT_URI:Landroid/net/Uri;

    return-object v0
.end method

.method doAuthentication(Ljava/lang/Object;)V
    .locals 22
    .parameter "auth"

    .prologue
    .line 114
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/motorola/blur/authenticators/BlurEmailAuthenticator;->mIsTokenAuth:Z

    move/from16 v16, v0

    .line 118
    .local v16, isTokenAuth:Z
    const/4 v11, 0x0

    .line 119
    .local v11, authObj:Lcom/motorola/blur/util/authentication/Authentication;
    const/16 v19, 0x2

    .line 120
    .local v19, responseError:I
    if-eqz v16, :cond_8

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    move-object/from16 v20, v6

    .line 121
    .local v20, token:[Ljava/lang/String;
    :goto_0
    if-eqz p1, :cond_0

    .line 122
    move-object/from16 v0, p1

    check-cast v0, Lcom/motorola/blur/util/authentication/Authentication;

    move-object v11, v0

    .line 123
    if-eqz v16, :cond_9

    .line 124
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/authenticators/BlurEmailAuthenticator;->mUserInfo:Lcom/motorola/blur/authenticators/UserInfo;

    move-object v6, v0

    iget-wide v6, v6, Lcom/motorola/blur/authenticators/UserInfo;->accountId:J

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/authenticators/BlurEmailAuthenticator;->mUserInfo:Lcom/motorola/blur/authenticators/UserInfo;

    move-object v8, v0

    iget-object v8, v8, Lcom/motorola/blur/authenticators/UserInfo;->password:Ljava/lang/String;

    move-object v0, v11

    move-wide v1, v6

    move-object v3, v8

    move-object/from16 v4, v20

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/motorola/blur/util/authentication/Authentication;->authenticateWithCredential(JLjava/lang/String;[Ljava/lang/String;)I

    move-result v19

    .line 133
    :cond_0
    :goto_1
    if-nez v19, :cond_6

    .line 134
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/authenticators/BlurEmailAuthenticator;->mContext:Landroid/content/Context;

    move-object v13, v0

    .line 135
    .local v13, context:Landroid/content/Context;
    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 136
    .local v5, contentResolver:Landroid/content/ContentResolver;
    if-eqz v16, :cond_3

    .line 137
    new-instance v21, Landroid/content/ContentValues;

    invoke-direct/range {v21 .. v21}, Landroid/content/ContentValues;-><init>()V

    .line 138
    .local v21, tokenVals:Landroid/content/ContentValues;
    sget-object v6, Lcom/motorola/blur/provider/DeviceSetup$ActiveServices;->BY_ACCOUNT_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/authenticators/BlurEmailAuthenticator;->mUserInfo:Lcom/motorola/blur/authenticators/UserInfo;

    move-object v7, v0

    iget-wide v7, v7, Lcom/motorola/blur/authenticators/UserInfo;->accountId:J

    invoke-static {v6, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    .line 146
    .local v18, passwordUpdateCursor:Landroid/database/Cursor;
    if-eqz v18, :cond_3

    .line 147
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 149
    :cond_1
    const/16 v6, 0x8

    move-object/from16 v0, v18

    move v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const/4 v7, 0x5

    if-ne v6, v7, :cond_a

    .line 151
    const-string v6, "password"

    const/4 v7, 0x1

    aget-object v7, v20, v7

    move-object/from16 v0, v21

    move-object v1, v6

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    :goto_2
    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/motorola/blur/provider/DeviceSetup$ActiveServices;->CONTENT_URI:Landroid/net/Uri;

    const/4 v8, 0x5

    move-object/from16 v0, v18

    move v1, v8

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-static {v7, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, v6

    move-object v1, v7

    move-object/from16 v2, v21

    move-object v3, v8

    move-object v4, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 165
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 167
    :cond_2
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 170
    .end local v18           #passwordUpdateCursor:Landroid/database/Cursor;
    .end local v21           #tokenVals:Landroid/content/ContentValues;
    :cond_3
    sget-object v6, Lcom/motorola/blur/provider/DeviceSetup$ActiveServices;->BY_ACCOUNT_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/authenticators/BlurEmailAuthenticator;->mUserInfo:Lcom/motorola/blur/authenticators/UserInfo;

    move-object v7, v0

    iget-wide v7, v7, Lcom/motorola/blur/authenticators/UserInfo;->accountId:J

    invoke-static {v6, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    const/4 v7, 0x0

    const-string v8, "capability!=4"

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 174
    .local v14, cursor:Landroid/database/Cursor;
    if-eqz v14, :cond_6

    .line 175
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 183
    :cond_4
    const/16 v6, 0x8

    invoke-interface {v14, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 184
    .local v12, capability:I
    new-instance v15, Landroid/content/Intent;

    const-string v6, "com.motorola.blur.setup.changes.ACTION_VALIDATED"

    invoke-direct {v15, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 185
    .local v15, intent:Landroid/content/Intent;
    const-string v6, "com.motorola.blur.setup.changes.capability.%d"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v15, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 186
    const-string v6, "_id"

    const/4 v7, 0x5

    invoke-interface {v14, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-virtual {v15, v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 188
    const-string v6, "account_id"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/authenticators/BlurEmailAuthenticator;->mUserInfo:Lcom/motorola/blur/authenticators/UserInfo;

    move-object v7, v0

    iget-wide v7, v7, Lcom/motorola/blur/authenticators/UserInfo;->accountId:J

    invoke-virtual {v15, v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 189
    const-string v6, "provider_id"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/authenticators/BlurEmailAuthenticator;->mUserInfo:Lcom/motorola/blur/authenticators/UserInfo;

    move-object v7, v0

    iget-wide v7, v7, Lcom/motorola/blur/authenticators/UserInfo;->providerId:J

    invoke-virtual {v15, v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 190
    const-string v6, "capability"

    invoke-virtual {v15, v6, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 191
    const-string v6, "com.motorola.blur.setupprovider.Permissions.ACCESS_ACCOUNTS"

    invoke-virtual {v13, v15, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 192
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-nez v6, :cond_4

    .line 194
    .end local v12           #capability:I
    .end local v15           #intent:Landroid/content/Intent;
    :cond_5
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 197
    .end local v5           #contentResolver:Landroid/content/ContentResolver;
    .end local v13           #context:Landroid/content/Context;
    .end local v14           #cursor:Landroid/database/Cursor;
    :cond_6
    if-eqz v11, :cond_7

    .line 198
    invoke-interface {v11}, Lcom/motorola/blur/util/authentication/Authentication;->close()V

    .line 200
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/blur/authenticators/BlurEmailAuthenticator;->getBackgroundMessage()Landroid/os/Message;

    move-result-object v17

    .line 201
    .local v17, msg:Landroid/os/Message;
    const/4 v6, 0x3

    move v0, v6

    move-object/from16 v1, v17

    iput v0, v1, Landroid/os/Message;->what:I

    .line 202
    move/from16 v0, v19

    move-object/from16 v1, v17

    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 203
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/motorola/blur/authenticators/BlurEmailAuthenticator;->sendBackgroundMessage(Landroid/os/Message;)Z

    .line 204
    return-void

    .line 120
    .end local v17           #msg:Landroid/os/Message;
    .end local v20           #token:[Ljava/lang/String;
    :cond_8
    const/4 v6, 0x0

    move-object/from16 v20, v6

    goto/16 :goto_0

    .line 126
    .restart local v20       #token:[Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/authenticators/BlurEmailAuthenticator;->mUserInfo:Lcom/motorola/blur/authenticators/UserInfo;

    move-object v6, v0

    iget-wide v6, v6, Lcom/motorola/blur/authenticators/UserInfo;->accountId:J

    invoke-interface {v11, v6, v7}, Lcom/motorola/blur/util/authentication/Authentication;->authenticate(J)I

    move-result v19

    goto/16 :goto_1

    .line 154
    .restart local v5       #contentResolver:Landroid/content/ContentResolver;
    .restart local v13       #context:Landroid/content/Context;
    .restart local v18       #passwordUpdateCursor:Landroid/database/Cursor;
    .restart local v21       #tokenVals:Landroid/content/ContentValues;
    :cond_a
    const-string v6, "password"

    const/4 v7, 0x0

    aget-object v7, v20, v7

    move-object/from16 v0, v21

    move-object v1, v6

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method protected getProtocolName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 513
    iget v0, p0, Lcom/motorola/blur/authenticators/BlurEmailAuthenticator;->mProtocolCapability:I

    packed-switch v0, :pswitch_data_0

    .line 519
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 515
    :pswitch_0
    const-string v0, "IMAP_PROTOCOL"

    goto :goto_0

    .line 517
    :pswitch_1
    const-string v0, "POP3_PROTOCOL"

    goto :goto_0

    .line 513
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected handleAuthResponse(I)V
    .locals 3
    .parameter "responseError"

    .prologue
    const/4 v2, 0x2

    .line 658
    invoke-virtual {p0}, Lcom/motorola/blur/authenticators/BlurEmailAuthenticator;->getForegroundMessage()Landroid/os/Message;

    move-result-object v0

    .line 659
    .local v0, msg:Landroid/os/Message;
    iput v2, v0, Landroid/os/Message;->what:I

    .line 661
    packed-switch p1, :pswitch_data_0

    .line 694
    :pswitch_0
    const v1, 0x7f0c00f3

    invoke-virtual {p0, v1}, Lcom/motorola/blur/authenticators/BlurEmailAuthenticator;->appendError(I)V

    .line 698
    :goto_0
    iget v1, v0, Landroid/os/Message;->what:I

    if-ne v1, v2, :cond_0

    .line 699
    invoke-virtual {p0}, Lcom/motorola/blur/authenticators/BlurEmailAuthenticator;->resetAccount()V

    .line 701
    :cond_0
    invoke-virtual {p0, v0}, Lcom/motorola/blur/authenticators/BlurEmailAuthenticator;->sendForegroundMessage(Landroid/os/Message;)Z

    .line 702
    return-void

    .line 663
    :pswitch_1
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/motorola/blur/authenticators/BlurEmailAuthenticator;->sendForegroundMessage(I)Z

    .line 664
    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->what:I

    goto :goto_0

    .line 667
    :pswitch_2
    const v1, 0x7f0c00da

    invoke-virtual {p0, v1}, Lcom/motorola/blur/authenticators/BlurEmailAuthenticator;->appendError(I)V

    goto :goto_0

    .line 671
    :pswitch_3
    const v1, 0x7f0c00db

    invoke-virtual {p0, v1}, Lcom/motorola/blur/authenticators/BlurEmailAuthenticator;->appendError(I)V

    goto :goto_0

    .line 675
    :pswitch_4
    const v1, 0x7f0c00dc

    invoke-virtual {p0, v1}, Lcom/motorola/blur/authenticators/BlurEmailAuthenticator;->appendError(I)V

    goto :goto_0

    .line 679
    :pswitch_5
    const v1, 0x7f0c00dd

    invoke-virtual {p0, v1}, Lcom/motorola/blur/authenticators/BlurEmailAuthenticator;->appendError(I)V

    goto :goto_0

    .line 683
    :pswitch_6
    const v1, 0x7f0c00fa

    invoke-virtual {p0, v1}, Lcom/motorola/blur/authenticators/BlurEmailAuthenticator;->appendError(I)V

    goto :goto_0

    .line 690
    :pswitch_7
    invoke-virtual {p0, v0}, Lcom/motorola/blur/authenticators/BlurEmailAuthenticator;->handleCertificateIssue(Landroid/os/Message;)V

    goto :goto_0

    .line 661
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_6
        :pswitch_2
        :pswitch_3
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected handleCertificateIssue(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 724
    const v0, 0x7f0c00d9

    invoke-virtual {p0, v0}, Lcom/motorola/blur/authenticators/BlurEmailAuthenticator;->appendError(I)V

    .line 725
    const/4 v0, 0x2

    iput v0, p1, Landroid/os/Message;->what:I

    .line 726
    return-void
.end method

.method protected hasYahooFlags(Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo;)Z
    .locals 2
    .parameter "incomingSettings"

    .prologue
    .line 431
    if-eqz p1, :cond_0

    .line 432
    invoke-virtual {p1}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo;->hasAuthType()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo;->getAuthType()I

    move-result v0

    const/16 v1, 0x28

    if-ne v0, v1, :cond_0

    .line 433
    const/4 v0, 0x1

    .line 436
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isAccountDuplicate()Z
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 837
    const/4 v7, 0x0

    .line 839
    .local v7, hasError:Z
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 840
    .local v8, selection:Ljava/lang/StringBuilder;
    invoke-virtual {p0, v8}, Lcom/motorola/blur/authenticators/BlurEmailAuthenticator;->buildDupeQuery(Ljava/lang/StringBuilder;)Landroid/net/Uri;

    move-result-object v1

    .line 841
    .local v1, uri:Landroid/net/Uri;
    iget-object v3, p0, Lcom/motorola/blur/authenticators/BlurEmailAuthenticator;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 842
    .local v0, contentResolver:Landroid/content/ContentResolver;
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 843
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 844
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 845
    const/4 v7, 0x1

    .line 846
    const v2, 0x7f0c0092

    invoke-virtual {p0, v2}, Lcom/motorola/blur/authenticators/BlurEmailAuthenticator;->appendError(I)V

    .line 848
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 850
    :cond_1
    return v7
.end method

.method protected final makeUsernameFromEmail(Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo;)Ljava/lang/String;
    .locals 2
    .parameter "info"

    .prologue
    .line 820
    invoke-virtual {p1}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo;->hasEmailPattern()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo;->hasLoginReplacement()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 821
    invoke-virtual {p1}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo;->getEmailPattern()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/authenticators/BlurEmailAuthenticator;->mUserInfo:Lcom/motorola/blur/authenticators/UserInfo;

    iget-object v1, v1, Lcom/motorola/blur/authenticators/UserInfo;->username:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {p1}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo;->getLoginReplacement()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 825
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/motorola/blur/setup/ValidatedPatternValue;->EMAIL_PATTERN:Ljava/util/regex/Pattern;

    iget-object v1, p0, Lcom/motorola/blur/authenticators/BlurEmailAuthenticator;->mUserInfo:Lcom/motorola/blur/authenticators/UserInfo;

    iget-object v1, v1, Lcom/motorola/blur/authenticators/UserInfo;->username:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, "$1"

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public processBackgroundMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const v5, 0x7f0c0094

    const/4 v2, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x5

    const-string v6, "BEA"

    .line 526
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 586
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 528
    :pswitch_1
    iget-boolean v1, p0, Lcom/motorola/blur/authenticators/BlurEmailAuthenticator;->mPendingRequest:Z

    if-eqz v1, :cond_0

    .line 529
    invoke-virtual {p0, v5}, Lcom/motorola/blur/authenticators/BlurEmailAuthenticator;->appendError(I)V

    .line 530
    invoke-virtual {p0, v4}, Lcom/motorola/blur/authenticators/BlurEmailAuthenticator;->sendForegroundMessage(I)Z

    goto :goto_0

    .line 534
    :pswitch_2
    invoke-virtual {p0, v2}, Lcom/motorola/blur/authenticators/BlurEmailAuthenticator;->sendForegroundMessage(I)Z

    .line 535
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v1}, Lcom/motorola/blur/authenticators/BlurEmailAuthenticator;->handleAuthResponse(I)V

    goto :goto_0

    .line 539
    :pswitch_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v1}, Lcom/motorola/blur/authenticators/BlurEmailAuthenticator;->doAuthentication(Ljava/lang/Object;)V

    goto :goto_0

    .line 543
    :pswitch_4
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Lcom/motorola/blur/service/blur/devicesetup/EmailProviderWS$Response;

    if-eqz v1, :cond_0

    .line 544
    invoke-virtual {p0, v2}, Lcom/motorola/blur/authenticators/BlurEmailAuthenticator;->sendForegroundMessage(I)Z

    .line 545
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/blur/service/blur/devicesetup/EmailProviderWS$Response;

    .line 546
    .local v0, resp:Lcom/motorola/blur/service/blur/devicesetup/EmailProviderWS$Response;
    invoke-virtual {v0}, Lcom/motorola/blur/service/blur/devicesetup/EmailProviderWS$Response;->getError()Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    move-result-object v1

    sget-object v2, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->None:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    if-ne v1, v2, :cond_2

    .line 547
    invoke-virtual {v0}, Lcom/motorola/blur/service/blur/devicesetup/EmailProviderWS$Response;->getServerList()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/motorola/blur/authenticators/BlurEmailAuthenticator;->handleMailSettings(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 548
    invoke-virtual {p0}, Lcom/motorola/blur/authenticators/BlurEmailAuthenticator;->authenticate()V

    goto :goto_0

    .line 551
    :cond_1
    invoke-virtual {p0}, Lcom/motorola/blur/authenticators/BlurEmailAuthenticator;->resetAccount()V

    .line 552
    invoke-virtual {p0, v5}, Lcom/motorola/blur/authenticators/BlurEmailAuthenticator;->appendError(I)V

    .line 553
    invoke-virtual {p0, v4}, Lcom/motorola/blur/authenticators/BlurEmailAuthenticator;->sendForegroundMessage(I)Z

    goto :goto_0

    .line 556
    :cond_2
    invoke-virtual {v0}, Lcom/motorola/blur/service/blur/devicesetup/EmailProviderWS$Response;->getError()Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/motorola/blur/authenticators/BlurEmailAuthenticator;->showManualConfigurationUI(Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;)Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/blur/authenticators/BlurEmailAuthenticator;->mDialog:Landroid/app/AlertDialog;

    .line 557
    invoke-virtual {p0, v3}, Lcom/motorola/blur/authenticators/BlurEmailAuthenticator;->sendForegroundMessage(I)Z

    goto :goto_0

    .line 565
    .end local v0           #resp:Lcom/motorola/blur/service/blur/devicesetup/EmailProviderWS$Response;
    :pswitch_5
    const-string v1, "BEA"

    const-string v1, "processBackgroundMessage called for LOADED_FLEX_SETTINGS"

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_3

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/motorola/blur/authenticators/BlurEmailAuthenticator;->handleMailSettings(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 570
    invoke-virtual {p0}, Lcom/motorola/blur/authenticators/BlurEmailAuthenticator;->authenticate()V

    goto :goto_0

    .line 572
    :cond_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_4

    .line 573
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/blur/service/blur/devicesetup/EmailProviderWS$Response;

    .line 575
    .restart local v0       #resp:Lcom/motorola/blur/service/blur/devicesetup/EmailProviderWS$Response;
    invoke-virtual {v0}, Lcom/motorola/blur/service/blur/devicesetup/EmailProviderWS$Response;->getError()Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/motorola/blur/authenticators/BlurEmailAuthenticator;->showManualConfigurationUI(Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;)Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/blur/authenticators/BlurEmailAuthenticator;->mDialog:Landroid/app/AlertDialog;

    .line 576
    invoke-virtual {p0, v3}, Lcom/motorola/blur/authenticators/BlurEmailAuthenticator;->sendForegroundMessage(I)Z

    goto/16 :goto_0

    .line 579
    .end local v0           #resp:Lcom/motorola/blur/service/blur/devicesetup/EmailProviderWS$Response;
    :cond_4
    const-string v1, "BEA"

    const-string v1, "fail to get email server info from blur or ap flex, go to manual setup"

    invoke-static {v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    sget-object v1, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->None:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    invoke-direct {p0, v1}, Lcom/motorola/blur/authenticators/BlurEmailAuthenticator;->showManualConfigurationUI(Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;)Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/blur/authenticators/BlurEmailAuthenticator;->mDialog:Landroid/app/AlertDialog;

    .line 581
    invoke-virtual {p0, v3}, Lcom/motorola/blur/authenticators/BlurEmailAuthenticator;->sendForegroundMessage(I)Z

    goto/16 :goto_0

    .line 526
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method protected registerReceivers()V
    .locals 3

    .prologue
    .line 444
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 445
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.motorola.blur.service.blur.Actions.SERVICES_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 446
    const-string v1, "com.motorola.blur.service.blur.devicesetup.emailprovider.resp"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 447
    iget-object v1, p0, Lcom/motorola/blur/authenticators/BlurEmailAuthenticator;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/motorola/blur/authenticators/BlurEmailAuthenticator;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 448
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/blur/authenticators/BlurEmailAuthenticator;->mRegistered:Ljava/lang/Boolean;

    .line 449
    return-void
.end method

.method protected requestSettings()V
    .locals 4

    .prologue
    const-string v3, "BEA"

    .line 455
    invoke-virtual {p0}, Lcom/motorola/blur/authenticators/BlurEmailAuthenticator;->registerReceivers()V

    .line 457
    iget-object v1, p0, Lcom/motorola/blur/authenticators/BlurEmailAuthenticator;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/motorola/blur/provider/DeviceSetup$Accounts;->hasBlurAccount(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 458
    const-string v1, "BEA"

    const-string v1, "requestSetting from blur server"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    iget-object v1, p0, Lcom/motorola/blur/authenticators/BlurEmailAuthenticator;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/motorola/blur/service/blur/devicesetup/client/DeviceSetupWSClientFactory;->getClient(Landroid/content/Context;)Lcom/motorola/blur/service/blur/devicesetup/client/IDeviceSetupWSClient;

    move-result-object v0

    .line 460
    .local v0, wsClient:Lcom/motorola/blur/service/blur/devicesetup/client/IDeviceSetupWSClient;
    iget-object v1, p0, Lcom/motorola/blur/authenticators/BlurEmailAuthenticator;->mUserInfo:Lcom/motorola/blur/authenticators/UserInfo;

    iget-object v1, v1, Lcom/motorola/blur/authenticators/UserInfo;->username:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/motorola/blur/service/blur/devicesetup/client/IDeviceSetupWSClient;->getMailSettings(Ljava/lang/String;)Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    .line 470
    .end local v0           #wsClient:Lcom/motorola/blur/service/blur/devicesetup/client/IDeviceSetupWSClient;
    :goto_0
    return-void

    .line 461
    :cond_0
    invoke-static {}, Lcom/motorola/blur/setup/FlexEmailProviders;->getInstance()Lcom/motorola/blur/setup/FlexEmailProviders;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/setup/FlexEmailProviders;->getProvidersCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 462
    const-string v1, "BEA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadProvidersFromFlex username ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/blur/authenticators/BlurEmailAuthenticator;->mUserInfo:Lcom/motorola/blur/authenticators/UserInfo;

    iget-object v2, v2, Lcom/motorola/blur/authenticators/UserInfo;->username:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    iget-object v1, p0, Lcom/motorola/blur/authenticators/BlurEmailAuthenticator;->mUserInfo:Lcom/motorola/blur/authenticators/UserInfo;

    iget-object v1, v1, Lcom/motorola/blur/authenticators/UserInfo;->username:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/motorola/blur/authenticators/BlurEmailAuthenticator;->loadProvidersFromFlex(Ljava/lang/String;)V

    goto :goto_0

    .line 466
    :cond_1
    const-string v1, "BEA"

    const-string v1, "we do not have blur account, neither flex file... anyway go to blur server"

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    iget-object v1, p0, Lcom/motorola/blur/authenticators/BlurEmailAuthenticator;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/motorola/blur/service/blur/devicesetup/client/DeviceSetupWSClientFactory;->getClient(Landroid/content/Context;)Lcom/motorola/blur/service/blur/devicesetup/client/IDeviceSetupWSClient;

    move-result-object v0

    .line 468
    .restart local v0       #wsClient:Lcom/motorola/blur/service/blur/devicesetup/client/IDeviceSetupWSClient;
    iget-object v1, p0, Lcom/motorola/blur/authenticators/BlurEmailAuthenticator;->mUserInfo:Lcom/motorola/blur/authenticators/UserInfo;

    iget-object v1, v1, Lcom/motorola/blur/authenticators/UserInfo;->username:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/motorola/blur/service/blur/devicesetup/client/IDeviceSetupWSClient;->getMailSettings(Ljava/lang/String;)Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    goto :goto_0
.end method

.method protected resetAccount()V
    .locals 7

    .prologue
    const-wide/16 v5, 0x0

    const/4 v4, 0x0

    .line 708
    iget-object v0, p0, Lcom/motorola/blur/authenticators/BlurEmailAuthenticator;->mUserInfo:Lcom/motorola/blur/authenticators/UserInfo;

    iget-wide v0, v0, Lcom/motorola/blur/authenticators/UserInfo;->accountId:J

    cmp-long v0, v0, v5

    if-lez v0, :cond_1

    .line 709
    iget-object v0, p0, Lcom/motorola/blur/authenticators/BlurEmailAuthenticator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/motorola/blur/provider/DeviceSetup$Accounts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/blur/authenticators/BlurEmailAuthenticator;->mUserInfo:Lcom/motorola/blur/authenticators/UserInfo;

    iget-wide v2, v2, Lcom/motorola/blur/authenticators/UserInfo;->accountId:J

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 714
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/authenticators/BlurEmailAuthenticator;->mUserInfo:Lcom/motorola/blur/authenticators/UserInfo;

    iput-wide v5, v0, Lcom/motorola/blur/authenticators/UserInfo;->accountId:J

    .line 716
    :cond_1
    return-void
.end method

.method protected startAuth()V
    .locals 1

    .prologue
    .line 241
    invoke-virtual {p0}, Lcom/motorola/blur/authenticators/BlurEmailAuthenticator;->validateForEmail()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    invoke-virtual {p0}, Lcom/motorola/blur/authenticators/BlurEmailAuthenticator;->requestSettings()V

    .line 246
    :goto_0
    return-void

    .line 244
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/motorola/blur/authenticators/BlurEmailAuthenticator;->sendForegroundMessage(I)Z

    goto :goto_0
.end method

.method protected unregisterReceivers()V
    .locals 2

    .prologue
    .line 813
    iget-object v0, p0, Lcom/motorola/blur/authenticators/BlurEmailAuthenticator;->mRegistered:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 814
    iget-object v0, p0, Lcom/motorola/blur/authenticators/BlurEmailAuthenticator;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/motorola/blur/authenticators/BlurEmailAuthenticator;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 815
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/authenticators/BlurEmailAuthenticator;->mRegistered:Ljava/lang/Boolean;

    .line 817
    :cond_0
    return-void
.end method

.method protected validate()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 625
    invoke-super {p0}, Lcom/motorola/blur/authenticators/BlurAuthenticator;->validate()Z

    move-result v0

    .line 626
    .local v0, success:Z
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/blur/authenticators/BlurEmailAuthenticator;->validateUsername()Z

    move-result v1

    if-eqz v1, :cond_0

    move v0, v3

    .line 627
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/motorola/blur/authenticators/BlurEmailAuthenticator;->validatePassword()Z

    move-result v1

    if-eqz v1, :cond_1

    move v0, v3

    .line 628
    :goto_1
    return v0

    :cond_0
    move v0, v2

    .line 626
    goto :goto_0

    :cond_1
    move v0, v2

    .line 627
    goto :goto_1
.end method

.method protected validateEmailAddress(Ljava/lang/String;)Z
    .locals 5
    .parameter "address"

    .prologue
    .line 638
    new-instance v0, Lcom/motorola/blur/setup/ValidatedPatternValue;

    sget-object v2, Lcom/motorola/blur/setup/ValidatedPatternValue;->EMAIL_PATTERN:Ljava/util/regex/Pattern;

    const v3, 0x7f0c0089

    const/4 v4, 0x0

    invoke-direct {v0, v2, v3, v4}, Lcom/motorola/blur/setup/ValidatedPatternValue;-><init>(Ljava/util/regex/Pattern;ILjava/lang/String;)V

    .line 639
    .local v0, emailPattern:Lcom/motorola/blur/setup/ValidatedPatternValue;
    invoke-virtual {v0, p1}, Lcom/motorola/blur/setup/ValidatedPatternValue;->isValidValue(Ljava/lang/String;)Z

    move-result v1

    .line 640
    .local v1, validated:Z
    if-nez v1, :cond_0

    .line 641
    iget-object v2, p0, Lcom/motorola/blur/authenticators/BlurEmailAuthenticator;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/motorola/blur/setup/ValidatedPatternValue;->getError(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/motorola/blur/authenticators/BlurEmailAuthenticator;->appendError(Ljava/lang/String;)V

    .line 643
    :cond_0
    return v1
.end method

.method protected validateForEmail()Z
    .locals 2

    .prologue
    .line 616
    invoke-virtual {p0}, Lcom/motorola/blur/authenticators/BlurEmailAuthenticator;->validate()Z

    move-result v0

    .line 617
    .local v0, success:Z
    if-eqz v0, :cond_0

    .line 618
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/motorola/blur/authenticators/BlurEmailAuthenticator;->isAccountDuplicate()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    move v0, v1

    .line 620
    :cond_0
    :goto_0
    return v0

    .line 618
    :cond_1
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method protected validatePassword()Z
    .locals 2

    .prologue
    .line 647
    iget-object v1, p0, Lcom/motorola/blur/authenticators/BlurEmailAuthenticator;->mUserInfo:Lcom/motorola/blur/authenticators/UserInfo;

    iget-object v1, v1, Lcom/motorola/blur/authenticators/UserInfo;->password:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    move v0, v1

    .line 648
    .local v0, validated:Z
    :goto_0
    if-nez v0, :cond_0

    .line 649
    const v1, 0x7f0c006e

    invoke-virtual {p0, v1}, Lcom/motorola/blur/authenticators/BlurEmailAuthenticator;->appendError(I)V

    .line 651
    :cond_0
    return v0

    .line 647
    .end local v0           #validated:Z
    :cond_1
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method protected validateUsername()Z
    .locals 1

    .prologue
    .line 632
    iget-object v0, p0, Lcom/motorola/blur/authenticators/BlurEmailAuthenticator;->mUserInfo:Lcom/motorola/blur/authenticators/UserInfo;

    iget-object v0, v0, Lcom/motorola/blur/authenticators/UserInfo;->username:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/motorola/blur/authenticators/BlurEmailAuthenticator;->validateEmailAddress(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
