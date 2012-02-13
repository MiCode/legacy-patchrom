.class public Lcom/motorola/blur/authenticators/BlurSNPAuthenticator;
.super Lcom/motorola/blur/authenticators/BlurAuthenticator;
.source "BlurSNPAuthenticator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/authenticators/BlurSNPAuthenticator$1;,
        Lcom/motorola/blur/authenticators/BlurSNPAuthenticator$SNPReceiver;
    }
.end annotation


# static fields
.field private static final BLUR_SERVICES_RESTARTED:I = 0x2

.field private static final DELETE_AND_READD_CREDENTIALS:Ljava/lang/String; = null

.field private static final DOWNLOADED_SNP_CAPTCHA:I = 0x7

.field private static final INCOMING_BLUR_SERVICE_MESSAGE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "BSNPA"


# instance fields
.field private mCaptchaImageDecoded:[B

.field private mCaptchaToken:Ljava/lang/String;

.field private mCaptchaUserText:Ljava/lang/String;

.field private mCaptchaed:Z

.field private mId:J

.field protected mProviderName:Ljava/lang/String;

.field protected mProviderPrettyName:Ljava/lang/String;

.field private mReceiver:Lcom/motorola/blur/authenticators/BlurSNPAuthenticator$SNPReceiver;

.field private mRegistered:Ljava/lang/Boolean;

.field protected mUid:Ljava/lang/String;

.field protected mUserPrettyName:Ljava/lang/String;

.field private mWaitingForAccountRemoval:Z

.field private mWaitingForCaptcha:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    sput-object v0, Lcom/motorola/blur/authenticators/BlurSNPAuthenticator;->DELETE_AND_READD_CREDENTIALS:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JJLcom/motorola/blur/authenticators/BlurAuthenticationListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "username"
    .parameter "password"
    .parameter "accountId"
    .parameter "providerId"
    .parameter "listener"
    .parameter "providerPrettyName"
    .parameter "providerName"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 95
    invoke-direct/range {p0 .. p8}, Lcom/motorola/blur/authenticators/BlurAuthenticator;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JJLcom/motorola/blur/authenticators/BlurAuthenticationListener;)V

    .line 40
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/motorola/blur/authenticators/BlurSNPAuthenticator;->mId:J

    .line 46
    iput-object v2, p0, Lcom/motorola/blur/authenticators/BlurSNPAuthenticator;->mUserPrettyName:Ljava/lang/String;

    .line 47
    iput-object v2, p0, Lcom/motorola/blur/authenticators/BlurSNPAuthenticator;->mProviderName:Ljava/lang/String;

    .line 48
    iput-object v2, p0, Lcom/motorola/blur/authenticators/BlurSNPAuthenticator;->mProviderPrettyName:Ljava/lang/String;

    .line 49
    iput-object v2, p0, Lcom/motorola/blur/authenticators/BlurSNPAuthenticator;->mUid:Ljava/lang/String;

    .line 50
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/authenticators/BlurSNPAuthenticator;->mRegistered:Ljava/lang/Boolean;

    .line 52
    iput-boolean v3, p0, Lcom/motorola/blur/authenticators/BlurSNPAuthenticator;->mWaitingForCaptcha:Z

    .line 53
    iput-boolean v3, p0, Lcom/motorola/blur/authenticators/BlurSNPAuthenticator;->mWaitingForAccountRemoval:Z

    .line 55
    iput-object v2, p0, Lcom/motorola/blur/authenticators/BlurSNPAuthenticator;->mCaptchaToken:Ljava/lang/String;

    .line 56
    iput-object v2, p0, Lcom/motorola/blur/authenticators/BlurSNPAuthenticator;->mCaptchaUserText:Ljava/lang/String;

    .line 57
    iput-object v2, p0, Lcom/motorola/blur/authenticators/BlurSNPAuthenticator;->mCaptchaImageDecoded:[B

    .line 58
    iput-boolean v3, p0, Lcom/motorola/blur/authenticators/BlurSNPAuthenticator;->mCaptchaed:Z

    .line 82
    iput-object v2, p0, Lcom/motorola/blur/authenticators/BlurSNPAuthenticator;->mReceiver:Lcom/motorola/blur/authenticators/BlurSNPAuthenticator$SNPReceiver;

    .line 96
    iput-object p9, p0, Lcom/motorola/blur/authenticators/BlurSNPAuthenticator;->mProviderPrettyName:Ljava/lang/String;

    .line 97
    iput-object p10, p0, Lcom/motorola/blur/authenticators/BlurSNPAuthenticator;->mProviderName:Ljava/lang/String;

    .line 98
    return-void
.end method

.method private final processCaptchaForSN(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;)I
    .locals 3
    .parameter "snpResp"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 374
    iput-boolean v2, p0, Lcom/motorola/blur/authenticators/BlurSNPAuthenticator;->mCaptchaed:Z

    .line 376
    iput-object v1, p0, Lcom/motorola/blur/authenticators/BlurSNPAuthenticator;->mCaptchaToken:Ljava/lang/String;

    .line 377
    iput-object v1, p0, Lcom/motorola/blur/authenticators/BlurSNPAuthenticator;->mCaptchaUserText:Ljava/lang/String;

    .line 378
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/blur/authenticators/BlurSNPAuthenticator;->mCaptchaed:Z

    .line 379
    iput-object v1, p0, Lcom/motorola/blur/authenticators/BlurSNPAuthenticator;->mCaptchaImageDecoded:[B

    .line 382
    invoke-virtual {p1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;->getCaptchaToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/authenticators/BlurSNPAuthenticator;->mCaptchaToken:Ljava/lang/String;

    .line 385
    iput-boolean v2, p0, Lcom/motorola/blur/authenticators/BlurSNPAuthenticator;->mWaitingForCaptcha:Z

    .line 386
    iget-object v0, p0, Lcom/motorola/blur/authenticators/BlurSNPAuthenticator;->mBackHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-static {v0, p1, v1}, Lcom/motorola/blur/setup/CaptchaUtility;->processSNResponseForCaptcha(Landroid/os/Handler;Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;I)I

    move-result v0

    return v0
.end method

.method private declared-synchronized processRecievedCaptcha([B)V
    .locals 1
    .parameter "decoded"

    .prologue
    .line 391
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/motorola/blur/authenticators/BlurSNPAuthenticator;->mWaitingForCaptcha:Z

    .line 392
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/blur/authenticators/BlurSNPAuthenticator;->mCaptchaed:Z

    .line 393
    iput-object p1, p0, Lcom/motorola/blur/authenticators/BlurSNPAuthenticator;->mCaptchaImageDecoded:[B

    .line 394
    iget-boolean v0, p0, Lcom/motorola/blur/authenticators/BlurSNPAuthenticator;->mWaitingForAccountRemoval:Z

    if-nez v0, :cond_0

    .line 395
    invoke-direct {p0}, Lcom/motorola/blur/authenticators/BlurSNPAuthenticator;->showCaptchaActivity()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 397
    :cond_0
    monitor-exit p0

    return-void

    .line 391
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private reAddRemovedUser(Lcom/motorola/blur/service/blur/devicesetup/RemoveProviderCredentialsWS$Response;)V
    .locals 6
    .parameter "removeResp"

    .prologue
    .line 282
    const-string v2, "BSNPA"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "Re-adding user to service"

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/motorola/blur/util/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 284
    invoke-virtual {p1}, Lcom/motorola/blur/service/blur/devicesetup/RemoveProviderCredentialsWS$Response;->getError()Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    move-result-object v0

    .line 285
    .local v0, code:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;
    sget-object v2, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->None:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    if-ne v0, v2, :cond_0

    .line 286
    invoke-virtual {p0}, Lcom/motorola/blur/authenticators/BlurSNPAuthenticator;->authenticate()V

    .line 291
    :goto_0
    return-void

    .line 288
    :cond_0
    invoke-virtual {p1}, Lcom/motorola/blur/service/blur/devicesetup/RemoveProviderCredentialsWS$Response;->getSNPResponse()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/motorola/blur/authenticators/BlurSNPAuthenticator;->getSNPError(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;)Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    move-result-object v1

    .line 289
    .local v1, snpError:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;
    invoke-virtual {p0, v0, v1}, Lcom/motorola/blur/authenticators/BlurSNPAuthenticator;->buildAndShowError(Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;)V

    goto :goto_0
.end method

.method private saveNewAccount(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;)V
    .locals 2
    .parameter "snpResp"

    .prologue
    .line 254
    invoke-virtual {p1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/blur/authenticators/BlurSNPAuthenticator;->mUserPrettyName:Ljava/lang/String;

    .line 255
    invoke-virtual {p1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;->getUid()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/blur/authenticators/BlurSNPAuthenticator;->mUid:Ljava/lang/String;

    .line 256
    invoke-virtual {p0}, Lcom/motorola/blur/authenticators/BlurSNPAuthenticator;->getForegroundMessage()Landroid/os/Message;

    move-result-object v0

    .line 257
    .local v0, outMsg:Landroid/os/Message;
    invoke-direct {p0}, Lcom/motorola/blur/authenticators/BlurSNPAuthenticator;->saveToDB()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 258
    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->what:I

    .line 263
    :goto_0
    invoke-virtual {p0, v0}, Lcom/motorola/blur/authenticators/BlurSNPAuthenticator;->sendForegroundMessage(Landroid/os/Message;)Z

    .line 264
    return-void

    .line 260
    :cond_0
    const v1, 0x7f0c00d7

    invoke-virtual {p0, v1}, Lcom/motorola/blur/authenticators/BlurSNPAuthenticator;->appendError(I)V

    .line 261
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    goto :goto_0
.end method

.method private saveToDB()Z
    .locals 6

    .prologue
    const-string v4, "user_pretty_name"

    .line 321
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 322
    .local v1, values:Landroid/content/ContentValues;
    const/4 v0, 0x0

    .line 323
    .local v0, uri:Landroid/net/Uri;
    const-string v2, "username"

    iget-object v3, p0, Lcom/motorola/blur/authenticators/BlurSNPAuthenticator;->mUid:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/motorola/blur/authenticators/BlurSNPAuthenticator;->mUid:Ljava/lang/String;

    :goto_0
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    const-string v2, "password"

    iget-object v3, p0, Lcom/motorola/blur/authenticators/BlurSNPAuthenticator;->mUserInfo:Lcom/motorola/blur/authenticators/UserInfo;

    iget-object v3, v3, Lcom/motorola/blur/authenticators/UserInfo;->password:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    iget-object v2, p0, Lcom/motorola/blur/authenticators/BlurSNPAuthenticator;->mUserPrettyName:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 326
    const-string v2, "user_pretty_name"

    iget-object v2, p0, Lcom/motorola/blur/authenticators/BlurSNPAuthenticator;->mUserPrettyName:Ljava/lang/String;

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    :goto_1
    const-string v2, "email_address"

    iget-object v3, p0, Lcom/motorola/blur/authenticators/BlurSNPAuthenticator;->mUserInfo:Lcom/motorola/blur/authenticators/UserInfo;

    iget-object v3, v3, Lcom/motorola/blur/authenticators/UserInfo;->username:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    const-string v2, "provider_id"

    iget-object v3, p0, Lcom/motorola/blur/authenticators/BlurSNPAuthenticator;->mUserInfo:Lcom/motorola/blur/authenticators/UserInfo;

    iget-wide v3, v3, Lcom/motorola/blur/authenticators/UserInfo;->providerId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 332
    iget-object v2, p0, Lcom/motorola/blur/authenticators/BlurSNPAuthenticator;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/motorola/blur/provider/DeviceSetup$Accounts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 333
    if-eqz v0, :cond_0

    .line 334
    iget-object v2, p0, Lcom/motorola/blur/authenticators/BlurSNPAuthenticator;->mUserInfo:Lcom/motorola/blur/authenticators/UserInfo;

    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v3

    iput-wide v3, v2, Lcom/motorola/blur/authenticators/UserInfo;->accountId:J

    .line 336
    :cond_0
    iget-object v2, p0, Lcom/motorola/blur/authenticators/BlurSNPAuthenticator;->mUserInfo:Lcom/motorola/blur/authenticators/UserInfo;

    iget-wide v2, v2, Lcom/motorola/blur/authenticators/UserInfo;->accountId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_3

    const/4 v2, 0x1

    :goto_2
    return v2

    .line 323
    :cond_1
    iget-object v3, p0, Lcom/motorola/blur/authenticators/BlurSNPAuthenticator;->mUserInfo:Lcom/motorola/blur/authenticators/UserInfo;

    iget-object v3, v3, Lcom/motorola/blur/authenticators/UserInfo;->username:Ljava/lang/String;

    goto :goto_0

    .line 328
    :cond_2
    const-string v2, "user_pretty_name"

    iget-object v2, p0, Lcom/motorola/blur/authenticators/BlurSNPAuthenticator;->mProviderPrettyName:Ljava/lang/String;

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 336
    :cond_3
    const/4 v2, 0x0

    goto :goto_2
.end method

.method private showCaptchaActivity()V
    .locals 3

    .prologue
    .line 366
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 367
    .local v0, captchaIntent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/motorola/blur/authenticators/BlurSNPAuthenticator;->mContext:Landroid/content/Context;

    const-class v2, Lcom/motorola/blur/setup/CaptchaActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 368
    const-string v1, "android.intent.extra.shortcut.ICON"

    iget-object v2, p0, Lcom/motorola/blur/authenticators/BlurSNPAuthenticator;->mCaptchaImageDecoded:[B

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 369
    iput-object v0, p0, Lcom/motorola/blur/authenticators/BlurSNPAuthenticator;->mIntent:Landroid/content/Intent;

    .line 370
    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lcom/motorola/blur/authenticators/BlurSNPAuthenticator;->sendForegroundMessage(I)Z

    .line 371
    return-void
.end method


# virtual methods
.method public authenticate()V
    .locals 7

    .prologue
    .line 140
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/motorola/blur/authenticators/BlurSNPAuthenticator;->mId:J

    .line 141
    invoke-virtual {p0}, Lcom/motorola/blur/authenticators/BlurSNPAuthenticator;->registerReceivers()V

    .line 142
    iget-boolean v1, p0, Lcom/motorola/blur/authenticators/BlurSNPAuthenticator;->mCaptchaed:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/motorola/blur/authenticators/BlurSNPAuthenticator;->mCaptchaUserText:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 143
    :cond_0
    iget-object v1, p0, Lcom/motorola/blur/authenticators/BlurSNPAuthenticator;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/motorola/blur/service/blur/devicesetup/client/DeviceSetupWSClientFactory;->getClient(Landroid/content/Context;)Lcom/motorola/blur/service/blur/devicesetup/client/IDeviceSetupWSClient;

    move-result-object v6

    .line 144
    .local v6, wsClient:Lcom/motorola/blur/service/blur/devicesetup/client/IDeviceSetupWSClient;
    new-instance v0, Lcom/motorola/blur/service/blur/devicesetup/ProviderCredentials;

    iget-object v1, p0, Lcom/motorola/blur/authenticators/BlurSNPAuthenticator;->mProviderName:Ljava/lang/String;

    iget-object v2, p0, Lcom/motorola/blur/authenticators/BlurSNPAuthenticator;->mUserInfo:Lcom/motorola/blur/authenticators/UserInfo;

    iget-object v2, v2, Lcom/motorola/blur/authenticators/UserInfo;->username:Ljava/lang/String;

    iget-object v3, p0, Lcom/motorola/blur/authenticators/BlurSNPAuthenticator;->mUserInfo:Lcom/motorola/blur/authenticators/UserInfo;

    iget-object v3, v3, Lcom/motorola/blur/authenticators/UserInfo;->password:Ljava/lang/String;

    iget-object v4, p0, Lcom/motorola/blur/authenticators/BlurSNPAuthenticator;->mCaptchaToken:Ljava/lang/String;

    iget-object v5, p0, Lcom/motorola/blur/authenticators/BlurSNPAuthenticator;->mCaptchaUserText:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/motorola/blur/service/blur/devicesetup/ProviderCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    .local v0, provCreds:Lcom/motorola/blur/service/blur/devicesetup/ProviderCredentials;
    iget-wide v1, p0, Lcom/motorola/blur/authenticators/BlurSNPAuthenticator;->mId:J

    invoke-interface {v6, v0, v1, v2}, Lcom/motorola/blur/service/blur/devicesetup/client/IDeviceSetupWSClient;->addProviderCredentials(Lcom/motorola/blur/service/blur/devicesetup/ProviderCredentials;J)Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    .line 147
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/motorola/blur/authenticators/BlurSNPAuthenticator;->mCaptchaed:Z

    .line 148
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/blur/authenticators/BlurSNPAuthenticator;->mIntent:Landroid/content/Intent;

    .line 152
    .end local v0           #provCreds:Lcom/motorola/blur/service/blur/devicesetup/ProviderCredentials;
    .end local v6           #wsClient:Lcom/motorola/blur/service/blur/devicesetup/client/IDeviceSetupWSClient;
    :goto_0
    return-void

    .line 150
    :cond_1
    invoke-direct {p0}, Lcom/motorola/blur/authenticators/BlurSNPAuthenticator;->showCaptchaActivity()V

    goto :goto_0
.end method

.method protected buildAndShowError(Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;)V
    .locals 2
    .parameter "code"
    .parameter "snpError"

    .prologue
    .line 341
    iget-object v0, p0, Lcom/motorola/blur/authenticators/BlurSNPAuthenticator;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/motorola/blur/authenticators/BlurSNPAuthenticator;->mProviderPrettyName:Ljava/lang/String;

    invoke-static {v0, p1, p2, v1}, Lcom/motorola/blur/setup/ServiceErrorTranslator;->constructServiceError(Landroid/content/Context;Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/motorola/blur/authenticators/BlurSNPAuthenticator;->appendError(Ljava/lang/String;)V

    .line 345
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/motorola/blur/authenticators/BlurSNPAuthenticator;->sendForegroundMessage(I)Z

    .line 346
    return-void
.end method

.method protected getSNPError(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;)Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;
    .locals 2
    .parameter "response"

    .prologue
    .line 309
    sget-object v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->UNKNOWN_ERROR:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    .line 310
    .local v0, snpError:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;
    if-eqz p1, :cond_0

    .line 311
    invoke-virtual {p1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;->getSnpExtendedError()I

    move-result v1

    invoke-static {v1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->valueOf(I)Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    move-result-object v0

    .line 313
    :cond_0
    return-object v0
.end method

.method public processBackgroundMessage(Landroid/os/Message;)V
    .locals 14
    .parameter "msg"

    .prologue
    .line 159
    iget v9, p1, Landroid/os/Message;->what:I

    sparse-switch v9, :sswitch_data_0

    .line 246
    .end local p1
    :cond_0
    :goto_0
    return-void

    .line 161
    .restart local p1
    :sswitch_0
    const v9, 0x7f0c0094

    invoke-virtual {p0, v9}, Lcom/motorola/blur/authenticators/BlurSNPAuthenticator;->appendError(I)V

    .line 162
    const/4 v9, 0x2

    invoke-virtual {p0, v9}, Lcom/motorola/blur/authenticators/BlurSNPAuthenticator;->sendForegroundMessage(I)Z

    goto :goto_0

    .line 165
    :sswitch_1
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v9, v9, Landroid/content/Intent;

    if-eqz v9, :cond_0

    .line 166
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/content/Intent;

    .line 167
    .local v4, intent:Landroid/content/Intent;
    const-string v9, "com.motorola.blur.service.ws.key.responsedata"

    invoke-virtual {v4, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    .line 169
    .local v5, p:Landroid/os/Parcelable;
    if-eqz v5, :cond_7

    instance-of v9, v5, Lcom/motorola/blur/service/blur/devicesetup/ProviderCredentialsWS$Response;

    if-eqz v9, :cond_7

    .line 170
    move-object v0, v5

    check-cast v0, Lcom/motorola/blur/service/blur/devicesetup/ProviderCredentialsWS$Response;

    move-object v6, v0

    .line 171
    .local v6, resp:Lcom/motorola/blur/service/blur/devicesetup/ProviderCredentialsWS$Response;
    iget-wide v9, p0, Lcom/motorola/blur/authenticators/BlurSNPAuthenticator;->mId:J

    invoke-virtual {v6}, Lcom/motorola/blur/service/blur/devicesetup/ProviderCredentialsWS$Response;->getReqId()J

    move-result-wide v11

    cmp-long v9, v9, v11

    if-nez v9, :cond_0

    .line 172
    sget-object v2, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->NullPointerError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    .line 173
    .local v2, errorCode:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;
    invoke-virtual {v6}, Lcom/motorola/blur/service/blur/devicesetup/ProviderCredentialsWS$Response;->getError()Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    move-result-object v2

    .line 174
    sget-object v9, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->None:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    if-ne v2, v9, :cond_2

    .line 175
    invoke-virtual {v6}, Lcom/motorola/blur/service/blur/devicesetup/ProviderCredentialsWS$Response;->getSNPResponse()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;

    move-result-object v8

    .line 176
    .local v8, snpResp:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;
    if-eqz v8, :cond_1

    invoke-virtual {v8}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;->hasCaptchaToken()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 177
    invoke-direct {p0, v8}, Lcom/motorola/blur/authenticators/BlurSNPAuthenticator;->processCaptchaForSN(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;)I

    move-result v9

    if-nez v9, :cond_0

    .line 179
    sget-object v9, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->NullPointerError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    sget-object v10, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->UNKNOWN_ERROR:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    invoke-virtual {p0, v9, v10}, Lcom/motorola/blur/authenticators/BlurSNPAuthenticator;->buildAndShowError(Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;)V

    goto :goto_0

    .line 184
    :cond_1
    invoke-virtual {v6}, Lcom/motorola/blur/service/blur/devicesetup/ProviderCredentialsWS$Response;->getSNPResponse()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/motorola/blur/authenticators/BlurSNPAuthenticator;->saveNewAccount(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;)V

    goto :goto_0

    .line 187
    .end local v8           #snpResp:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;
    :cond_2
    invoke-virtual {v6}, Lcom/motorola/blur/service/blur/devicesetup/ProviderCredentialsWS$Response;->getSNPResponse()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;

    move-result-object v8

    .line 188
    .restart local v8       #snpResp:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;
    invoke-virtual {p0, v8}, Lcom/motorola/blur/authenticators/BlurSNPAuthenticator;->getSNPError(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;)Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    move-result-object v7

    .line 189
    .local v7, snpError:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;
    if-eqz v8, :cond_6

    .line 190
    const-string v9, "BSNPA"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "snp sent back error info: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v7}, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Lcom/motorola/blur/util/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 194
    sget-object v9, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->USER_EXIST_IN_DB:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    if-eq v7, v9, :cond_3

    sget-object v9, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->LOGIN_NOT_MATCH_DB:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    if-ne v7, v9, :cond_4

    .line 195
    :cond_3
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/motorola/blur/authenticators/BlurSNPAuthenticator;->mWaitingForAccountRemoval:Z

    .line 196
    invoke-virtual {p0}, Lcom/motorola/blur/authenticators/BlurSNPAuthenticator;->removeOrphanedAccount()V

    .line 199
    :cond_4
    invoke-virtual {v8}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;->hasCaptchaToken()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 200
    invoke-direct {p0, v8}, Lcom/motorola/blur/authenticators/BlurSNPAuthenticator;->processCaptchaForSN(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;)I

    move-result v1

    .line 202
    .local v1, captchaProcessingResult:I
    iget-boolean v9, p0, Lcom/motorola/blur/authenticators/BlurSNPAuthenticator;->mWaitingForAccountRemoval:Z

    if-nez v9, :cond_0

    if-nez v1, :cond_0

    .line 205
    sget-object v9, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->NullPointerError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    sget-object v10, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->UNKNOWN_ERROR:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    invoke-virtual {p0, v9, v10}, Lcom/motorola/blur/authenticators/BlurSNPAuthenticator;->buildAndShowError(Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;)V

    goto/16 :goto_0

    .line 208
    .end local v1           #captchaProcessingResult:I
    :cond_5
    iget-boolean v9, p0, Lcom/motorola/blur/authenticators/BlurSNPAuthenticator;->mWaitingForAccountRemoval:Z

    if-nez v9, :cond_0

    .line 209
    invoke-virtual {p0, v2, v7}, Lcom/motorola/blur/authenticators/BlurSNPAuthenticator;->buildAndShowError(Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;)V

    goto/16 :goto_0

    .line 212
    :cond_6
    iget-object v9, p0, Lcom/motorola/blur/authenticators/BlurSNPAuthenticator;->mContext:Landroid/content/Context;

    invoke-static {v9, v2}, Lcom/motorola/blur/setup/ServiceErrorTranslator;->translate(Landroid/content/Context;Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;)I

    move-result v9

    invoke-virtual {p0, v9}, Lcom/motorola/blur/authenticators/BlurSNPAuthenticator;->appendError(I)V

    .line 213
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lcom/motorola/blur/authenticators/BlurSNPAuthenticator;->sendForegroundMessage(I)Z

    goto/16 :goto_0

    .line 217
    .end local v2           #errorCode:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;
    .end local v6           #resp:Lcom/motorola/blur/service/blur/devicesetup/ProviderCredentialsWS$Response;
    .end local v7           #snpError:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;
    .end local v8           #snpResp:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;
    :cond_7
    if-eqz v5, :cond_0

    instance-of v9, v5, Lcom/motorola/blur/service/blur/devicesetup/RemoveProviderCredentialsWS$Response;

    if-eqz v9, :cond_0

    .line 218
    iget-wide v9, p0, Lcom/motorola/blur/authenticators/BlurSNPAuthenticator;->mId:J

    move-object v0, v5

    check-cast v0, Lcom/motorola/blur/service/blur/devicesetup/RemoveProviderCredentialsWS$Response;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/motorola/blur/service/blur/devicesetup/RemoveProviderCredentialsWS$Response;->getReqId()J

    move-result-wide v11

    cmp-long v9, v9, v11

    if-nez v9, :cond_0

    .line 219
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/motorola/blur/authenticators/BlurSNPAuthenticator;->mWaitingForAccountRemoval:Z

    .line 220
    iget-boolean v9, p0, Lcom/motorola/blur/authenticators/BlurSNPAuthenticator;->mWaitingForCaptcha:Z

    if-nez v9, :cond_0

    .line 221
    iget-boolean v9, p0, Lcom/motorola/blur/authenticators/BlurSNPAuthenticator;->mCaptchaed:Z

    if-eqz v9, :cond_8

    .line 222
    invoke-direct {p0}, Lcom/motorola/blur/authenticators/BlurSNPAuthenticator;->showCaptchaActivity()V

    goto/16 :goto_0

    .line 224
    :cond_8
    check-cast v5, Lcom/motorola/blur/service/blur/devicesetup/RemoveProviderCredentialsWS$Response;

    .end local v5           #p:Landroid/os/Parcelable;
    invoke-direct {p0, v5}, Lcom/motorola/blur/authenticators/BlurSNPAuthenticator;->reAddRemovedUser(Lcom/motorola/blur/service/blur/devicesetup/RemoveProviderCredentialsWS$Response;)V

    goto/16 :goto_0

    .line 233
    .end local v4           #intent:Landroid/content/Intent;
    :sswitch_2
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v9, :cond_9

    .line 234
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p1
    check-cast p1, [B

    check-cast p1, [B

    invoke-direct {p0, p1}, Lcom/motorola/blur/authenticators/BlurSNPAuthenticator;->processRecievedCaptcha([B)V

    goto/16 :goto_0

    .line 236
    .restart local p1
    :cond_9
    const-string v9, "BSNPA"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string v12, " it was not possible to GET the captcha url image"

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Lcom/motorola/blur/util/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 237
    iget-object v9, p0, Lcom/motorola/blur/authenticators/BlurSNPAuthenticator;->mContext:Landroid/content/Context;

    sget-object v10, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->InvalidCredsError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    invoke-static {v9, v10}, Lcom/motorola/blur/setup/ServiceErrorTranslator;->translate(Landroid/content/Context;Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;)I

    move-result v3

    .line 238
    .local v3, errorStringId:I
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/motorola/blur/authenticators/BlurSNPAuthenticator;->mWaitingForCaptcha:Z

    .line 239
    invoke-virtual {p0, v3}, Lcom/motorola/blur/authenticators/BlurSNPAuthenticator;->appendError(I)V

    .line 240
    iget-boolean v9, p0, Lcom/motorola/blur/authenticators/BlurSNPAuthenticator;->mWaitingForAccountRemoval:Z

    if-nez v9, :cond_0

    .line 241
    const/4 v9, 0x2

    invoke-virtual {p0, v9}, Lcom/motorola/blur/authenticators/BlurSNPAuthenticator;->sendForegroundMessage(I)Z

    goto/16 :goto_0

    .line 159
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_0
        0x7 -> :sswitch_2
    .end sparse-switch
.end method

.method protected registerReceivers()V
    .locals 4

    .prologue
    .line 351
    iget-object v2, p0, Lcom/motorola/blur/authenticators/BlurSNPAuthenticator;->mReceiver:Lcom/motorola/blur/authenticators/BlurSNPAuthenticator$SNPReceiver;

    if-nez v2, :cond_0

    .line 352
    new-instance v1, Lcom/motorola/blur/authenticators/BlurSNPAuthenticator$SNPReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/motorola/blur/authenticators/BlurSNPAuthenticator$SNPReceiver;-><init>(Lcom/motorola/blur/authenticators/BlurSNPAuthenticator;Lcom/motorola/blur/authenticators/BlurSNPAuthenticator$1;)V

    .line 353
    .local v1, receiver:Lcom/motorola/blur/authenticators/BlurSNPAuthenticator$SNPReceiver;
    iput-object v1, p0, Lcom/motorola/blur/authenticators/BlurSNPAuthenticator;->mReceiver:Lcom/motorola/blur/authenticators/BlurSNPAuthenticator$SNPReceiver;

    .line 355
    .end local v1           #receiver:Lcom/motorola/blur/authenticators/BlurSNPAuthenticator$SNPReceiver;
    :cond_0
    iget-object v2, p0, Lcom/motorola/blur/authenticators/BlurSNPAuthenticator;->mRegistered:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    .line 356
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 357
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "com.motorola.blur.service.blur.Actions.SERVICES_STARTED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 358
    const-string v2, "com.motorola.blur.service.blur.devicesetup.providercredentials.resp"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 359
    const-string v2, "com.motorola.blur.service.blur.devicesetup.removeprovidercredentials.resp"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 360
    iget-object v2, p0, Lcom/motorola/blur/authenticators/BlurSNPAuthenticator;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/motorola/blur/authenticators/BlurSNPAuthenticator;->mReceiver:Lcom/motorola/blur/authenticators/BlurSNPAuthenticator$SNPReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 361
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/blur/authenticators/BlurSNPAuthenticator;->mRegistered:Ljava/lang/Boolean;

    .line 363
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_1
    return-void
.end method

.method protected removeOrphanedAccount()V
    .locals 5

    .prologue
    .line 271
    const-string v1, "BSNPA"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "User already exists - deleting from service"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/motorola/blur/util/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 272
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/motorola/blur/authenticators/BlurSNPAuthenticator;->mId:J

    .line 273
    iget-object v1, p0, Lcom/motorola/blur/authenticators/BlurSNPAuthenticator;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/motorola/blur/service/blur/devicesetup/client/DeviceSetupWSClientFactory;->getClient(Landroid/content/Context;)Lcom/motorola/blur/service/blur/devicesetup/client/IDeviceSetupWSClient;

    move-result-object v0

    .line 274
    .local v0, wsClient:Lcom/motorola/blur/service/blur/devicesetup/client/IDeviceSetupWSClient;
    new-instance v1, Lcom/motorola/blur/service/blur/devicesetup/ProviderCredentials;

    iget-object v2, p0, Lcom/motorola/blur/authenticators/BlurSNPAuthenticator;->mProviderName:Ljava/lang/String;

    iget-object v3, p0, Lcom/motorola/blur/authenticators/BlurSNPAuthenticator;->mUserInfo:Lcom/motorola/blur/authenticators/UserInfo;

    iget-object v3, v3, Lcom/motorola/blur/authenticators/UserInfo;->username:Ljava/lang/String;

    iget-object v4, p0, Lcom/motorola/blur/authenticators/BlurSNPAuthenticator;->mUserInfo:Lcom/motorola/blur/authenticators/UserInfo;

    iget-object v4, v4, Lcom/motorola/blur/authenticators/UserInfo;->password:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Lcom/motorola/blur/service/blur/devicesetup/ProviderCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/motorola/blur/authenticators/BlurSNPAuthenticator;->mId:J

    sget-object v4, Lcom/motorola/blur/authenticators/BlurSNPAuthenticator;->DELETE_AND_READD_CREDENTIALS:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/motorola/blur/service/blur/devicesetup/client/IDeviceSetupWSClient;->removeProviderCredentials(Lcom/motorola/blur/service/blur/devicesetup/ProviderCredentials;JLjava/lang/String;)Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    .line 276
    return-void
.end method

.method public setProviderId(J)V
    .locals 1
    .parameter "providerId"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/motorola/blur/authenticators/BlurSNPAuthenticator;->mUserInfo:Lcom/motorola/blur/authenticators/UserInfo;

    iput-wide p1, v0, Lcom/motorola/blur/authenticators/UserInfo;->providerId:J

    .line 117
    return-void
.end method

.method protected unregisterReceivers()V
    .locals 2

    .prologue
    .line 297
    iget-object v0, p0, Lcom/motorola/blur/authenticators/BlurSNPAuthenticator;->mReceiver:Lcom/motorola/blur/authenticators/BlurSNPAuthenticator$SNPReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/authenticators/BlurSNPAuthenticator;->mRegistered:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 298
    iget-object v0, p0, Lcom/motorola/blur/authenticators/BlurSNPAuthenticator;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/motorola/blur/authenticators/BlurSNPAuthenticator;->mReceiver:Lcom/motorola/blur/authenticators/BlurSNPAuthenticator$SNPReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 299
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/authenticators/BlurSNPAuthenticator;->mRegistered:Ljava/lang/Boolean;

    .line 301
    :cond_0
    return-void
.end method

.method public updateSNAuthenticator(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "username"
    .parameter "password"
    .parameter "captchaUserText"

    .prologue
    const/4 v1, 0x0

    .line 101
    iput-object p3, p0, Lcom/motorola/blur/authenticators/BlurSNPAuthenticator;->mCaptchaUserText:Ljava/lang/String;

    .line 104
    iget-object v0, p0, Lcom/motorola/blur/authenticators/BlurSNPAuthenticator;->mUserInfo:Lcom/motorola/blur/authenticators/UserInfo;

    iget-object v0, v0, Lcom/motorola/blur/authenticators/UserInfo;->username:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 106
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/blur/authenticators/BlurSNPAuthenticator;->mCaptchaed:Z

    .line 107
    iput-object v1, p0, Lcom/motorola/blur/authenticators/BlurSNPAuthenticator;->mCaptchaImageDecoded:[B

    .line 108
    iput-object v1, p0, Lcom/motorola/blur/authenticators/BlurSNPAuthenticator;->mCaptchaToken:Ljava/lang/String;

    .line 109
    iput-object v1, p0, Lcom/motorola/blur/authenticators/BlurSNPAuthenticator;->mCaptchaUserText:Ljava/lang/String;

    .line 112
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/motorola/blur/authenticators/BlurAuthenticator;->updateAuthenticator(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    return-void
.end method

.method protected validate()Z
    .locals 2

    .prologue
    .line 123
    invoke-super {p0}, Lcom/motorola/blur/authenticators/BlurAuthenticator;->validate()Z

    move-result v0

    .line 124
    .local v0, validated:Z
    iget-object v1, p0, Lcom/motorola/blur/authenticators/BlurSNPAuthenticator;->mUserInfo:Lcom/motorola/blur/authenticators/UserInfo;

    iget-object v1, v1, Lcom/motorola/blur/authenticators/UserInfo;->username:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 125
    const v1, 0x7f0c0085

    invoke-virtual {p0, v1}, Lcom/motorola/blur/authenticators/BlurSNPAuthenticator;->appendError(I)V

    .line 126
    const/4 v0, 0x0

    .line 128
    :cond_0
    iget-object v1, p0, Lcom/motorola/blur/authenticators/BlurSNPAuthenticator;->mUserInfo:Lcom/motorola/blur/authenticators/UserInfo;

    iget-object v1, v1, Lcom/motorola/blur/authenticators/UserInfo;->password:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 129
    const v1, 0x7f0c00f5

    invoke-virtual {p0, v1}, Lcom/motorola/blur/authenticators/BlurSNPAuthenticator;->appendError(I)V

    .line 130
    const/4 v0, 0x0

    .line 132
    :cond_1
    return v0
.end method
