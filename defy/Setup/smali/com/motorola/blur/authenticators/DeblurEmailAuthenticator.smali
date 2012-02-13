.class public Lcom/motorola/blur/authenticators/DeblurEmailAuthenticator;
.super Lcom/motorola/blur/authenticators/BlurAuthenticator;
.source "DeblurEmailAuthenticator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/authenticators/DeblurEmailAuthenticator$4;
    }
.end annotation


# static fields
.field protected static final ACCOUNTS_CHANGED_PERMISSION:Ljava/lang/String; = "com.motorola.blur.setupprovider.Permissions.ACCESS_ACCOUNTS"

.field private static final AS_ACCOUNT_SELECTION:Ljava/lang/String; = "account=?"

.field private static final ATTR_EMAIL_INCOMING_IMAGE_URL:Ljava/lang/String; = "email_incoming_image_url"

.field private static final ATTR_EMAIL_INCOMING_LOGIN_REPLACEMENT:Ljava/lang/String; = "email_incoming_login_replacement"

.field private static final ATTR_EMAIL_INCOMING_PATTERN:Ljava/lang/String; = "email_incoming_pattern"

.field private static final ATTR_EMAIL_INCOMING_SECURITY_POLICY:Ljava/lang/String; = "email_incoming_security_policy"

.field private static final ATTR_EMAIL_INCOMING_SERVER:Ljava/lang/String; = "email_incoming_server"

.field private static final ATTR_EMAIL_INCOMING_SERVER_PORT:Ljava/lang/String; = "email_incoming_server_port"

.field private static final ATTR_EMAIL_INCOMING_SSL:Ljava/lang/String; = "email_incoming_ssl"

.field private static final ATTR_EMAIL_INCOMING_TYPE:Ljava/lang/String; = "email_incoming_type"

.field private static final ATTR_EMAIL_INCOMING_VERIFY_CA_CHECK:Ljava/lang/String; = "email_incoming_verify_ca_check"

.field private static final ATTR_EMAIL_OUTGOING_AUTH:Ljava/lang/String; = "email_outgoing_auth"

.field private static final ATTR_EMAIL_OUTGOING_AUTHTYPE:Ljava/lang/String; = "email_outgoing_authtype"

.field private static final ATTR_EMAIL_OUTGOING_IMAGE_URL:Ljava/lang/String; = "email_outgoing_image_url"

.field private static final ATTR_EMAIL_OUTGOING_LOGIN_REPLACEMENT:Ljava/lang/String; = "email_outgoing_login_replacement"

.field private static final ATTR_EMAIL_OUTGOING_PATTERN:Ljava/lang/String; = "email_outgoing_email_pattern"

.field private static final ATTR_EMAIL_OUTGOING_SECURITY_POLICY:Ljava/lang/String; = "email_outgoing_security_policy"

.field private static final ATTR_EMAIL_OUTGOING_SERVER:Ljava/lang/String; = "email_outgoing_server"

.field private static final ATTR_EMAIL_OUTGOING_SERVER_PORT:Ljava/lang/String; = "email_outgoing_server_port"

.field private static final ATTR_EMAIL_OUTGOING_SSL:Ljava/lang/String; = "email_outgoing_ssl"

.field private static final ATTR_EMAIL_OUTGOING_TYPE:Ljava/lang/String; = "email_outgoing_type"

.field private static final ATTR_EMAIL_OUTGOING_VERIFY_CA_CHECK:Ljava/lang/String; = "email_outgoing_verify_ca_check"

.field private static final ATTR_EMAIL_SERVER_NAME:Ljava/lang/String; = "email_server_name"

.field private static final AUTH_TYPE_FALSE:I = 0x0

.field private static final AUTH_TYPE_TRUE:I = 0x1

.field protected static final AUTH_TYPE_YAHOO:I = 0x28

.field private static final CAPABILITY_SELECTION:Ljava/lang/String; = "capability!=4"

.field private static final DEFAULT_LOGIN_REPLACEMENT:Ljava/lang/String; = "$1"

.field private static final RECEIVED_AUTH_CONNECTION:I = 0x3

.field protected static final RECEIVED_MAIL_SETTINGS:I = 0x2

.field protected static final SERVICE_RESTARTED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "DBEA"

.field private static final TAG_EMAIL_SERVER:Ljava/lang/String; = "email_server"

.field private static final TAG_EMAIL_SERVER_CONFIG:Ljava/lang/String; = "email_server_config"


# instance fields
.field private final mAuthObserver:Lcom/motorola/blur/util/authentication/AuthenticationFactory$AuthenticationObserver;

.field protected mIsTokenAuth:Z

.field protected mMeName:Ljava/lang/String;

.field protected mProtocolCapability:I

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

    .line 130
    invoke-direct/range {p0 .. p8}, Lcom/motorola/blur/authenticators/BlurAuthenticator;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JJLcom/motorola/blur/authenticators/BlurAuthenticationListener;)V

    .line 61
    iput v1, p0, Lcom/motorola/blur/authenticators/DeblurEmailAuthenticator;->mProtocolCapability:I

    .line 95
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/blur/authenticators/DeblurEmailAuthenticator;->mMeName:Ljava/lang/String;

    .line 96
    iput-boolean v1, p0, Lcom/motorola/blur/authenticators/DeblurEmailAuthenticator;->mIsTokenAuth:Z

    .line 97
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/authenticators/DeblurEmailAuthenticator;->mRegistered:Ljava/lang/Boolean;

    .line 99
    new-instance v0, Lcom/motorola/blur/authenticators/DeblurEmailAuthenticator$1;

    invoke-direct {v0, p0}, Lcom/motorola/blur/authenticators/DeblurEmailAuthenticator$1;-><init>(Lcom/motorola/blur/authenticators/DeblurEmailAuthenticator;)V

    iput-object v0, p0, Lcom/motorola/blur/authenticators/DeblurEmailAuthenticator;->mAuthObserver:Lcom/motorola/blur/util/authentication/AuthenticationFactory$AuthenticationObserver;

    .line 131
    invoke-direct {p0}, Lcom/motorola/blur/authenticators/DeblurEmailAuthenticator;->setMeName()V

    .line 132
    return-void
.end method

.method private static addServiceAndActiveService(Landroid/content/ContentResolver;JLandroid/content/ContentValues;Landroid/content/ContentValues;)Z
    .locals 5
    .parameter "resolver"
    .parameter "accountId"
    .parameter "svcValues"
    .parameter "asValues"

    .prologue
    .line 897
    sget-object v3, Lcom/motorola/blur/provider/DeviceSetup$Services;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v3, p3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    .line 898
    .local v2, uri:Landroid/net/Uri;
    if-nez v2, :cond_0

    .line 899
    const/4 v3, 0x0

    .line 905
    :goto_0
    return v3

    .line 901
    :cond_0
    invoke-static {v2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    .line 902
    .local v0, serviceId:J
    const-string v3, "account"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p4, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 903
    const-string v3, "service_id"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p4, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 904
    sget-object v3, Lcom/motorola/blur/provider/DeviceSetup$ActiveServices;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v3, p4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 905
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private buildEmailServerInfo(Ljava/util/List;)Ljava/util/List;
    .locals 11
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/util/List",
            "<",
            "Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, emailConfigList:Ljava/util/List;,"Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    const-string v10, "DBEA"

    .line 356
    iget-object v8, p0, Lcom/motorola/blur/authenticators/DeblurEmailAuthenticator;->mUserInfo:Lcom/motorola/blur/authenticators/UserInfo;

    iget-object v8, v8, Lcom/motorola/blur/authenticators/UserInfo;->username:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 357
    .local v0, emailAddr:Ljava/lang/String;
    const-string v8, "DBEA"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "enter buildEmailServerInfo(), emailAddr = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    if-ge v3, v8, :cond_15

    .line 359
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 360
    .local v2, emailserver:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v8, "email_server_name"

    invoke-virtual {v2, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 361
    .local v1, email_server_name:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_14

    .line 362
    const-string v8, "DBEA"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Found email server = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 365
    .local v5, serverInfos:Ljava/util/List;,"Ljava/util/List<Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo;>;"
    invoke-static {}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo;->newBuilder()Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo$Builder;

    move-result-object v6

    .line 367
    .local v6, smtpBuilder:Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo$Builder;
    const-string v8, "email_outgoing_server"

    invoke-virtual {v2, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 368
    .local v7, value:Ljava/lang/String;
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_0

    .line 369
    invoke-virtual {v6, v7}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo$Builder;->setServer(Ljava/lang/String;)Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo$Builder;

    .line 371
    :cond_0
    const-string v8, "email_outgoing_server_port"

    invoke-virtual {v2, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .end local v7           #value:Ljava/lang/String;
    check-cast v7, Ljava/lang/String;

    .line 372
    .restart local v7       #value:Ljava/lang/String;
    if-eqz v7, :cond_1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_1

    .line 373
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v6, v8}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo$Builder;->setPort(I)Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo$Builder;

    .line 375
    :cond_1
    const-string v8, "email_outgoing_type"

    invoke-virtual {v2, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .end local v7           #value:Ljava/lang/String;
    check-cast v7, Ljava/lang/String;

    .line 376
    .restart local v7       #value:Ljava/lang/String;
    if-eqz v7, :cond_2

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_2

    .line 377
    invoke-direct {p0, v7}, Lcom/motorola/blur/authenticators/DeblurEmailAuthenticator;->getEmailServerType(Ljava/lang/String;)Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo$Type;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo$Builder;->setType(Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo$Type;)Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo$Builder;

    .line 379
    :cond_2
    const-string v8, "email_outgoing_email_pattern"

    invoke-virtual {v2, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .end local v7           #value:Ljava/lang/String;
    check-cast v7, Ljava/lang/String;

    .line 380
    .restart local v7       #value:Ljava/lang/String;
    if-eqz v7, :cond_3

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_3

    .line 381
    invoke-virtual {v6, v7}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo$Builder;->setEmailPattern(Ljava/lang/String;)Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo$Builder;

    .line 383
    :cond_3
    const-string v8, "email_outgoing_login_replacement"

    invoke-virtual {v2, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .end local v7           #value:Ljava/lang/String;
    check-cast v7, Ljava/lang/String;

    .line 384
    .restart local v7       #value:Ljava/lang/String;
    if-eqz v7, :cond_4

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_4

    .line 385
    invoke-virtual {v6, v7}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo$Builder;->setLoginReplacement(Ljava/lang/String;)Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo$Builder;

    .line 387
    :cond_4
    const-string v8, "email_outgoing_auth"

    invoke-virtual {v2, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .end local v7           #value:Ljava/lang/String;
    check-cast v7, Ljava/lang/String;

    .line 388
    .restart local v7       #value:Ljava/lang/String;
    if-eqz v7, :cond_5

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_5

    .line 389
    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    invoke-virtual {v6, v8}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo$Builder;->setAuth(Z)Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo$Builder;

    .line 391
    :cond_5
    const-string v8, "email_outgoing_authtype"

    invoke-virtual {v2, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .end local v7           #value:Ljava/lang/String;
    check-cast v7, Ljava/lang/String;

    .line 392
    .restart local v7       #value:Ljava/lang/String;
    if-eqz v7, :cond_6

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_6

    .line 393
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v6, v8}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo$Builder;->setAuthType(I)Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo$Builder;

    .line 395
    :cond_6
    const-string v8, "email_outgoing_security_policy"

    invoke-virtual {v2, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .end local v7           #value:Ljava/lang/String;
    check-cast v7, Ljava/lang/String;

    .line 396
    .restart local v7       #value:Ljava/lang/String;
    if-eqz v7, :cond_7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_7

    .line 397
    invoke-direct {p0, v7}, Lcom/motorola/blur/authenticators/DeblurEmailAuthenticator;->getSecurityPolicy(Ljava/lang/String;)Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo$SecurityPolicy;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo$Builder;->setSecurityPolicy(Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo$SecurityPolicy;)Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo$Builder;

    .line 399
    :cond_7
    const-string v8, "email_outgoing_ssl"

    invoke-virtual {v2, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .end local v7           #value:Ljava/lang/String;
    check-cast v7, Ljava/lang/String;

    .line 400
    .restart local v7       #value:Ljava/lang/String;
    if-eqz v7, :cond_8

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_8

    .line 401
    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    invoke-virtual {v6, v8}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo$Builder;->setSsl(Z)Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo$Builder;

    .line 403
    :cond_8
    const-string v8, "email_outgoing_verify_ca_check"

    invoke-virtual {v2, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .end local v7           #value:Ljava/lang/String;
    check-cast v7, Ljava/lang/String;

    .line 404
    .restart local v7       #value:Ljava/lang/String;
    if-eqz v7, :cond_9

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_9

    .line 405
    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    invoke-virtual {v6, v8}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo$Builder;->setVerifyCA(Z)Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo$Builder;

    .line 407
    :cond_9
    const-string v8, "email_outgoing_image_url"

    invoke-virtual {v2, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .end local v7           #value:Ljava/lang/String;
    check-cast v7, Ljava/lang/String;

    .line 408
    .restart local v7       #value:Ljava/lang/String;
    if-eqz v7, :cond_a

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_a

    .line 409
    invoke-virtual {v6, v7}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo$Builder;->setImageURL(Ljava/lang/String;)Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo$Builder;

    .line 411
    :cond_a
    invoke-virtual {v6}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo$Builder;->build()Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 413
    invoke-static {}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo;->newBuilder()Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo$Builder;

    move-result-object v4

    .line 415
    .local v4, incomingBuilder:Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo$Builder;
    const-string v8, "email_incoming_server"

    invoke-virtual {v2, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .end local v7           #value:Ljava/lang/String;
    check-cast v7, Ljava/lang/String;

    .line 416
    .restart local v7       #value:Ljava/lang/String;
    if-eqz v7, :cond_b

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_b

    .line 417
    invoke-virtual {v4, v7}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo$Builder;->setServer(Ljava/lang/String;)Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo$Builder;

    .line 419
    :cond_b
    const-string v8, "email_incoming_server_port"

    invoke-virtual {v2, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .end local v7           #value:Ljava/lang/String;
    check-cast v7, Ljava/lang/String;

    .line 420
    .restart local v7       #value:Ljava/lang/String;
    if-eqz v7, :cond_c

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_c

    .line 421
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v4, v8}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo$Builder;->setPort(I)Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo$Builder;

    .line 423
    :cond_c
    const-string v8, "email_incoming_type"

    invoke-virtual {v2, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .end local v7           #value:Ljava/lang/String;
    check-cast v7, Ljava/lang/String;

    .line 424
    .restart local v7       #value:Ljava/lang/String;
    if-eqz v7, :cond_d

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_d

    .line 425
    invoke-direct {p0, v7}, Lcom/motorola/blur/authenticators/DeblurEmailAuthenticator;->getEmailServerType(Ljava/lang/String;)Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo$Type;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo$Builder;->setType(Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo$Type;)Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo$Builder;

    .line 427
    :cond_d
    const-string v8, "email_incoming_pattern"

    invoke-virtual {v2, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .end local v7           #value:Ljava/lang/String;
    check-cast v7, Ljava/lang/String;

    .line 428
    .restart local v7       #value:Ljava/lang/String;
    if-eqz v7, :cond_e

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_e

    .line 429
    invoke-virtual {v4, v7}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo$Builder;->setEmailPattern(Ljava/lang/String;)Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo$Builder;

    .line 431
    :cond_e
    const-string v8, "email_incoming_login_replacement"

    invoke-virtual {v2, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .end local v7           #value:Ljava/lang/String;
    check-cast v7, Ljava/lang/String;

    .line 432
    .restart local v7       #value:Ljava/lang/String;
    if-eqz v7, :cond_f

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_f

    .line 433
    invoke-virtual {v4, v7}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo$Builder;->setLoginReplacement(Ljava/lang/String;)Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo$Builder;

    .line 435
    :cond_f
    const-string v8, "email_incoming_security_policy"

    invoke-virtual {v2, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .end local v7           #value:Ljava/lang/String;
    check-cast v7, Ljava/lang/String;

    .line 436
    .restart local v7       #value:Ljava/lang/String;
    if-eqz v7, :cond_10

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_10

    .line 437
    invoke-direct {p0, v7}, Lcom/motorola/blur/authenticators/DeblurEmailAuthenticator;->getSecurityPolicy(Ljava/lang/String;)Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo$SecurityPolicy;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo$Builder;->setSecurityPolicy(Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo$SecurityPolicy;)Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo$Builder;

    .line 439
    :cond_10
    const-string v8, "email_incoming_ssl"

    invoke-virtual {v2, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .end local v7           #value:Ljava/lang/String;
    check-cast v7, Ljava/lang/String;

    .line 440
    .restart local v7       #value:Ljava/lang/String;
    if-eqz v7, :cond_11

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_11

    .line 441
    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    invoke-virtual {v4, v8}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo$Builder;->setSsl(Z)Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo$Builder;

    .line 443
    :cond_11
    const-string v8, "email_incoming_verify_ca_check"

    invoke-virtual {v2, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .end local v7           #value:Ljava/lang/String;
    check-cast v7, Ljava/lang/String;

    .line 444
    .restart local v7       #value:Ljava/lang/String;
    if-eqz v7, :cond_12

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_12

    .line 445
    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    invoke-virtual {v4, v8}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo$Builder;->setVerifyCA(Z)Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo$Builder;

    .line 447
    :cond_12
    const-string v8, "email_incoming_image_url"

    invoke-virtual {v2, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .end local v7           #value:Ljava/lang/String;
    check-cast v7, Ljava/lang/String;

    .line 448
    .restart local v7       #value:Ljava/lang/String;
    if-eqz v7, :cond_13

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_13

    .line 449
    invoke-virtual {v4, v7}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo$Builder;->setImageURL(Ljava/lang/String;)Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo$Builder;

    .line 451
    :cond_13
    invoke-virtual {v4}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo$Builder;->build()Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v8, v5

    .line 457
    .end local v1           #email_server_name:Ljava/lang/String;
    .end local v2           #emailserver:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4           #incomingBuilder:Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo$Builder;
    .end local v5           #serverInfos:Ljava/util/List;,"Ljava/util/List<Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo;>;"
    .end local v6           #smtpBuilder:Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo$Builder;
    .end local v7           #value:Ljava/lang/String;
    :goto_1
    return-object v8

    .line 358
    .restart local v1       #email_server_name:Ljava/lang/String;
    .restart local v2       #emailserver:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_14
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 456
    .end local v1           #email_server_name:Ljava/lang/String;
    .end local v2           #emailserver:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_15
    const-string v8, "DBEA"

    const-string v8, "Not found email server!"

    invoke-static {v10, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    new-instance v8, Ljava/util/ArrayList;

    const/4 v9, 0x0

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_1
.end method

.method private createTempAccount(Ljava/util/List;)J
    .locals 25
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
    .line 171
    .local p1, serverInfos:Ljava/util/List;,"Ljava/util/List<Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo;>;"
    const/4 v14, 0x0

    .line 172
    .local v14, info:Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo;
    const/4 v13, 0x0

    .line 173
    .local v13, incomingSettings:Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo;
    const/16 v20, 0x0

    .line 174
    .local v20, smtpSettings:Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo;
    const-wide/16 v5, 0x0

    .line 175
    .local v5, accountId:J
    const/4 v10, 0x0

    .line 176
    .local v10, emailType:I
    const/16 v17, 0x0

    .line 178
    .local v17, policy:I
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v22

    const/16 v23, 0x1

    sub-int v11, v22, v23

    .local v11, i:I
    :goto_0
    if-ltz v11, :cond_1

    .line 179
    move-object/from16 v0, p1

    move v1, v11

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    .end local v14           #info:Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo;
    check-cast v14, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo;

    .line 180
    .restart local v14       #info:Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo;
    sget-object v22, Lcom/motorola/blur/authenticators/DeblurEmailAuthenticator$4;->$SwitchMap$com$motorola$blur$service$emailsettings$protocol$EmailProvidersProtocol$ProviderResponse$ServerInfo$Type:[I

    invoke-virtual {v14}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo;->getType()Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo$Type;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo$Type;->ordinal()I

    move-result v23

    aget v22, v22, v23

    packed-switch v22, :pswitch_data_0

    .line 178
    :cond_0
    :goto_1
    add-int/lit8 v11, v11, -0x1

    goto :goto_0

    .line 185
    :pswitch_0
    const/4 v10, 0x3

    .line 186
    const/16 v17, 0x0

    .line 187
    move-object v13, v14

    .line 188
    goto :goto_1

    .line 194
    :pswitch_1
    if-nez v13, :cond_0

    .line 195
    const/4 v10, 0x2

    .line 196
    move-object v13, v14

    .line 197
    const/16 v17, 0x2

    goto :goto_1

    .line 204
    :pswitch_2
    move-object/from16 v20, v14

    goto :goto_1

    .line 210
    :cond_1
    if-eqz v10, :cond_12

    if-eqz v20, :cond_12

    .line 211
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/authenticators/DeblurEmailAuthenticator;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    .line 212
    .local v18, resolver:Landroid/content/ContentResolver;
    new-instance v21, Landroid/content/ContentValues;

    invoke-direct/range {v21 .. v21}, Landroid/content/ContentValues;-><init>()V

    .line 213
    .local v21, smtpValues:Landroid/content/ContentValues;
    const-string v22, "server_port"

    invoke-virtual/range {v20 .. v20}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo;->getPort()I

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 214
    const-string v22, "server_address"

    invoke-virtual/range {v20 .. v20}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo;->getServer()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    const-string v22, "capability"

    const/16 v23, 0x4

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 216
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/motorola/blur/authenticators/DeblurEmailAuthenticator;->setSsl(Landroid/content/ContentValues;Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo;)V

    .line 217
    const-string v22, "providers_id"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/authenticators/DeblurEmailAuthenticator;->mUserInfo:Lcom/motorola/blur/authenticators/UserInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-wide v0, v0, Lcom/motorola/blur/authenticators/UserInfo;->providerId:J

    move-wide/from16 v23, v0

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 219
    new-instance v19, Landroid/content/ContentValues;

    invoke-direct/range {v19 .. v19}, Landroid/content/ContentValues;-><init>()V

    .line 220
    .local v19, smtpAsValues:Landroid/content/ContentValues;
    move-object/from16 v0, p0

    move-object v1, v13

    invoke-virtual {v0, v1}, Lcom/motorola/blur/authenticators/DeblurEmailAuthenticator;->hasYahooFlags(Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo;)Z

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/motorola/blur/authenticators/DeblurEmailAuthenticator;->mIsTokenAuth:Z

    .line 222
    invoke-virtual/range {v20 .. v20}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo;->hasAuth()Z

    move-result v22

    if-eqz v22, :cond_2

    invoke-virtual/range {v20 .. v20}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo;->hasAuth()Z

    move-result v22

    if-eqz v22, :cond_3

    invoke-virtual/range {v20 .. v20}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo;->getAuth()Z

    move-result v22

    if-eqz v22, :cond_3

    .line 224
    :cond_2
    const-string v22, "username"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/motorola/blur/authenticators/DeblurEmailAuthenticator;->makeUsernameFromEmail(Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    const-string v22, "password"

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/motorola/blur/authenticators/DeblurEmailAuthenticator;->mIsTokenAuth:Z

    move/from16 v23, v0

    if-eqz v23, :cond_5

    const/16 v23, 0x0

    :goto_2
    move-object/from16 v0, v19

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    :cond_3
    invoke-virtual/range {v20 .. v20}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo;->hasAuthType()Z

    move-result v22

    if-eqz v22, :cond_6

    .line 229
    const-string v22, "auth_type"

    invoke-virtual/range {v20 .. v20}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo;->getAuthType()I

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 236
    :goto_3
    invoke-virtual/range {v20 .. v20}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo;->hasSecurityPolicy()Z

    move-result v22

    if-eqz v22, :cond_8

    .line 237
    const-string v22, "security_policy"

    invoke-virtual/range {v20 .. v20}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo;->getSecurityPolicy()Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo$SecurityPolicy;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo$SecurityPolicy;->getNumber()I

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 242
    :goto_4
    invoke-virtual/range {v20 .. v20}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo;->hasVerifyCA()Z

    move-result v22

    if-eqz v22, :cond_9

    .line 243
    const-string v22, "verify_ca"

    invoke-virtual/range {v20 .. v20}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo;->getVerifyCA()Z

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v23

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 248
    :goto_5
    new-instance v16, Landroid/content/ContentValues;

    invoke-direct/range {v16 .. v16}, Landroid/content/ContentValues;-><init>()V

    .line 249
    .local v16, mailValues:Landroid/content/ContentValues;
    const-string v22, "server_port"

    invoke-virtual {v13}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo;->getPort()I

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 250
    const-string v22, "server_address"

    invoke-virtual {v13}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo;->getServer()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    const-string v22, "providers_id"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/authenticators/DeblurEmailAuthenticator;->mUserInfo:Lcom/motorola/blur/authenticators/UserInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-wide v0, v0, Lcom/motorola/blur/authenticators/UserInfo;->providerId:J

    move-wide/from16 v23, v0

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 252
    move-object/from16 v0, v16

    move-object v1, v13

    invoke-static {v0, v1}, Lcom/motorola/blur/authenticators/DeblurEmailAuthenticator;->setSsl(Landroid/content/ContentValues;Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo;)V

    .line 254
    invoke-virtual {v13}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo;->hasImageURL()Z

    move-result v22

    if-eqz v22, :cond_4

    .line 255
    invoke-virtual {v13}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo;->getImageURL()Ljava/lang/String;

    move-result-object v12

    .line 256
    .local v12, imagePath:Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_4

    .line 257
    const-string v22, "path"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    move-object v2, v12

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    .end local v12           #imagePath:Ljava/lang/String;
    :cond_4
    const-string v22, "capability"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 262
    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    .line 263
    .local v15, mailAsValues:Landroid/content/ContentValues;
    const-string v22, "username"

    move-object/from16 v0, p0

    move-object v1, v13

    invoke-virtual {v0, v1}, Lcom/motorola/blur/authenticators/DeblurEmailAuthenticator;->makeUsernameFromEmail(Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo;)Ljava/lang/String;

    move-result-object v23

    move-object v0, v15

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    const/4 v9, -0x1

    .line 265
    .local v9, authType:I
    invoke-virtual {v13}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo;->hasAuthType()Z

    move-result v22

    if-eqz v22, :cond_a

    .line 266
    invoke-virtual {v13}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo;->getAuthType()I

    move-result v9

    .line 267
    const-string v22, "auth_type"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 273
    :goto_6
    const-string v22, "password"

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/motorola/blur/authenticators/DeblurEmailAuthenticator;->mIsTokenAuth:Z

    move/from16 v23, v0

    if-eqz v23, :cond_c

    const/16 v23, 0x0

    :goto_7
    move-object v0, v15

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    const-string v22, "retention_policy"

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object v0, v15

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 277
    invoke-virtual {v13}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo;->hasSecurityPolicy()Z

    move-result v22

    if-eqz v22, :cond_d

    .line 278
    const-string v22, "security_policy"

    invoke-virtual {v13}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo;->getSecurityPolicy()Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo$SecurityPolicy;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo$SecurityPolicy;->getNumber()I

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object v0, v15

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 283
    :goto_8
    invoke-virtual {v13}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo;->hasVerifyCA()Z

    move-result v22

    if-eqz v22, :cond_e

    .line 284
    const-string v22, "verify_ca"

    invoke-virtual {v13}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo;->getVerifyCA()Z

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v23

    move-object v0, v15

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 289
    :goto_9
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 290
    .local v8, acctValues:Landroid/content/ContentValues;
    const-string v22, "provider_id"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/authenticators/DeblurEmailAuthenticator;->mUserInfo:Lcom/motorola/blur/authenticators/UserInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-wide v0, v0, Lcom/motorola/blur/authenticators/UserInfo;->providerId:J

    move-wide/from16 v23, v0

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    move-object v0, v8

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 291
    const-string v22, "email_address"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/authenticators/DeblurEmailAuthenticator;->mUserInfo:Lcom/motorola/blur/authenticators/UserInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/motorola/blur/authenticators/UserInfo;->username:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object v0, v8

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    const-string v22, "account_pretty_name"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/authenticators/DeblurEmailAuthenticator;->mUserInfo:Lcom/motorola/blur/authenticators/UserInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/motorola/blur/authenticators/UserInfo;->username:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/authenticators/DeblurEmailAuthenticator;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-static/range {v23 .. v24}, Lcom/motorola/blur/provider/DeviceSetup;->createPrettyName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v23

    move-object v0, v8

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    invoke-direct/range {p0 .. p0}, Lcom/motorola/blur/authenticators/DeblurEmailAuthenticator;->getMeName()V

    .line 294
    const-string v22, "user_pretty_name"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/authenticators/DeblurEmailAuthenticator;->mMeName:Ljava/lang/String;

    move-object/from16 v23, v0

    if-eqz v23, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/authenticators/DeblurEmailAuthenticator;->mMeName:Ljava/lang/String;

    move-object/from16 v23, v0

    :goto_a
    move-object v0, v8

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    sget-object v22, Lcom/motorola/blur/provider/DeviceSetup$Accounts;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v7

    .line 298
    .local v7, accountUri:Landroid/net/Uri;
    if-eqz v7, :cond_11

    .line 299
    invoke-static {v7}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v5

    .line 300
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/authenticators/DeblurEmailAuthenticator;->mUserInfo:Lcom/motorola/blur/authenticators/UserInfo;

    move-object/from16 v22, v0

    move-wide v0, v5

    move-object/from16 v2, v22

    iput-wide v0, v2, Lcom/motorola/blur/authenticators/UserInfo;->accountId:J

    .line 301
    const-wide/16 v22, 0x0

    cmp-long v22, v5, v22

    if-lez v22, :cond_11

    .line 302
    move-object/from16 v0, v18

    move-wide v1, v5

    move-object/from16 v3, v16

    move-object v4, v15

    invoke-static {v0, v1, v2, v3, v4}, Lcom/motorola/blur/authenticators/DeblurEmailAuthenticator;->addServiceAndActiveService(Landroid/content/ContentResolver;JLandroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v22

    if-nez v22, :cond_10

    .line 303
    const-wide/16 v22, -0x1

    .line 313
    .end local v7           #accountUri:Landroid/net/Uri;
    .end local v8           #acctValues:Landroid/content/ContentValues;
    .end local v9           #authType:I
    .end local v15           #mailAsValues:Landroid/content/ContentValues;
    .end local v16           #mailValues:Landroid/content/ContentValues;
    .end local v18           #resolver:Landroid/content/ContentResolver;
    .end local v19           #smtpAsValues:Landroid/content/ContentValues;
    .end local v21           #smtpValues:Landroid/content/ContentValues;
    :goto_b
    return-wide v22

    .line 225
    .restart local v18       #resolver:Landroid/content/ContentResolver;
    .restart local v19       #smtpAsValues:Landroid/content/ContentValues;
    .restart local v21       #smtpValues:Landroid/content/ContentValues;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/authenticators/DeblurEmailAuthenticator;->mUserInfo:Lcom/motorola/blur/authenticators/UserInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/motorola/blur/authenticators/UserInfo;->password:Ljava/lang/String;

    move-object/from16 v23, v0

    goto/16 :goto_2

    .line 230
    :cond_6
    const-string v22, "username"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_7

    .line 231
    const-string v22, "auth_type"

    const/16 v23, 0x1

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_3

    .line 233
    :cond_7
    const-string v22, "auth_type"

    const/16 v23, 0x0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_3

    .line 239
    :cond_8
    const-string v22, "security_policy"

    const/16 v23, 0x1

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_4

    .line 245
    :cond_9
    const-string v22, "verify_ca"

    const/16 v23, 0x1

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_5

    .line 268
    .restart local v9       #authType:I
    .restart local v15       #mailAsValues:Landroid/content/ContentValues;
    .restart local v16       #mailValues:Landroid/content/ContentValues;
    :cond_a
    const-string v22, "username"

    move-object v0, v15

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_b

    .line 269
    const-string v22, "auth_type"

    const/16 v23, 0x1

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_6

    .line 271
    :cond_b
    const-string v22, "auth_type"

    const/16 v23, 0x0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_6

    .line 273
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/authenticators/DeblurEmailAuthenticator;->mUserInfo:Lcom/motorola/blur/authenticators/UserInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/motorola/blur/authenticators/UserInfo;->password:Ljava/lang/String;

    move-object/from16 v23, v0

    goto/16 :goto_7

    .line 280
    :cond_d
    const-string v22, "security_policy"

    const/16 v23, 0x1

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object v0, v15

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_8

    .line 286
    :cond_e
    const-string v22, "verify_ca"

    const/16 v23, 0x1

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object v0, v15

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_9

    .line 294
    .restart local v8       #acctValues:Landroid/content/ContentValues;
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/authenticators/DeblurEmailAuthenticator;->mUserInfo:Lcom/motorola/blur/authenticators/UserInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/motorola/blur/authenticators/UserInfo;->username:Ljava/lang/String;

    move-object/from16 v23, v0

    goto/16 :goto_a

    .line 305
    .restart local v7       #accountUri:Landroid/net/Uri;
    :cond_10
    move-object/from16 v0, v18

    move-wide v1, v5

    move-object/from16 v3, v21

    move-object/from16 v4, v19

    invoke-static {v0, v1, v2, v3, v4}, Lcom/motorola/blur/authenticators/DeblurEmailAuthenticator;->addServiceAndActiveService(Landroid/content/ContentResolver;JLandroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v22

    if-nez v22, :cond_11

    .line 306
    const-wide/16 v22, -0x1

    goto/16 :goto_b

    .line 310
    :cond_11
    move v0, v10

    move-object/from16 v1, p0

    iput v0, v1, Lcom/motorola/blur/authenticators/DeblurEmailAuthenticator;->mProtocolCapability:I

    .end local v7           #accountUri:Landroid/net/Uri;
    .end local v8           #acctValues:Landroid/content/ContentValues;
    .end local v9           #authType:I
    .end local v15           #mailAsValues:Landroid/content/ContentValues;
    .end local v16           #mailValues:Landroid/content/ContentValues;
    .end local v18           #resolver:Landroid/content/ContentResolver;
    .end local v19           #smtpAsValues:Landroid/content/ContentValues;
    .end local v21           #smtpValues:Landroid/content/ContentValues;
    :cond_12
    move-wide/from16 v22, v5

    .line 313
    goto/16 :goto_b

    .line 180
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getEmailConfigFromXML()Ljava/util/List;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 510
    const-string v18, "DBEA"

    const-string v19, "start to call getEmailConfigFromXML()"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 514
    .local v14, parseResultList:Ljava/util/List;,"Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v6

    .line 515
    .local v6, factory:Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v6}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v3

    .line 516
    .local v3, builder:Ljavax/xml/parsers/DocumentBuilder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/authenticators/DeblurEmailAuthenticator;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const/high16 v19, 0x7f06

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v18

    move-object v0, v3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v4

    .line 517
    .local v4, dom:Lorg/w3c/dom/Document;
    invoke-interface {v4}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v17

    .line 518
    .local v17, root:Lorg/w3c/dom/Element;
    const-string v18, "email_server_config"

    invoke-interface/range {v17 .. v18}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v9

    .line 519
    .local v9, items:Lorg/w3c/dom/NodeList;
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    invoke-interface {v9}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v18

    move v0, v7

    move/from16 v1, v18

    if-ge v0, v1, :cond_17

    .line 520
    invoke-interface {v9, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    .line 521
    .local v8, item:Lorg/w3c/dom/Node;
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v15

    .line 522
    .local v15, properties:Lorg/w3c/dom/NodeList;
    const/4 v10, 0x0

    .local v10, j:I
    :goto_1
    invoke-interface {v15}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v18

    move v0, v10

    move/from16 v1, v18

    if-ge v0, v1, :cond_16

    .line 523
    invoke-interface {v15, v10}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v16

    .line 524
    .local v16, property:Lorg/w3c/dom/Node;
    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v12

    .line 525
    .local v12, name:Ljava/lang/String;
    const-string v18, "email_server"

    move-object v0, v12

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_15

    .line 526
    new-instance v11, Ljava/util/HashMap;

    const/16 v18, 0xb

    move-object v0, v11

    move/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 527
    .local v11, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v18

    const-string v19, "email_server_name"

    invoke-interface/range {v18 .. v19}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v13

    .line 528
    .local v13, node1:Lorg/w3c/dom/Node;
    if-eqz v13, :cond_0

    .line 529
    invoke-interface {v13}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v18

    invoke-interface {v13}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v19

    move-object v0, v11

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 530
    :cond_0
    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v18

    const-string v19, "email_incoming_server"

    invoke-interface/range {v18 .. v19}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v13

    .line 531
    if-eqz v13, :cond_1

    .line 532
    invoke-interface {v13}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v18

    invoke-interface {v13}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v19

    move-object v0, v11

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 533
    :cond_1
    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v18

    const-string v19, "email_incoming_server_port"

    invoke-interface/range {v18 .. v19}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v13

    .line 534
    if-eqz v13, :cond_2

    .line 535
    invoke-interface {v13}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v18

    invoke-interface {v13}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v19

    move-object v0, v11

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 536
    :cond_2
    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v18

    const-string v19, "email_incoming_type"

    invoke-interface/range {v18 .. v19}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v13

    .line 537
    if-eqz v13, :cond_3

    .line 538
    invoke-interface {v13}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v18

    invoke-interface {v13}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v19

    move-object v0, v11

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 539
    :cond_3
    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v18

    const-string v19, "email_incoming_pattern"

    invoke-interface/range {v18 .. v19}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v13

    .line 540
    if-eqz v13, :cond_4

    .line 541
    invoke-interface {v13}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v18

    invoke-interface {v13}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v19

    move-object v0, v11

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 542
    :cond_4
    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v18

    const-string v19, "email_incoming_login_replacement"

    invoke-interface/range {v18 .. v19}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v13

    .line 543
    if-eqz v13, :cond_5

    .line 544
    invoke-interface {v13}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v18

    invoke-interface {v13}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v19

    move-object v0, v11

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 545
    :cond_5
    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v18

    const-string v19, "email_incoming_security_policy"

    invoke-interface/range {v18 .. v19}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v13

    .line 546
    if-eqz v13, :cond_6

    .line 547
    invoke-interface {v13}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v18

    invoke-interface {v13}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v19

    move-object v0, v11

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 548
    :cond_6
    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v18

    const-string v19, "email_incoming_ssl"

    invoke-interface/range {v18 .. v19}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v13

    .line 549
    if-eqz v13, :cond_7

    .line 550
    invoke-interface {v13}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v18

    invoke-interface {v13}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v19

    move-object v0, v11

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 551
    :cond_7
    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v18

    const-string v19, "email_incoming_verify_ca_check"

    invoke-interface/range {v18 .. v19}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v13

    .line 552
    if-eqz v13, :cond_8

    .line 553
    invoke-interface {v13}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v18

    invoke-interface {v13}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v19

    move-object v0, v11

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 554
    :cond_8
    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v18

    const-string v19, "email_incoming_image_url"

    invoke-interface/range {v18 .. v19}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v13

    .line 555
    if-eqz v13, :cond_9

    .line 556
    invoke-interface {v13}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v18

    invoke-interface {v13}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v19

    move-object v0, v11

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 557
    :cond_9
    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v18

    const-string v19, "email_outgoing_server"

    invoke-interface/range {v18 .. v19}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v13

    .line 558
    if-eqz v13, :cond_a

    .line 559
    invoke-interface {v13}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v18

    invoke-interface {v13}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v19

    move-object v0, v11

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 560
    :cond_a
    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v18

    const-string v19, "email_outgoing_server_port"

    invoke-interface/range {v18 .. v19}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v13

    .line 561
    if-eqz v13, :cond_b

    .line 562
    invoke-interface {v13}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v18

    invoke-interface {v13}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v19

    move-object v0, v11

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 563
    :cond_b
    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v18

    const-string v19, "email_outgoing_type"

    invoke-interface/range {v18 .. v19}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v13

    .line 564
    if-eqz v13, :cond_c

    .line 565
    invoke-interface {v13}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v18

    invoke-interface {v13}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v19

    move-object v0, v11

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 566
    :cond_c
    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v18

    const-string v19, "email_outgoing_email_pattern"

    invoke-interface/range {v18 .. v19}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v13

    .line 567
    if-eqz v13, :cond_d

    .line 568
    invoke-interface {v13}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v18

    invoke-interface {v13}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v19

    move-object v0, v11

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 569
    :cond_d
    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v18

    const-string v19, "email_outgoing_login_replacement"

    invoke-interface/range {v18 .. v19}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v13

    .line 570
    if-eqz v13, :cond_e

    .line 571
    invoke-interface {v13}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v18

    invoke-interface {v13}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v19

    move-object v0, v11

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 572
    :cond_e
    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v18

    const-string v19, "email_outgoing_auth"

    invoke-interface/range {v18 .. v19}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v13

    .line 573
    if-eqz v13, :cond_f

    .line 574
    invoke-interface {v13}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v18

    invoke-interface {v13}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v19

    move-object v0, v11

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 575
    :cond_f
    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v18

    const-string v19, "email_outgoing_authtype"

    invoke-interface/range {v18 .. v19}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v13

    .line 576
    if-eqz v13, :cond_10

    .line 577
    invoke-interface {v13}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v18

    invoke-interface {v13}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v19

    move-object v0, v11

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 578
    :cond_10
    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v18

    const-string v19, "email_outgoing_security_policy"

    invoke-interface/range {v18 .. v19}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v13

    .line 579
    if-eqz v13, :cond_11

    .line 580
    invoke-interface {v13}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v18

    invoke-interface {v13}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v19

    move-object v0, v11

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 581
    :cond_11
    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v18

    const-string v19, "email_outgoing_ssl"

    invoke-interface/range {v18 .. v19}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v13

    .line 582
    if-eqz v13, :cond_12

    .line 583
    invoke-interface {v13}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v18

    invoke-interface {v13}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v19

    move-object v0, v11

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 584
    :cond_12
    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v18

    const-string v19, "email_outgoing_verify_ca_check"

    invoke-interface/range {v18 .. v19}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v13

    .line 585
    if-eqz v13, :cond_13

    .line 586
    invoke-interface {v13}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v18

    invoke-interface {v13}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v19

    move-object v0, v11

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 587
    :cond_13
    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v18

    const-string v19, "email_outgoing_image_url"

    invoke-interface/range {v18 .. v19}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v13

    .line 588
    if-eqz v13, :cond_14

    .line 589
    invoke-interface {v13}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v18

    invoke-interface {v13}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v19

    move-object v0, v11

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 591
    :cond_14
    invoke-interface {v14, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 522
    .end local v11           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v13           #node1:Lorg/w3c/dom/Node;
    :cond_15
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    .line 519
    .end local v12           #name:Ljava/lang/String;
    .end local v16           #property:Lorg/w3c/dom/Node;
    :cond_16
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 595
    .end local v3           #builder:Ljavax/xml/parsers/DocumentBuilder;
    .end local v4           #dom:Lorg/w3c/dom/Document;
    .end local v6           #factory:Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v7           #i:I
    .end local v8           #item:Lorg/w3c/dom/Node;
    .end local v9           #items:Lorg/w3c/dom/NodeList;
    .end local v10           #j:I
    .end local v15           #properties:Lorg/w3c/dom/NodeList;
    .end local v17           #root:Lorg/w3c/dom/Element;
    :catch_0
    move-exception v18

    move-object/from16 v5, v18

    .line 596
    .local v5, e:Ljava/lang/Exception;
    new-instance v18, Ljava/lang/RuntimeException;

    move-object/from16 v0, v18

    move-object v1, v5

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v18

    .line 598
    .end local v5           #e:Ljava/lang/Exception;
    .restart local v3       #builder:Ljavax/xml/parsers/DocumentBuilder;
    .restart local v4       #dom:Lorg/w3c/dom/Document;
    .restart local v6       #factory:Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v7       #i:I
    .restart local v9       #items:Lorg/w3c/dom/NodeList;
    .restart local v17       #root:Lorg/w3c/dom/Element;
    :cond_17
    return-object v14
.end method

.method private getEmailServerType(Ljava/lang/String;)Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo$Type;
    .locals 1
    .parameter "typeStr"

    .prologue
    .line 471
    const-string v0, "SMTP"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 472
    sget-object v0, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo$Type;->SMTP:Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo$Type;

    .line 476
    :goto_0
    return-object v0

    .line 473
    :cond_0
    const-string v0, "IMAP4"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 474
    sget-object v0, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo$Type;->IMAP4:Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo$Type;

    goto :goto_0

    .line 476
    :cond_1
    sget-object v0, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo$Type;->POP3:Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo$Type;

    goto :goto_0
.end method

.method private getMeName()V
    .locals 1

    .prologue
    .line 942
    iget-object v0, p0, Lcom/motorola/blur/authenticators/DeblurEmailAuthenticator;->mMeName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 943
    iget-object v0, p0, Lcom/motorola/blur/authenticators/DeblurEmailAuthenticator;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/motorola/blur/provider/contacts/IdentityModelProvider$ProviderQueries;->getBlurOwnerName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/authenticators/DeblurEmailAuthenticator;->mMeName:Ljava/lang/String;

    .line 945
    :cond_0
    return-void
.end method

.method private getSecurityPolicy(Ljava/lang/String;)Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo$SecurityPolicy;
    .locals 1
    .parameter "policyStr"

    .prologue
    .line 461
    const-string v0, "SECURITY_NONE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 462
    sget-object v0, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo$SecurityPolicy;->SECURITY_NONE:Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo$SecurityPolicy;

    .line 466
    :goto_0
    return-object v0

    .line 463
    :cond_0
    const-string v0, "SECURITY_TLS_OPTIONAL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 464
    sget-object v0, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo$SecurityPolicy;->SECURITY_TLS_OPTIONAL:Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo$SecurityPolicy;

    goto :goto_0

    .line 466
    :cond_1
    sget-object v0, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo$SecurityPolicy;->SECURITY_TLS_REQUIRED:Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo$SecurityPolicy;

    goto :goto_0
.end method

.method private static grabActiveServiceValues(Landroid/content/ContentValues;)Landroid/content/ContentValues;
    .locals 5
    .parameter "serverValues"

    .prologue
    const-string v4, "username"

    const-string v3, "password"

    const-string v2, "max_size"

    .line 917
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 919
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "username"

    invoke-virtual {p0, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 921
    const-string v1, "username"

    const-string v1, "username"

    invoke-virtual {p0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 923
    const-string v1, "username"

    invoke-virtual {p0, v4}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 925
    :cond_0
    const-string v1, "password"

    invoke-virtual {p0, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 927
    const-string v1, "password"

    const-string v1, "password"

    invoke-virtual {p0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 929
    const-string v1, "password"

    invoke-virtual {p0, v3}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 931
    :cond_1
    const-string v1, "max_size"

    invoke-virtual {p0, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 933
    const-string v1, "max_size"

    const-string v1, "max_size"

    invoke-virtual {p0, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 935
    const-string v1, "max_size"

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 938
    :cond_2
    return-object v0
.end method

.method private handleAuthResponse(I)V
    .locals 3
    .parameter "responseError"

    .prologue
    .line 796
    const/4 v1, 0x2

    .line 797
    .local v1, what:I
    const v0, 0x7f0c00f3

    .line 798
    .local v0, errorId:I
    packed-switch p1, :pswitch_data_0

    .line 837
    :pswitch_0
    const v2, 0x7f0c00f3

    invoke-virtual {p0, v2}, Lcom/motorola/blur/authenticators/DeblurEmailAuthenticator;->appendError(I)V

    .line 838
    const v0, 0x7f0c00f3

    .line 842
    :goto_0
    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 843
    invoke-virtual {p0}, Lcom/motorola/blur/authenticators/DeblurEmailAuthenticator;->resetAccount()V

    .line 844
    invoke-direct {p0, v0}, Lcom/motorola/blur/authenticators/DeblurEmailAuthenticator;->showManualConfigurationUI(I)Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/blur/authenticators/DeblurEmailAuthenticator;->mDialog:Landroid/app/AlertDialog;

    .line 846
    :cond_0
    invoke-virtual {p0, v1}, Lcom/motorola/blur/authenticators/DeblurEmailAuthenticator;->sendForegroundMessage(I)Z

    .line 847
    return-void

    .line 800
    :pswitch_1
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/motorola/blur/authenticators/DeblurEmailAuthenticator;->sendForegroundMessage(I)Z

    .line 801
    const/4 v1, 0x4

    .line 802
    goto :goto_0

    .line 804
    :pswitch_2
    const v2, 0x7f0c00da

    invoke-virtual {p0, v2}, Lcom/motorola/blur/authenticators/DeblurEmailAuthenticator;->appendError(I)V

    .line 805
    const v0, 0x7f0c00da

    .line 806
    goto :goto_0

    .line 809
    :pswitch_3
    const v2, 0x7f0c00db

    invoke-virtual {p0, v2}, Lcom/motorola/blur/authenticators/DeblurEmailAuthenticator;->appendError(I)V

    .line 810
    const v0, 0x7f0c00db

    .line 811
    goto :goto_0

    .line 814
    :pswitch_4
    const v2, 0x7f0c00dc

    invoke-virtual {p0, v2}, Lcom/motorola/blur/authenticators/DeblurEmailAuthenticator;->appendError(I)V

    .line 815
    const v0, 0x7f0c00dc

    .line 816
    goto :goto_0

    .line 819
    :pswitch_5
    const v2, 0x7f0c00dd

    invoke-virtual {p0, v2}, Lcom/motorola/blur/authenticators/DeblurEmailAuthenticator;->appendError(I)V

    .line 820
    const v0, 0x7f0c00dd

    .line 821
    goto :goto_0

    .line 824
    :pswitch_6
    const v2, 0x7f0c00fa

    invoke-virtual {p0, v2}, Lcom/motorola/blur/authenticators/DeblurEmailAuthenticator;->appendError(I)V

    .line 825
    const v0, 0x7f0c00fa

    .line 826
    goto :goto_0

    .line 832
    :pswitch_7
    invoke-virtual {p0}, Lcom/motorola/blur/authenticators/DeblurEmailAuthenticator;->handleCertificateIssue()I

    move-result v1

    .line 833
    const v0, 0x7f0c00d9

    .line 834
    goto :goto_0

    .line 798
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

.method private handleAuthenticatorConnection(Lcom/motorola/blur/util/authentication/Authentication;)I
    .locals 21
    .parameter "auth"

    .prologue
    .line 612
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/motorola/blur/authenticators/DeblurEmailAuthenticator;->mIsTokenAuth:Z

    move/from16 v16, v0

    .line 613
    .local v16, isTokenAuth:Z
    const/16 v17, 0x2

    .line 615
    .local v17, responseError:I
    const-string v5, "DBEA"

    const-string v6, "Start to handleAuthenticatorConnection()"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    if-nez p1, :cond_0

    move/from16 v18, v17

    .line 679
    .end local v17           #responseError:I
    .local v18, responseError:I
    :goto_0
    return v18

    .line 620
    .end local v18           #responseError:I
    .restart local v17       #responseError:I
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/motorola/blur/authenticators/DeblurEmailAuthenticator;->mIsTokenAuth:Z

    move v5, v0

    if-eqz v5, :cond_7

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    move-object/from16 v19, v5

    .line 621
    .local v19, token:[Ljava/lang/String;
    :goto_1
    if-eqz p1, :cond_1

    .line 622
    const/4 v14, 0x0

    .local v14, i:I
    :goto_2
    const/4 v5, 0x3

    if-ge v14, v5, :cond_1

    .line 623
    const-string v5, "DBEA"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "try to authenticate, time = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v7, v14, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    if-eqz v16, :cond_8

    .line 625
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/authenticators/DeblurEmailAuthenticator;->mUserInfo:Lcom/motorola/blur/authenticators/UserInfo;

    move-object v5, v0

    iget-wide v5, v5, Lcom/motorola/blur/authenticators/UserInfo;->accountId:J

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/authenticators/DeblurEmailAuthenticator;->mUserInfo:Lcom/motorola/blur/authenticators/UserInfo;

    move-object v7, v0

    iget-object v7, v7, Lcom/motorola/blur/authenticators/UserInfo;->password:Ljava/lang/String;

    move-object/from16 v0, p1

    move-wide v1, v5

    move-object v3, v7

    move-object/from16 v4, v19

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/motorola/blur/util/authentication/Authentication;->authenticateWithCredential(JLjava/lang/String;[Ljava/lang/String;)I

    move-result v17

    .line 629
    :goto_3
    if-nez v17, :cond_9

    .line 630
    const-string v5, "DBEA"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "authenticate ok, time = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v7, v14, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    .end local v14           #i:I
    :cond_1
    if-nez v17, :cond_5

    .line 640
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/authenticators/DeblurEmailAuthenticator;->mContext:Landroid/content/Context;

    move-object v12, v0

    .line 641
    .local v12, context:Landroid/content/Context;
    if-eqz v16, :cond_2

    .line 642
    new-instance v20, Landroid/content/ContentValues;

    invoke-direct/range {v20 .. v20}, Landroid/content/ContentValues;-><init>()V

    .line 643
    .local v20, tokenVals:Landroid/content/ContentValues;
    const-string v5, "password"

    const/4 v6, 0x0

    aget-object v6, v19, v6

    move-object/from16 v0, v20

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 644
    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/motorola/blur/provider/DeviceSetup$ActiveServices;->CONTENT_URI:Landroid/net/Uri;

    const-string v7, "account=?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/authenticators/DeblurEmailAuthenticator;->mUserInfo:Lcom/motorola/blur/authenticators/UserInfo;

    move-object v10, v0

    iget-wide v10, v10, Lcom/motorola/blur/authenticators/UserInfo;->accountId:J

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v20

    move-object v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 649
    .end local v20           #tokenVals:Landroid/content/ContentValues;
    :cond_2
    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/motorola/blur/provider/DeviceSetup$ActiveServices;->BY_ACCOUNT_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/authenticators/DeblurEmailAuthenticator;->mUserInfo:Lcom/motorola/blur/authenticators/UserInfo;

    move-object v7, v0

    iget-wide v7, v7, Lcom/motorola/blur/authenticators/UserInfo;->accountId:J

    invoke-static {v6, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    const/4 v7, 0x0

    const-string v8, "capability!=4"

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 652
    .local v13, cursor:Landroid/database/Cursor;
    if-eqz v13, :cond_5

    .line 653
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 661
    :cond_3
    const/16 v5, 0x8

    invoke-interface {v13, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 662
    .local v11, capability:I
    new-instance v15, Landroid/content/Intent;

    const-string v5, "com.motorola.blur.setup.changes.ACTION_VALIDATED"

    invoke-direct {v15, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 663
    .local v15, intent:Landroid/content/Intent;
    const-string v5, "com.motorola.blur.setup.changes.capability.%d"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 664
    const-string v5, "_id"

    const/4 v6, 0x5

    invoke-interface {v13, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v15, v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 666
    const-string v5, "account_id"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/authenticators/DeblurEmailAuthenticator;->mUserInfo:Lcom/motorola/blur/authenticators/UserInfo;

    move-object v6, v0

    iget-wide v6, v6, Lcom/motorola/blur/authenticators/UserInfo;->accountId:J

    invoke-virtual {v15, v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 667
    const-string v5, "provider_id"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/authenticators/DeblurEmailAuthenticator;->mUserInfo:Lcom/motorola/blur/authenticators/UserInfo;

    move-object v6, v0

    iget-wide v6, v6, Lcom/motorola/blur/authenticators/UserInfo;->providerId:J

    invoke-virtual {v15, v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 668
    const-string v5, "capability"

    invoke-virtual {v15, v5, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 669
    const-string v5, "com.motorola.blur.setupprovider.Permissions.ACCESS_ACCOUNTS"

    invoke-virtual {v12, v15, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 670
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_3

    .line 672
    .end local v11           #capability:I
    .end local v15           #intent:Landroid/content/Intent;
    :cond_4
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 675
    .end local v12           #context:Landroid/content/Context;
    .end local v13           #cursor:Landroid/database/Cursor;
    :cond_5
    if-eqz p1, :cond_6

    .line 676
    invoke-interface/range {p1 .. p1}, Lcom/motorola/blur/util/authentication/Authentication;->close()V

    :cond_6
    move/from16 v18, v17

    .line 679
    .end local v17           #responseError:I
    .restart local v18       #responseError:I
    goto/16 :goto_0

    .line 620
    .end local v18           #responseError:I
    .end local v19           #token:[Ljava/lang/String;
    .restart local v17       #responseError:I
    :cond_7
    const/4 v5, 0x0

    move-object/from16 v19, v5

    goto/16 :goto_1

    .line 627
    .restart local v14       #i:I
    .restart local v19       #token:[Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/authenticators/DeblurEmailAuthenticator;->mUserInfo:Lcom/motorola/blur/authenticators/UserInfo;

    move-object v5, v0

    iget-wide v5, v5, Lcom/motorola/blur/authenticators/UserInfo;->accountId:J

    move-object/from16 v0, p1

    move-wide v1, v5

    invoke-interface {v0, v1, v2}, Lcom/motorola/blur/util/authentication/Authentication;->authenticate(J)I

    move-result v17

    goto/16 :goto_3

    .line 622
    :cond_9
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_2
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
    .line 145
    .local p1, serverInfos:Ljava/util/List;,"Ljava/util/List<Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo;>;"
    invoke-direct {p0, p1}, Lcom/motorola/blur/authenticators/DeblurEmailAuthenticator;->createTempAccount(Ljava/util/List;)J

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

.method private printLog(Ljava/util/List;)V
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    const-string v8, "email_incoming_image_url"

    const-string v7, "]."

    const-string v6, "DBEA"

    const-string v5, "="

    const-string v4, "!!email server["

    .line 481
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 482
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 483
    .local v0, emailserver:Ljava/util/HashMap;
    const-string v2, "DBEA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "!!email server["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]."

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "email_server_name"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "email_server_name"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    const-string v2, "DBEA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "!!email server["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]."

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "email_incoming_server"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "email_incoming_server"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    const-string v2, "DBEA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "!!email server["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]."

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "email_incoming_server_port"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "email_incoming_server_port"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    const-string v2, "DBEA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "!!email server["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]."

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "email_incoming_type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "email_incoming_type"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    const-string v2, "DBEA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "!!email server["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]."

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "email_incoming_pattern"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "email_incoming_pattern"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    const-string v2, "DBEA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "!!email server["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]."

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "email_incoming_login_replacement"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "email_incoming_login_replacement"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    const-string v2, "DBEA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "!!email server["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]."

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "email_incoming_security_policy"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "email_incoming_security_policy"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    const-string v2, "DBEA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "!!email server["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]."

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "email_incoming_ssl"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "email_incoming_ssl"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    const-string v2, "DBEA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "!!email server["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]."

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "email_incoming_verify_ca_check"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "email_incoming_verify_ca_check"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    const-string v2, "DBEA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "!!email server["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]."

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "email_incoming_image_url"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "email_incoming_image_url"

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    const-string v2, "DBEA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "!!email server["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]."

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "email_outgoing_server"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "email_outgoing_server"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    const-string v2, "DBEA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "!!email server["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]."

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "email_outgoing_server_port"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "email_outgoing_server_port"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    const-string v2, "DBEA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "!!email server["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]."

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "email_outgoing_type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "email_outgoing_type"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    const-string v2, "DBEA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "!!email server["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]."

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "email_outgoing_email_pattern"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "email_outgoing_email_pattern"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    const-string v2, "DBEA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "!!email server["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]."

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "email_outgoing_login_replacement"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "email_outgoing_login_replacement"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    const-string v2, "DBEA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "!!email server["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]."

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "email_outgoing_auth"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "email_outgoing_auth"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    const-string v2, "DBEA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "!!email server["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]."

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "email_outgoing_authtype"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "email_outgoing_authtype"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    const-string v2, "DBEA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "!!email server["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]."

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "email_outgoing_security_policy"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "email_outgoing_security_policy"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    const-string v2, "DBEA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "!!email server["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]."

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "email_outgoing_ssl"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "email_outgoing_ssl"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    const-string v2, "DBEA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "!!email server["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]."

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "email_outgoing_verify_ca_check"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "email_outgoing_verify_ca_check"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    const-string v2, "DBEA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "!!email server["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]."

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "email_outgoing_image_url"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "email_outgoing_image_url"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 507
    .end local v0           #emailserver:Ljava/util/HashMap;
    :cond_0
    return-void
.end method

.method private static removeActiveServiceValues(Landroid/content/ContentValues;)Landroid/content/ContentValues;
    .locals 1
    .parameter "serverValues"

    .prologue
    .line 955
    const-string v0, "username"

    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 956
    const-string v0, "password"

    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 957
    const-string v0, "max_size"

    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 959
    return-object p0
.end method

.method private setMeName()V
    .locals 3

    .prologue
    .line 1013
    iget-object v0, p0, Lcom/motorola/blur/authenticators/DeblurEmailAuthenticator;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/motorola/blur/provider/contacts/IdentityModelProvider$ProviderQueries;->getBlurOwnerName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/authenticators/DeblurEmailAuthenticator;->mMeName:Ljava/lang/String;

    .line 1014
    const-string v0, "DBEA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mMeName is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/blur/authenticators/DeblurEmailAuthenticator;->mMeName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1015
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

    .line 882
    invoke-virtual {p1}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo;->hasSsl()Z

    move-result v0

    if-nez v0, :cond_1

    .line 883
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

    .line 887
    :goto_1
    return-void

    :cond_0
    move v0, v3

    .line 883
    goto :goto_0

    .line 885
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

.method private showManualConfigurationUI(I)Landroid/app/AlertDialog;
    .locals 3
    .parameter "resId"

    .prologue
    .line 737
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/motorola/blur/authenticators/DeblurEmailAuthenticator;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c008e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0112

    new-instance v2, Lcom/motorola/blur/authenticators/DeblurEmailAuthenticator$3;

    invoke-direct {v2, p0}, Lcom/motorola/blur/authenticators/DeblurEmailAuthenticator$3;-><init>(Lcom/motorola/blur/authenticators/DeblurEmailAuthenticator;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    new-instance v2, Lcom/motorola/blur/authenticators/DeblurEmailAuthenticator$2;

    invoke-direct {v2, p0}, Lcom/motorola/blur/authenticators/DeblurEmailAuthenticator$2;-><init>(Lcom/motorola/blur/authenticators/DeblurEmailAuthenticator;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public authenticate()V
    .locals 4

    .prologue
    .line 603
    new-instance v0, Lcom/motorola/blur/service/email/provider/EmailAuthenticationFactory;

    invoke-direct {v0}, Lcom/motorola/blur/service/email/provider/EmailAuthenticationFactory;-><init>()V

    .line 604
    .local v0, factory:Lcom/motorola/blur/util/authentication/AuthenticationFactory;
    iget-object v1, p0, Lcom/motorola/blur/authenticators/DeblurEmailAuthenticator;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/motorola/blur/authenticators/DeblurEmailAuthenticator;->mAuthObserver:Lcom/motorola/blur/util/authentication/AuthenticationFactory$AuthenticationObserver;

    invoke-virtual {p0}, Lcom/motorola/blur/authenticators/DeblurEmailAuthenticator;->getProtocolName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/motorola/blur/util/authentication/AuthenticationFactory;->getAuthenticator(Landroid/content/Context;Lcom/motorola/blur/util/authentication/AuthenticationFactory$AuthenticationObserver;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 605
    const-string v1, "DBEA"

    const-string v2, "Failed to get authenticator"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    :cond_0
    return-void
.end method

.method protected buildDupeQuery(Ljava/lang/StringBuilder;)Landroid/net/Uri;
    .locals 3
    .parameter "selection"

    .prologue
    .line 1002
    const-string v0, "provider_id"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/authenticators/DeblurEmailAuthenticator;->mUserInfo:Lcom/motorola/blur/authenticators/UserInfo;

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

    iget-object v1, p0, Lcom/motorola/blur/authenticators/DeblurEmailAuthenticator;->mUserInfo:Lcom/motorola/blur/authenticators/UserInfo;

    iget-object v1, v1, Lcom/motorola/blur/authenticators/UserInfo;->username:Ljava/lang/String;

    invoke-static {v1}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1009
    sget-object v0, Lcom/motorola/blur/provider/DeviceSetup$Accounts;->CONTENT_URI:Landroid/net/Uri;

    return-object v0
.end method

.method protected getProtocolName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 689
    iget v0, p0, Lcom/motorola/blur/authenticators/DeblurEmailAuthenticator;->mProtocolCapability:I

    packed-switch v0, :pswitch_data_0

    .line 695
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 691
    :pswitch_0
    const-string v0, "IMAP_PROTOCOL"

    goto :goto_0

    .line 693
    :pswitch_1
    const-string v0, "POP3_PROTOCOL"

    goto :goto_0

    .line 689
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected handleCertificateIssue()I
    .locals 1

    .prologue
    .line 869
    const v0, 0x7f0c00d9

    invoke-virtual {p0, v0}, Lcom/motorola/blur/authenticators/DeblurEmailAuthenticator;->appendError(I)V

    .line 870
    const/4 v0, 0x2

    return v0
.end method

.method protected hasYahooFlags(Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo;)Z
    .locals 2
    .parameter "incomingSettings"

    .prologue
    .line 324
    if-eqz p1, :cond_0

    .line 325
    invoke-virtual {p1}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo;->hasAuthType()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo;->getAuthType()I

    move-result v0

    const/16 v1, 0x28

    if-ne v0, v1, :cond_0

    .line 326
    const/4 v0, 0x1

    .line 329
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

    .line 984
    const/4 v7, 0x0

    .line 986
    .local v7, hasError:Z
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 987
    .local v8, selection:Ljava/lang/StringBuilder;
    invoke-virtual {p0, v8}, Lcom/motorola/blur/authenticators/DeblurEmailAuthenticator;->buildDupeQuery(Ljava/lang/StringBuilder;)Landroid/net/Uri;

    move-result-object v1

    .line 988
    .local v1, uri:Landroid/net/Uri;
    iget-object v3, p0, Lcom/motorola/blur/authenticators/DeblurEmailAuthenticator;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 989
    .local v0, contentResolver:Landroid/content/ContentResolver;
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 990
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 991
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 992
    const/4 v7, 0x1

    .line 993
    const v2, 0x7f0c0092

    invoke-virtual {p0, v2}, Lcom/motorola/blur/authenticators/DeblurEmailAuthenticator;->appendError(I)V

    .line 995
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 997
    :cond_1
    return v7
.end method

.method protected final makeUsernameFromEmail(Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo;)Ljava/lang/String;
    .locals 2
    .parameter "info"

    .prologue
    .line 967
    invoke-virtual {p1}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo;->hasEmailPattern()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo;->hasLoginReplacement()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 968
    invoke-virtual {p1}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo;->getEmailPattern()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/authenticators/DeblurEmailAuthenticator;->mUserInfo:Lcom/motorola/blur/authenticators/UserInfo;

    iget-object v1, v1, Lcom/motorola/blur/authenticators/UserInfo;->username:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {p1}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo;->getLoginReplacement()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 972
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/motorola/blur/setup/ValidatedPatternValue;->EMAIL_PATTERN:Ljava/util/regex/Pattern;

    iget-object v1, p0, Lcom/motorola/blur/authenticators/DeblurEmailAuthenticator;->mUserInfo:Lcom/motorola/blur/authenticators/UserInfo;

    iget-object v1, v1, Lcom/motorola/blur/authenticators/UserInfo;->username:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, "$1"

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public processBackgroundMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v4, 0x3

    .line 702
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 731
    :cond_0
    :goto_0
    return-void

    .line 704
    :pswitch_0
    iget-boolean v3, p0, Lcom/motorola/blur/authenticators/DeblurEmailAuthenticator;->mPendingRequest:Z

    if-eqz v3, :cond_0

    .line 705
    const v3, 0x7f0c0094

    invoke-virtual {p0, v3}, Lcom/motorola/blur/authenticators/DeblurEmailAuthenticator;->appendError(I)V

    .line 706
    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lcom/motorola/blur/authenticators/DeblurEmailAuthenticator;->sendForegroundMessage(I)Z

    goto :goto_0

    .line 710
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/blur/util/authentication/Authentication;

    .line 711
    .local v0, auth:Lcom/motorola/blur/util/authentication/Authentication;
    invoke-direct {p0, v0}, Lcom/motorola/blur/authenticators/DeblurEmailAuthenticator;->handleAuthenticatorConnection(Lcom/motorola/blur/util/authentication/Authentication;)I

    move-result v1

    .line 712
    .local v1, responseError:I
    invoke-virtual {p0, v4}, Lcom/motorola/blur/authenticators/DeblurEmailAuthenticator;->sendForegroundMessage(I)Z

    .line 713
    invoke-direct {p0, v1}, Lcom/motorola/blur/authenticators/DeblurEmailAuthenticator;->handleAuthResponse(I)V

    goto :goto_0

    .line 717
    .end local v0           #auth:Lcom/motorola/blur/util/authentication/Authentication;
    .end local v1           #responseError:I
    :pswitch_2
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v3, v3, Ljava/util/List;

    if-eqz v3, :cond_0

    .line 718
    invoke-virtual {p0, v4}, Lcom/motorola/blur/authenticators/DeblurEmailAuthenticator;->sendForegroundMessage(I)Z

    .line 719
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    .line 720
    .local v2, serverInfos:Ljava/util/List;,"Ljava/util/List<Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo;>;"
    invoke-direct {p0, v2}, Lcom/motorola/blur/authenticators/DeblurEmailAuthenticator;->handleMailSettings(Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 721
    invoke-virtual {p0}, Lcom/motorola/blur/authenticators/DeblurEmailAuthenticator;->authenticate()V

    goto :goto_0

    .line 724
    :cond_1
    invoke-virtual {p0}, Lcom/motorola/blur/authenticators/DeblurEmailAuthenticator;->resetAccount()V

    .line 725
    const v3, 0x7f0c0110

    invoke-direct {p0, v3}, Lcom/motorola/blur/authenticators/DeblurEmailAuthenticator;->showManualConfigurationUI(I)Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/motorola/blur/authenticators/DeblurEmailAuthenticator;->mDialog:Landroid/app/AlertDialog;

    .line 726
    const/4 v3, 0x5

    invoke-virtual {p0, v3}, Lcom/motorola/blur/authenticators/DeblurEmailAuthenticator;->sendForegroundMessage(I)Z

    goto :goto_0

    .line 702
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected registerReceivers()V
    .locals 0

    .prologue
    .line 337
    return-void
.end method

.method protected requestSettings()V
    .locals 4

    .prologue
    .line 342
    invoke-direct {p0}, Lcom/motorola/blur/authenticators/DeblurEmailAuthenticator;->getEmailConfigFromXML()Ljava/util/List;

    move-result-object v0

    .line 346
    .local v0, emailCofigList:Ljava/util/List;,"Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-direct {p0, v0}, Lcom/motorola/blur/authenticators/DeblurEmailAuthenticator;->buildEmailServerInfo(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 349
    .local v2, serverInfos:Ljava/util/List;,"Ljava/util/List<Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo;>;"
    invoke-virtual {p0}, Lcom/motorola/blur/authenticators/DeblurEmailAuthenticator;->getBackgroundMessage()Landroid/os/Message;

    move-result-object v1

    .line 350
    .local v1, msg:Landroid/os/Message;
    const/4 v3, 0x2

    iput v3, v1, Landroid/os/Message;->what:I

    .line 351
    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 352
    invoke-virtual {p0, v1}, Lcom/motorola/blur/authenticators/DeblurEmailAuthenticator;->sendBackgroundMessage(Landroid/os/Message;)Z

    .line 353
    return-void
.end method

.method protected resetAccount()V
    .locals 7

    .prologue
    const-wide/16 v5, 0x0

    const/4 v4, 0x0

    .line 853
    iget-object v0, p0, Lcom/motorola/blur/authenticators/DeblurEmailAuthenticator;->mUserInfo:Lcom/motorola/blur/authenticators/UserInfo;

    iget-wide v0, v0, Lcom/motorola/blur/authenticators/UserInfo;->accountId:J

    cmp-long v0, v0, v5

    if-lez v0, :cond_1

    .line 854
    iget-object v0, p0, Lcom/motorola/blur/authenticators/DeblurEmailAuthenticator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/motorola/blur/provider/DeviceSetup$Accounts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/blur/authenticators/DeblurEmailAuthenticator;->mUserInfo:Lcom/motorola/blur/authenticators/UserInfo;

    iget-wide v2, v2, Lcom/motorola/blur/authenticators/UserInfo;->accountId:J

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 859
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/authenticators/DeblurEmailAuthenticator;->mUserInfo:Lcom/motorola/blur/authenticators/UserInfo;

    iput-wide v5, v0, Lcom/motorola/blur/authenticators/UserInfo;->accountId:J

    .line 861
    :cond_1
    return-void
.end method

.method protected startAuth()V
    .locals 1

    .prologue
    .line 154
    invoke-virtual {p0}, Lcom/motorola/blur/authenticators/DeblurEmailAuthenticator;->validate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    invoke-virtual {p0}, Lcom/motorola/blur/authenticators/DeblurEmailAuthenticator;->requestSettings()V

    .line 159
    :goto_0
    return-void

    .line 157
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/motorola/blur/authenticators/DeblurEmailAuthenticator;->sendForegroundMessage(I)Z

    goto :goto_0
.end method

.method protected unregisterReceivers()V
    .locals 0

    .prologue
    .line 964
    return-void
.end method

.method protected validate()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 760
    invoke-super {p0}, Lcom/motorola/blur/authenticators/BlurAuthenticator;->validate()Z

    move-result v0

    .line 761
    .local v0, success:Z
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/motorola/blur/authenticators/DeblurEmailAuthenticator;->validateUsername()Z

    move-result v1

    if-eqz v1, :cond_1

    move v0, v3

    .line 762
    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/motorola/blur/authenticators/DeblurEmailAuthenticator;->validatePassword()Z

    move-result v1

    if-eqz v1, :cond_2

    move v0, v3

    .line 763
    :goto_1
    if-eqz v0, :cond_0

    .line 764
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/motorola/blur/authenticators/DeblurEmailAuthenticator;->isAccountDuplicate()Z

    move-result v1

    if-nez v1, :cond_3

    move v0, v3

    .line 766
    :cond_0
    :goto_2
    return v0

    :cond_1
    move v0, v2

    .line 761
    goto :goto_0

    :cond_2
    move v0, v2

    .line 762
    goto :goto_1

    :cond_3
    move v0, v2

    .line 764
    goto :goto_2
.end method

.method protected validateEmailAddress(Ljava/lang/String;)Z
    .locals 5
    .parameter "address"

    .prologue
    .line 776
    new-instance v0, Lcom/motorola/blur/setup/ValidatedPatternValue;

    sget-object v2, Lcom/motorola/blur/setup/ValidatedPatternValue;->EMAIL_PATTERN:Ljava/util/regex/Pattern;

    const v3, 0x7f0c0089

    const/4 v4, 0x0

    invoke-direct {v0, v2, v3, v4}, Lcom/motorola/blur/setup/ValidatedPatternValue;-><init>(Ljava/util/regex/Pattern;ILjava/lang/String;)V

    .line 777
    .local v0, emailPattern:Lcom/motorola/blur/setup/ValidatedPatternValue;
    invoke-virtual {v0, p1}, Lcom/motorola/blur/setup/ValidatedPatternValue;->isValidValue(Ljava/lang/String;)Z

    move-result v1

    .line 778
    .local v1, validated:Z
    if-nez v1, :cond_0

    .line 779
    iget-object v2, p0, Lcom/motorola/blur/authenticators/DeblurEmailAuthenticator;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/motorola/blur/setup/ValidatedPatternValue;->getError(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/motorola/blur/authenticators/DeblurEmailAuthenticator;->appendError(Ljava/lang/String;)V

    .line 781
    :cond_0
    return v1
.end method

.method protected validatePassword()Z
    .locals 2

    .prologue
    .line 785
    iget-object v1, p0, Lcom/motorola/blur/authenticators/DeblurEmailAuthenticator;->mUserInfo:Lcom/motorola/blur/authenticators/UserInfo;

    iget-object v1, v1, Lcom/motorola/blur/authenticators/UserInfo;->password:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    move v0, v1

    .line 786
    .local v0, validated:Z
    :goto_0
    if-nez v0, :cond_0

    .line 787
    const v1, 0x7f0c006e

    invoke-virtual {p0, v1}, Lcom/motorola/blur/authenticators/DeblurEmailAuthenticator;->appendError(I)V

    .line 789
    :cond_0
    return v0

    .line 785
    .end local v0           #validated:Z
    :cond_1
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method protected validateUsername()Z
    .locals 1

    .prologue
    .line 770
    iget-object v0, p0, Lcom/motorola/blur/authenticators/DeblurEmailAuthenticator;->mUserInfo:Lcom/motorola/blur/authenticators/UserInfo;

    iget-object v0, v0, Lcom/motorola/blur/authenticators/UserInfo;->username:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/motorola/blur/authenticators/DeblurEmailAuthenticator;->validateEmailAddress(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
